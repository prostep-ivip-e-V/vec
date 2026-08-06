#!/usr/bin/env python3
"""
Build JSONL indices for the VEC ECAD wiki Claude Code skill.

Produces five files in .claude/index/:
  classes.jsonl    — VEC UML classes and enumerations (from XMI)
  pages.jsonl      — every markdown page under content/specifications/vec/
  concepts.jsonl   — inverted index: class -> pages that mention it
  relations.jsonl  — class <-> page edges typed by source
  guidelines.jsonl — extracted normative statements (RFC 2119 keywords)

Usage (from the wiki root):
  python .claude/tools/build_index.py
  python .claude/tools/build_index.py --wiki-root /path/to/wiki
"""

import argparse
import json
import re
import sys
from collections import defaultdict
from html.parser import HTMLParser
from pathlib import Path

import frontmatter
import yaml
from lxml import etree


# ── namespace maps ──────────────────────────────────────────────────────────

XMI_NS = "http://www.omg.org/spec/XMI/20131001"
UML_NS = "http://www.omg.org/spec/UML/20131001"
NSMAP = {"xmi": XMI_NS, "uml": UML_NS}


# ── XMI helpers ─────────────────────────────────────────────────────────────

class _StripHTML(HTMLParser):
    def __init__(self):
        super().__init__()
        self._parts = []

    def handle_data(self, data):
        self._parts.append(data)

    def get_text(self):
        return " ".join(self._parts).strip()


def strip_html(html: str) -> str:
    p = _StripHTML()
    p.feed(html)
    return re.sub(r"\s+", " ", p.get_text()).strip()


def _xmi(tag: str) -> str:
    return f"{{{XMI_NS}}}{tag}"


def _uml(tag: str) -> str:
    return f"{{{UML_NS}}}{tag}"


# ── Phase 1: extract vocabulary from XMI ───────────────────────────────────

def extract_classes(xmi_path: Path) -> list[dict]:
    """Parse vec-2.2.0.mdxml and return one record per class/enumeration."""
    tree = etree.parse(str(xmi_path))
    root = tree.getroot()

    # Build a global id -> name lookup so we can resolve references
    id_to_name: dict[str, str] = {}
    for elem in root.iter():
        xid = elem.get(_xmi("id"))
        name = elem.get("name")
        if xid and name:
            id_to_name[xid] = name

    records: list[dict] = []

    def _walk(elem, package_path: list[str]) -> None:
        xtype = elem.get(_xmi("type"), "")
        name = elem.get("name", "")

        if xtype == "uml:Package" and name:
            for child in elem:
                _walk(child, package_path + [name])
            return

        if xtype in ("uml:Class", "uml:Enumeration") and name:
            is_abstract = elem.get("isAbstract", "false") == "true"
            element_type = "Class" if xtype == "uml:Class" else "Enumeration"

            # Documentation from ownedComment.body
            doc = ""
            for child in elem:
                if child.tag == "ownedComment":
                    raw = child.get("body", "")
                    text = strip_html(raw)
                    # Remove CSS/style preamble injected by MagicDraw
                    text = re.sub(r"^p\s*\{[^}]*\}\s*", "", text).strip()
                    doc = text
                    break

            # Base classifier(s) via generalization elements
            bases: list[str] = []
            for child in elem:
                if child.tag == "generalization":
                    gen_id = child.get("general", "")
                    if gen_id in id_to_name:
                        bases.append(id_to_name[gen_id])

            # Owned attributes
            attrs: list[dict] = []
            for child in elem:
                ct = child.get(_xmi("type"), "")
                if child.tag == "ownedAttribute" and ct == "uml:Property":
                    aname = child.get("name", "")
                    if not aname:
                        continue
                    atype_id = child.get("type", "")
                    atype = id_to_name.get(atype_id, atype_id) if atype_id else "String"
                    # Multiplicity
                    lower = "0"
                    upper = "1"
                    for lv in child:
                        if lv.tag == "lowerValue":
                            lower = lv.get("value", "0")
                        elif lv.tag == "upperValue":
                            upper = lv.get("value", "1")
                    mult = f"{lower}..{upper}" if lower != upper else lower
                    if mult == "1..1":
                        mult = "1"
                    # Attribute doc
                    adoc = ""
                    for lv in child:
                        if lv.tag == "ownedComment":
                            adoc = strip_html(lv.get("body", ""))
                            break
                    attrs.append({"name": aname, "type": atype, "mult": mult, "doc": adoc[:200]})

            # Determine owner package (last element of path after 'VEC' or package root)
            owner = package_path[-1] if package_path else ""
            # Normalise: strip leading 'VEC.' prefix
            if owner.upper() == "VEC" and len(package_path) > 1:
                owner = package_path[-1]

            slug = name.lower()
            page_url = f"/specifications/vec/v220/classes/{slug}/"
            page_path = f"content/specifications/vec/v220/classes/{slug}.md"

            records.append({
                "name": name,
                "element_type": element_type,
                "owner": owner,
                "is_abstract": is_abstract,
                "base_classifiers": bases,
                "documentation": doc[:500],
                "attributes": attrs,
                "page_url": page_url,
                "page_path": page_path,
            })
        else:
            for child in elem:
                _walk(child, package_path)

    model = root.find(f"{{{UML_NS}}}Model")
    if model is None:
        raise RuntimeError("No uml:Model element found in XMI")
    for child in model:
        _walk(child, [])

    return records


# ── Phase 2: index markdown pages ──────────────────────────────────────────

VEC_CLASS_RE = re.compile(
    r"\{\{[<{%]\s*(?:vec-class|kbl-class)\s+\"?([A-Za-z][A-Za-z0-9_]*)\"?\s*[>}%]\}\}",
    re.IGNORECASE,
)
RFC2119_EN = re.compile(
    r"\b(MUST NOT|MUST|SHALL NOT|SHALL|SHOULD NOT|SHOULD|MAY NOT|MAY|REQUIRED|RECOMMENDED|OPTIONAL|"
    r"must not|must|shall not|shall|should not|should|may not|required|recommended)\b"
)
RFC2119_DE = re.compile(
    r"\b(DARF NICHT|MUSS NICHT|MUSS|SOLL NICHT|SOLL|KANN|WIRD|EMPFOHLEN|"
    r"darf nicht|muss nicht|muss|soll nicht|soll|kann)\b"
)
GH_ISSUE_RE = re.compile(r"(?:github\.com/[^/]+/[^/]+/issues/|#)(\d+)")
RELREF_RE = re.compile(r'\{\{<\s*relref\s+"?([^">\s]+)"?\s*>\}\}')
HEADING_RE = re.compile(r"^(#{1,6})\s+(.+)$", re.MULTILINE)


def _url_from_path(path: Path, content_root: Path) -> str:
    """Convert a content path to a Hugo URL."""
    rel = path.relative_to(content_root)
    parts = list(rel.parts)
    # Remove 'index.md' or '_index.md' leaf
    if parts and parts[-1] in ("index.md", "_index.md"):
        parts = parts[:-1]
    elif parts and parts[-1].endswith(".md"):
        parts[-1] = parts[-1][:-3]
    return "/" + "/".join(parts) + "/"


def _detect_kind(path: Path, spec_root: Path) -> str:
    rel = path.relative_to(spec_root)
    parts = rel.parts
    if len(parts) >= 2 and parts[0] == "v220" and parts[1] == "classes":
        return "class"
    if len(parts) >= 1 and parts[0] == "guidelines":
        return "guideline"
    if len(parts) >= 1 and parts[0] == "v220":
        return "model-prose"
    return "other"


def _detect_area(path: Path, spec_root: Path, kind: str) -> str:
    rel = path.relative_to(spec_root)
    parts = rel.parts
    if kind == "guideline" and len(parts) >= 2:
        return parts[1]
    if kind in ("model-prose", "class") and len(parts) >= 2:
        return parts[1]
    return ""


def _extract_headings(body: str) -> list[str]:
    seen: list[str] = []
    for m in HEADING_RE.finditer(body):
        seen.append(m.group(2).strip())
    return seen


def _extract_inline_classes(body: str) -> list[str]:
    return list(dict.fromkeys(m.group(1) for m in VEC_CLASS_RE.finditer(body)))


def _extract_github_issues(fm: dict, body: str) -> list[int]:
    issues: list[int] = []
    # From frontmatter history field
    for entry in fm.get("history", []):
        for key in ("issue", "ghIssue"):
            val = entry.get(key)
            if val:
                raw = str(val).lstrip("#KBLFRM-").lstrip("KBLFRM-")
                try:
                    issues.append(int(raw))
                except ValueError:
                    pass
    # From body
    for m in GH_ISSUE_RE.finditer(body):
        issues.append(int(m.group(1)))
    return sorted(set(issues))


def _last_modified(fm: dict, path: Path) -> str:
    for key in ("lastmod", "date"):
        val = fm.get(key)
        if val:
            return str(val)[:10]
    return ""


def index_pages(spec_dir: Path, content_root: Path) -> list[dict]:
    """Walk content/specifications/vec/v220 and guidelines, one record per .md file."""
    records: list[dict] = []

    # Only index the current version (v220) and the guidelines; skip old versions
    search_dirs = [spec_dir / "v220", spec_dir / "guidelines"]

    all_files: list[Path] = []
    for d in search_dirs:
        if d.is_dir():
            all_files.extend(sorted(d.rglob("*.md")))

    for md_file in all_files:
        # Skip hidden dirs
        if any(p.startswith(".") for p in md_file.parts):
            continue
        # Skip binary-only pages with no real prose
        try:
            raw = md_file.read_text(encoding="utf-8", errors="replace")
        except Exception:
            continue

        try:
            post = frontmatter.loads(raw)
        except Exception:
            post = frontmatter.Post(raw, **{})

        fm: dict = dict(post.metadata)
        body: str = post.content

        kind = _detect_kind(md_file, spec_dir)
        area = _detect_area(md_file, spec_dir, kind)
        url = _url_from_path(md_file, content_root)
        path_str = str(md_file.relative_to(content_root))

        title = str(fm.get("title", md_file.stem))
        description = str(fm.get("description", fm.get("summary", "")))[:400]

        # Determine review status
        status = "stable"
        if fm.get("review") or fm.get("draft"):
            status = "under-review"

        linked_classes_fm = [str(c) for c in (fm.get("classes") or [])]
        linked_classes_inline = _extract_inline_classes(body)
        github_issues = _extract_github_issues(fm, body)
        headings = _extract_headings(body)

        # Linked pages from relref shortcodes
        linked_pages: list[str] = []
        for m in RELREF_RE.finditer(body):
            raw_ref = m.group(1).strip('"')
            # relref paths can be relative or absolute; keep as-is for now
            if not raw_ref.startswith("#"):
                linked_pages.append(raw_ref)
        linked_pages = list(dict.fromkeys(linked_pages))

        records.append({
            "path": path_str,
            "url": url,
            "kind": kind,
            "area": area,
            "title": title,
            "description": description,
            "status": status,
            "language": "en",
            "headings": headings,
            "linked_classes_frontmatter": linked_classes_fm,
            "linked_classes_inline": linked_classes_inline,
            "linked_pages": linked_pages,
            "github_issues": github_issues,
            "last_modified": _last_modified(fm, md_file),
        })

    return records


# ── Phase 3: derived indices ────────────────────────────────────────────────

def build_concepts(classes: list[dict], pages: list[dict]) -> list[dict]:
    """Invert the class -> pages relationship."""
    # All known class names (lowercase for matching)
    class_names = {c["name"] for c in classes}

    mentions: dict[str, list[dict]] = defaultdict(list)

    for page in pages:
        url = page["url"]
        fm_classes = set(page["linked_classes_frontmatter"])
        inline_classes = set(page["linked_classes_inline"])

        # Case-insensitive matching back to canonical name
        canonical: dict[str, str] = {n.lower(): n for n in class_names}

        seen: dict[str, str] = {}
        for cls in fm_classes:
            canon = canonical.get(cls.lower(), cls)
            if canon in class_names:
                via = seen.get(canon, "frontmatter")
                if via == "inline":
                    via = "frontmatter+inline"
                seen[canon] = via

        for cls in inline_classes:
            canon = canonical.get(cls.lower(), cls)
            if canon in class_names:
                prev = seen.get(canon)
                if prev == "frontmatter":
                    seen[canon] = "frontmatter+inline"
                elif prev != "frontmatter+inline":
                    seen[canon] = "inline"

        for cls, via in seen.items():
            mentions[cls].append({"url": url, "via": via})

    # Build records for every known class
    class_url_map = {c["name"]: c["page_url"] for c in classes}
    records: list[dict] = []
    for c in classes:
        name = c["name"]
        records.append({
            "concept": name,
            "defined_in": class_url_map.get(name, ""),
            "mentioned_in": mentions.get(name, []),
        })
    return records


def build_relations(classes: list[dict], pages: list[dict]) -> list[dict]:
    """Build typed edges between class names and page URLs."""
    class_names = {c["name"] for c in classes}
    canonical: dict[str, str] = {n.lower(): n for n in class_names}
    records: list[dict] = []

    for page in pages:
        url = page["url"]
        kind = page["kind"]

        # Frontmatter links
        for cls in page["linked_classes_frontmatter"]:
            canon = canonical.get(cls.lower(), cls)
            if canon in class_names:
                records.append({
                    "from": canon, "from_kind": "class",
                    "to": url, "to_kind": kind,
                    "source": "frontmatter",
                })
                records.append({
                    "from": url, "from_kind": kind,
                    "to": canon, "to_kind": "class",
                    "source": "frontmatter",
                })

        # Inline shortcode links (only add if not already a frontmatter link)
        fm_set = {canonical.get(c.lower(), c) for c in page["linked_classes_frontmatter"]}
        for cls in page["linked_classes_inline"]:
            canon = canonical.get(cls.lower(), cls)
            if canon in class_names and canon not in fm_set:
                records.append({
                    "from": canon, "from_kind": "class",
                    "to": url, "to_kind": kind,
                    "source": "inline-shortcode",
                })
                records.append({
                    "from": url, "from_kind": kind,
                    "to": canon, "to_kind": "class",
                    "source": "inline-shortcode",
                })

    return records


# ── Phase 4: guideline / rule extraction ───────────────────────────────────

MODALITY_RANK = {
    "must not": 7, "shall not": 7, "darf nicht": 7, "muss nicht": 7,
    "must": 6, "shall": 6, "required": 6, "muss": 6,
    "should not": 5, "soll nicht": 5,
    "should": 4, "recommended": 4, "soll": 4,
    "may not": 3,
    "may": 2, "optional": 2, "kann": 2,
    "wird": 1,
}


def _detect_language(text: str) -> str:
    german_words = re.compile(r"\b(und|oder|der|die|das|ein|eine|ist|werden|muss|soll|kann)\b", re.IGNORECASE)
    if german_words.search(text):
        return "de"
    return "en"


def _strongest_modality(text: str) -> str:
    best = ("", 0)
    for m in RFC2119_EN.finditer(text):
        kw = m.group(1).lower()
        rank = MODALITY_RANK.get(kw, 0)
        if rank > best[1]:
            best = (m.group(1).upper(), rank)
    for m in RFC2119_DE.finditer(text):
        kw = m.group(1).lower()
        rank = MODALITY_RANK.get(kw, 0)
        if rank > best[1]:
            best = (m.group(1).upper(), rank)
    return best[0]


def _sentences(text: str) -> list[str]:
    # Simple sentence splitter: split on '. ', '! ', '? '
    sents = re.split(r"(?<=[.!?])\s+", text)
    return [s.strip() for s in sents if s.strip()]


def extract_guidelines(pages: list[dict], content_root: Path) -> list[dict]:
    """Extract normative statements from guideline pages."""
    records: list[dict] = []

    for page in pages:
        if page["kind"] != "guideline":
            continue

        md_path = content_root / page["path"]
        try:
            raw = md_path.read_text(encoding="utf-8", errors="replace")
        except Exception:
            continue

        try:
            post = frontmatter.loads(raw)
        except Exception:
            continue

        body = post.content
        scope_classes_page = page["linked_classes_frontmatter"]

        # Split into sections at ## / ###
        section_chunks: list[tuple[str, str, str]] = []
        current_heading = ""
        current_anchor = ""
        current_lines: list[str] = []

        for line in body.split("\n"):
            m = re.match(r"^(#{2,3})\s+(.+)$", line)
            if m:
                if current_lines:
                    section_chunks.append((current_heading, current_anchor, "\n".join(current_lines)))
                current_heading = m.group(2).strip()
                current_anchor = "#" + re.sub(r"[^a-z0-9]+", "-", current_heading.lower()).strip("-")
                current_lines = [line]
            else:
                current_lines.append(line)
        if current_lines:
            section_chunks.append((current_heading, current_anchor, "\n".join(current_lines)))

        for heading, anchor, section_text in section_chunks:
            # Strip code blocks from section text before extracting sentences
            clean_text = re.sub(r"```.*?```", "", section_text, flags=re.DOTALL)
            # Skip table rows (lines starting with | )
            clean_lines = [
                ln for ln in clean_text.split("\n")
                if not ln.strip().startswith("|")
            ]
            clean_text = "\n".join(clean_lines)

            # Find classes mentioned in this section
            inline = list(dict.fromkeys(m.group(1) for m in VEC_CLASS_RE.finditer(section_text)))
            scope_classes = inline if inline else scope_classes_page

            for sentence in _sentences(clean_text):
                # Skip very short sentences or pure code/markup
                if len(sentence) < 20 or sentence.strip().startswith(("`", "{", "<", "#")):
                    continue
                modality = _strongest_modality(sentence)
                if not modality:
                    continue
                # Find ~200 chars of surrounding context
                idx = section_text.find(sentence)
                start = max(0, idx - 100)
                end = min(len(section_text), idx + len(sentence) + 100)
                context = section_text[start:end].replace("\n", " ")

                records.append({
                    "guideline_url": page["url"],
                    "section": heading,
                    "section_anchor": anchor,
                    "scope_classes": scope_classes,
                    "modality": modality,
                    "statement": sentence[:500],
                    "language": _detect_language(sentence),
                    "context": context[:400],
                    "extraction_confidence": "heuristic",
                })

    return records


# ── write helpers ────────────────────────────────────────────────────────────

def write_jsonl(records: list[dict], path: Path) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("w", encoding="utf-8") as f:
        for rec in records:
            f.write(json.dumps(rec, ensure_ascii=False) + "\n")
    print(f"  wrote {len(records):>5} records → {path}")


# ── main ────────────────────────────────────────────────────────────────────

def main() -> None:
    parser = argparse.ArgumentParser(description="Build VEC wiki JSONL indices")
    parser.add_argument(
        "--wiki-root",
        default=".",
        help="Path to the wiki root (default: current directory)",
    )
    parser.add_argument(
        "--xmi",
        default="content/specifications/vec/v220/vec-2.2.0.mdxml",
        help="Path to the VEC XMI file, relative to wiki root",
    )
    parser.add_argument(
        "--output-dir",
        default=".claude/index",
        help="Output directory for JSONL files (default: .claude/index)",
    )
    args = parser.parse_args()

    wiki_root = Path(args.wiki_root).resolve()
    xmi_path = wiki_root / args.xmi
    content_root = wiki_root / "content"
    spec_dir = content_root / "specifications" / "vec"
    output_dir = wiki_root / args.output_dir

    if not xmi_path.is_file():
        print(f"ERROR: XMI not found: {xmi_path}", file=sys.stderr)
        sys.exit(1)
    if not spec_dir.is_dir():
        print(f"ERROR: spec dir not found: {spec_dir}", file=sys.stderr)
        sys.exit(1)

    print("=== Phase 1: extracting vocabulary from XMI ===")
    classes = extract_classes(xmi_path)
    print(f"  found {len(classes)} elements (classes + enumerations)")
    write_jsonl(classes, output_dir / "classes.jsonl")

    print("\n=== Phase 2: indexing markdown pages ===")
    pages = index_pages(spec_dir, content_root)
    print(f"  found {len(pages)} pages")
    write_jsonl(pages, output_dir / "pages.jsonl")

    print("\n=== Phase 3: building derived indices ===")
    concepts = build_concepts(classes, pages)
    write_jsonl(concepts, output_dir / "concepts.jsonl")

    relations = build_relations(classes, pages)
    write_jsonl(relations, output_dir / "relations.jsonl")

    print("\n=== Phase 4: extracting normative statements ===")
    guidelines = extract_guidelines(pages, content_root)
    print(f"  found {len(guidelines)} candidate normative statements")
    write_jsonl(guidelines, output_dir / "guidelines.jsonl")

    print("\n=== Done ===")
    print(f"Index written to: {output_dir}")
    print("\nSummary:")
    print(f"  classes.jsonl    {len(classes)} records")
    print(f"  pages.jsonl      {len(pages)} records")
    print(f"  concepts.jsonl   {len(concepts)} records")
    print(f"  relations.jsonl  {len(relations)} records")
    print(f"  guidelines.jsonl {len(guidelines)} records")


if __name__ == "__main__":
    main()
