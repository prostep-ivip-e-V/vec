"""
Markdown chunker that splits wiki files into heading-based chunks.

Each chunk preserves:
- The heading hierarchy (breadcrumb path like "Config > Auth > OAuth2")
- Enough parent context to be meaningful in isolation
- Metadata for tracing back to the source file and line
"""

import re
from dataclasses import dataclass, field
from pathlib import Path

import yaml


@dataclass
class Chunk:
    """A single chunk of wiki content with full provenance."""

    text: str
    source_file: str
    heading_path: str  # e.g. "Configuration > Authentication > OAuth2"
    heading_level: int
    start_line: int
    end_line: int
    word_count: int = 0

    def __post_init__(self):
        self.word_count = len(self.text.split())

    @property
    def chunk_id(self) -> str:
        """Stable ID for deduplication and updates."""
        safe_path = self.source_file.replace("/", "_").replace("\\", "_")
        safe_heading = re.sub(r"[^a-zA-Z0-9_>]", "_", self.heading_path)
        return f"{safe_path}::{safe_heading}::{self.start_line}"

    def to_dict(self) -> dict:
        return {
            "source_file": self.source_file,
            "heading_path": self.heading_path,
            "heading_level": self.heading_level,
            "start_line": self.start_line,
            "end_line": self.end_line,
            "word_count": self.word_count,
        }


FRONTMATTER_RE = re.compile(r"^---\s*\n(.*?\n)---\s*\n", re.DOTALL)


def strip_frontmatter(content: str) -> tuple[str, str | None]:
    """
    Remove YAML frontmatter from markdown content.

    Returns (stripped_content, title) where title is the value of the
    frontmatter 'title' field (or None if absent).
    """
    m = FRONTMATTER_RE.match(content)
    if not m:
        return content, None

    title: str | None = None
    try:
        meta = yaml.safe_load(m.group(1))
        if isinstance(meta, dict):
            title = meta.get("title")
            if title is not None:
                title = str(title)
    except yaml.YAMLError:
        pass

    return content[m.end() :], title


# Regex for markdown headings
HEADING_RE = re.compile(r"^(#{1,6})\s+(.+)$")

# Minimum chunk size in words — tiny chunks create noise
MIN_CHUNK_WORDS = 30

# Maximum chunk size in words — oversized chunks hurt retrieval precision
MAX_CHUNK_WORDS = 800


def parse_headings(lines: list[str]) -> list[tuple[int, int, str]]:
    """
    Find all headings in a list of lines.
    Returns: [(line_index, level, heading_text), ...]
    """
    headings = []
    in_code_block = False

    for i, line in enumerate(lines):
        stripped = line.strip()

        # Track fenced code blocks — don't parse headings inside them
        if stripped.startswith("```"):
            in_code_block = not in_code_block
            continue

        if in_code_block:
            continue

        m = HEADING_RE.match(stripped)
        if m:
            level = len(m.group(1))
            text = m.group(2).strip()
            headings.append((i, level, text))

    return headings


def build_heading_path(
    headings_stack: list[tuple[int, str]], level: int, text: str
) -> list[tuple[int, str]]:
    """
    Maintain a stack of (level, text) to build breadcrumb paths.
    When a new heading arrives, pop everything at >= its level.
    """
    # Pop headings at same or deeper level
    while headings_stack and headings_stack[-1][0] >= level:
        headings_stack.pop()
    headings_stack.append((level, text))
    return headings_stack


def chunk_markdown(content: str, source_file: str) -> list[Chunk]:
    """
    Split a markdown file into chunks at heading boundaries.

    Strategy:
    - Split at H2 and H3 boundaries (H1 is typically the page title)
    - Each chunk includes the heading hierarchy as context
    - Chunks that are too small get merged with the next chunk
    - Chunks that are too large get split at paragraph boundaries
    """
    content, fm_title = strip_frontmatter(content)

    # If the frontmatter had a title and the document has no H1, inject one so
    # it becomes the root of every chunk's heading path.
    if fm_title:
        headings_check = parse_headings(content.split("\n"))
        has_h1 = any(level == 1 for _, level, _ in headings_check)
        if not has_h1:
            content = f"# {fm_title}\n\n{content}"

    lines = content.split("\n")
    headings = parse_headings(lines)

    if not headings:
        # No headings — treat entire file as one chunk
        text = content.strip()
        if not text:
            return []
        return [
            Chunk(
                text=text,
                source_file=source_file,
                heading_path=Path(source_file).stem,
                heading_level=0,
                start_line=1,
                end_line=len(lines),
            )
        ]

    chunks: list[Chunk] = []
    heading_stack: list[tuple[int, str]] = []

    # Collect content before the first heading (preamble)
    if headings[0][0] > 0:
        preamble = "\n".join(lines[: headings[0][0]]).strip()
        if preamble and len(preamble.split()) >= MIN_CHUNK_WORDS:
            chunks.append(
                Chunk(
                    text=preamble,
                    source_file=source_file,
                    heading_path=f"{Path(source_file).stem} > (preamble)",
                    heading_level=0,
                    start_line=1,
                    end_line=headings[0][0],
                )
            )

    # Process each heading section
    for idx, (line_idx, level, text) in enumerate(headings):
        # Determine the end of this section
        if idx + 1 < len(headings):
            end_idx = headings[idx + 1][0]
        else:
            end_idx = len(lines)

        # Build the heading breadcrumb
        heading_stack = build_heading_path(heading_stack, level, text)
        heading_path = " > ".join(h[1] for h in heading_stack)

        # Extract section content (include the heading line itself for context)
        section_text = "\n".join(lines[line_idx:end_idx]).strip()

        if not section_text:
            continue

        chunks.append(
            Chunk(
                text=section_text,
                source_file=source_file,
                heading_path=heading_path,
                heading_level=level,
                start_line=line_idx + 1,
                end_line=end_idx,
            )
        )

    # Post-process: merge tiny chunks, split huge ones
    chunks = _merge_small_chunks(chunks)
    chunks = _split_large_chunks(chunks)

    return chunks


def _merge_small_chunks(chunks: list[Chunk]) -> list[Chunk]:
    """Merge chunks that are below the minimum word count with the next chunk."""
    if not chunks:
        return chunks

    merged: list[Chunk] = []
    buffer: Chunk | None = None

    for chunk in chunks:
        if buffer is None:
            if chunk.word_count < MIN_CHUNK_WORDS:
                buffer = chunk
            else:
                merged.append(chunk)
        else:
            # Merge buffer into current chunk — combine heading paths
            combined_text = buffer.text + "\n\n" + chunk.text
            if buffer.heading_path != chunk.heading_path:
                combined_path = f"{buffer.heading_path} | {chunk.heading_path}"
            else:
                combined_path = buffer.heading_path
            combined = Chunk(
                text=combined_text,
                source_file=chunk.source_file,
                heading_path=combined_path,
                heading_level=min(buffer.heading_level, chunk.heading_level),
                start_line=buffer.start_line,
                end_line=chunk.end_line,
            )
            if combined.word_count < MIN_CHUNK_WORDS:
                buffer = combined
            else:
                merged.append(combined)
                buffer = None

    if buffer:
        merged.append(buffer)

    return merged


def _split_large_chunks(chunks: list[Chunk]) -> list[Chunk]:
    """Split chunks that exceed the maximum word count at paragraph boundaries."""
    result: list[Chunk] = []

    for chunk in chunks:
        if chunk.word_count <= MAX_CHUNK_WORDS:
            result.append(chunk)
            continue

        # Split at double-newline (paragraph boundary)
        paragraphs = re.split(r"\n\n+", chunk.text)
        current_parts: list[str] = []
        current_words = 0
        part_idx = 0

        for para in paragraphs:
            para_words = len(para.split())

            if current_words + para_words > MAX_CHUNK_WORDS and current_parts:
                result.append(
                    Chunk(
                        text="\n\n".join(current_parts),
                        source_file=chunk.source_file,
                        heading_path=f"{chunk.heading_path} (part {part_idx + 1})",
                        heading_level=chunk.heading_level,
                        start_line=chunk.start_line,
                        end_line=chunk.end_line,
                    )
                )
                current_parts = []
                current_words = 0
                part_idx += 1

            current_parts.append(para)
            current_words += para_words

        if current_parts:
            suffix = f" (part {part_idx + 1})" if part_idx > 0 else ""
            result.append(
                Chunk(
                    text="\n\n".join(current_parts),
                    source_file=chunk.source_file,
                    heading_path=f"{chunk.heading_path}{suffix}",
                    heading_level=chunk.heading_level,
                    start_line=chunk.start_line,
                    end_line=chunk.end_line,
                )
            )

    return result


def chunk_directory(
    wiki_dir: str | Path,
    glob_pattern: str = "**/*.md",
    relative_to: str | Path | None = None,
) -> list[Chunk]:
    """
    Chunk all markdown files in a directory tree.
    Returns all chunks sorted by source file.

    Args:
        wiki_dir: Directory to scan for markdown files.
        glob_pattern: Glob pattern for finding files.
        relative_to: Base directory for computing source_file paths.
            Defaults to wiki_dir itself. Useful when indexing multiple
            directories so all paths share a common root.
    """
    wiki_path = Path(wiki_dir).resolve()
    base_path = Path(relative_to).resolve() if relative_to else wiki_path
    if not wiki_path.is_dir():
        raise ValueError(f"Not a directory: {wiki_dir}")

    all_chunks: list[Chunk] = []
    md_files = sorted(wiki_path.glob(glob_pattern))

    for md_file in md_files:
        # Skip hidden files/dirs (check only path components, not leading ..)
        rel_parts = md_file.relative_to(wiki_path).parts
        if any(part.startswith(".") for part in rel_parts):
            continue

        relative_path = str(md_file.relative_to(base_path))
        content = md_file.read_text(encoding="utf-8", errors="replace")
        chunks = chunk_markdown(content, relative_path)
        all_chunks.extend(chunks)

    return all_chunks
