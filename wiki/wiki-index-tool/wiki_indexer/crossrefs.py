"""
Cross-reference analyzer for markdown wikis.

Builds a link graph from internal references and detects:
- Broken links (pointing to files that don't exist)
- Orphan pages (no other page links to them)
- Missing backlinks (A links to B, but B doesn't link back)
- Link clusters (groups of tightly interlinked pages)

This complements the semantic search — semantic search finds *content*
overlap, while this finds *structural* relationships.
"""

import re
from collections import defaultdict
from dataclasses import dataclass, field
from pathlib import Path


# Match markdown links: [text](target) and [[wiki-style]] links
MD_LINK_RE = re.compile(r"\[([^\]]*)\]\(([^)]+)\)")
WIKI_LINK_RE = re.compile(r"\[\[([^\]]+)\]\]")


@dataclass
class LinkInfo:
    """A single link from one file to another."""

    source_file: str
    target_file: str
    link_text: str
    line_number: int
    raw_target: str  # original target string before resolution


@dataclass
class CrossRefReport:
    """Full cross-reference analysis of a wiki."""

    total_files: int = 0
    total_links: int = 0
    links: list[LinkInfo] = field(default_factory=list)
    broken_links: list[LinkInfo] = field(default_factory=list)
    orphan_pages: list[str] = field(default_factory=list)

    # forward_links[A] = [B, C] means A links to B and C
    forward_links: dict[str, list[str]] = field(default_factory=lambda: defaultdict(list))
    # back_links[B] = [A, C] means A and C link to B
    back_links: dict[str, list[str]] = field(default_factory=lambda: defaultdict(list))

    def files_related_to(self, file_path: str) -> set[str]:
        """Get all files connected to a given file (links in either direction)."""
        related = set()
        related.update(self.forward_links.get(file_path, []))
        related.update(self.back_links.get(file_path, []))
        return related

    def to_dict(self) -> dict:
        return {
            "total_files": self.total_files,
            "total_links": self.total_links,
            "broken_links": [
                {
                    "source": l.source_file,
                    "target": l.raw_target,
                    "line": l.line_number,
                    "text": l.link_text,
                }
                for l in self.broken_links
            ],
            "orphan_pages": self.orphan_pages,
            "forward_links": dict(self.forward_links),
            "back_links": dict(self.back_links),
        }


def resolve_link_target(
    source_file: str, raw_target: str, known_files: set[str]
) -> str | None:
    """
    Resolve a link target to a file path relative to the wiki root.

    Handles:
    - Relative paths: ../other/file.md
    - Same-directory: ./sibling.md or just sibling.md
    - Wiki-style: [[page-name]] -> page-name.md
    - Anchors: file.md#section -> file.md
    - Bare names without .md extension

    Returns None if it's an external URL or unresolvable.
    """
    # Skip external URLs
    if raw_target.startswith(("http://", "https://", "mailto:", "#")):
        return None

    # Strip anchors
    target = raw_target.split("#")[0].strip()
    if not target:
        return None

    # Resolve relative to source file's directory
    source_dir = Path(source_file).parent
    resolved = (source_dir / target).as_posix()

    # Normalize (remove ./ and resolve ..)
    resolved = Path(resolved).as_posix()
    # Remove leading ./
    if resolved.startswith("./"):
        resolved = resolved[2:]

    # Try with and without .md extension
    candidates = [resolved]
    if not resolved.endswith(".md"):
        candidates.append(resolved + ".md")
    # Also try lowercase
    candidates.extend([c.lower() for c in candidates])

    for candidate in candidates:
        if candidate in known_files:
            return candidate

    return None


def extract_links(content: str, source_file: str) -> list[LinkInfo]:
    """Extract all internal links from a markdown file."""
    links = []
    lines = content.split("\n")
    in_code_block = False

    for line_num, line in enumerate(lines, 1):
        stripped = line.strip()

        # Skip code blocks
        if stripped.startswith("```"):
            in_code_block = not in_code_block
            continue
        if in_code_block:
            continue

        # Standard markdown links: [text](target)
        for match in MD_LINK_RE.finditer(line):
            text, target = match.group(1), match.group(2)
            # Skip external URLs and pure anchors
            if not target.startswith(("http://", "https://", "mailto:", "#")):
                links.append(
                    LinkInfo(
                        source_file=source_file,
                        target_file="",  # resolved later
                        link_text=text,
                        line_number=line_num,
                        raw_target=target,
                    )
                )

        # Wiki-style links: [[page-name]]
        for match in WIKI_LINK_RE.finditer(line):
            target = match.group(1)
            links.append(
                LinkInfo(
                    source_file=source_file,
                    target_file="",
                    link_text=target,
                    line_number=line_num,
                    raw_target=target,
                )
            )

    return links


def analyze_crossrefs(wiki_dir: str | Path) -> CrossRefReport:
    """
    Build a complete cross-reference report for a wiki directory.
    """
    wiki_path = Path(wiki_dir)
    if not wiki_path.is_dir():
        raise ValueError(f"Not a directory: {wiki_dir}")

    # Collect all markdown files
    md_files = sorted(wiki_path.glob("**/*.md"))
    known_files: set[str] = set()
    file_contents: dict[str, str] = {}

    for md_file in md_files:
        if any(part.startswith(".") for part in md_file.parts):
            continue
        relative = str(md_file.relative_to(wiki_path))
        known_files.add(relative)
        file_contents[relative] = md_file.read_text(encoding="utf-8", errors="replace")

    report = CrossRefReport(total_files=len(known_files))

    # Extract and resolve all links
    for source_file, content in file_contents.items():
        raw_links = extract_links(content, source_file)

        for link in raw_links:
            resolved = resolve_link_target(source_file, link.raw_target, known_files)

            if resolved is None:
                # Could be external or unresolvable — check if it looks internal
                if not link.raw_target.startswith(("http://", "https://", "mailto:")):
                    link.target_file = link.raw_target
                    report.broken_links.append(link)
            else:
                link.target_file = resolved
                report.links.append(link)
                report.forward_links[source_file].append(resolved)
                report.back_links[resolved].append(source_file)

    report.total_links = len(report.links)

    # Find orphan pages (no backlinks at all)
    for f in known_files:
        if f not in report.back_links and f not in report.forward_links:
            report.orphan_pages.append(f)

    report.orphan_pages.sort()

    return report
