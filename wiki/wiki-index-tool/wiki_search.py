#!/usr/bin/env python3
"""
wiki-search: CLI for indexing and searching a markdown wiki.

Usage:
    # Build/rebuild the index
    python wiki_search.py index ./path/to/wiki

    # Search for similar content
    python wiki_search.py search "OAuth2 authentication flow"

    # Find content related to a specific file
    python wiki_search.py related "configuration/auth.md"

    # Show index stats
    python wiki_search.py stats

    # Get a specific section from a file
    python wiki_search.py section "configuration/auth.md" "OAuth2"
"""

import argparse
import json
import sys
from pathlib import Path

from wiki_indexer.chunker import chunk_directory

DEFAULT_INDEX_DIR = ".wiki-index"


def cmd_index(args):
    """Build or rebuild the vector index from a wiki directory."""
    from wiki_indexer.store import WikiVectorStore

    wiki_dir = Path(args.wiki_dir)
    index_dir = Path(args.index_dir)

    if not wiki_dir.is_dir():
        print(f"Error: {wiki_dir} is not a directory", file=sys.stderr)
        sys.exit(1)

    print(f"Chunking markdown files in {wiki_dir}...")
    chunks = chunk_directory(wiki_dir)
    print(f"  Found {len(chunks)} chunks from markdown files")

    if not chunks:
        print("No markdown content found. Check the directory path.")
        sys.exit(1)

    # Show some stats about the chunks
    files = set(c.source_file for c in chunks)
    total_words = sum(c.word_count for c in chunks)
    avg_words = total_words // len(chunks) if chunks else 0
    print(f"  {len(files)} files, {total_words} total words, ~{avg_words} words/chunk")

    print(f"\nBuilding vector index with model '{args.model}'...")
    print(f"  (First run downloads the model — ~90MB for MiniLM)")
    store = WikiVectorStore(persist_dir=index_dir, model_name=args.model)
    stats = store.index_chunks(chunks)

    print(f"\nDone! Indexed {stats['indexed']} chunks in {stats['elapsed_seconds']}s")
    print(f"Index stored at: {stats['persist_dir']}")


def cmd_search(args):
    """Search the index for chunks similar to a query."""
    from wiki_indexer.store import WikiVectorStore

    store = WikiVectorStore(persist_dir=args.index_dir, model_name=args.model)

    results = store.search(
        query=args.query,
        n_results=args.top_n,
    )

    if not results:
        print("No results found.")
        return

    if args.json:
        print(json.dumps(results, indent=2))
        return

    # Human-readable output
    for i, r in enumerate(results):
        similarity = 1 - r["distance"]  # cosine distance -> similarity
        print(f"\n{'='*72}")
        print(f"[{i+1}] {r['source_file']}")
        print(f"    Section: {r['heading_path']}")
        print(f"    Lines: {r['start_line']}-{r['end_line']} | "
              f"Words: {r['word_count']} | "
              f"Similarity: {similarity:.3f}")
        print(f"{'─'*72}")

        # Show a preview (first 300 chars)
        preview = r["text"][:300]
        if len(r["text"]) > 300:
            preview += "..."
        print(f"    {preview}")


def cmd_related(args):
    """Find content related to a specific file."""
    from wiki_indexer.store import WikiVectorStore

    store = WikiVectorStore(persist_dir=args.index_dir, model_name=args.model)

    results = store.search_by_file(
        file_path=args.file_path,
        n_results=args.top_n,
    )

    if not results:
        print(f"No related content found for '{args.file_path}'.")
        print("  (Is the file path relative to the wiki root?)")
        return

    if args.json:
        print(json.dumps(results, indent=2))
        return

    print(f"Content related to: {args.file_path}")
    for i, r in enumerate(results):
        similarity = 1 - r["distance"]
        print(f"\n{'='*72}")
        print(f"[{i+1}] {r['source_file']}")
        print(f"    Section: {r['heading_path']}")
        print(f"    Similarity: {similarity:.3f}")
        print(f"{'─'*72}")
        preview = r["text"][:300]
        if len(r["text"]) > 300:
            preview += "..."
        print(f"    {preview}")


def cmd_section(args):
    """Extract a specific section from a wiki file by heading match."""
    wiki_dir = Path(args.wiki_dir)
    target_file = wiki_dir / args.file_path

    if not target_file.is_file():
        print(f"Error: File not found: {target_file}", file=sys.stderr)
        sys.exit(1)

    from wiki_indexer.chunker import chunk_markdown

    content = target_file.read_text(encoding="utf-8", errors="replace")
    chunks = chunk_markdown(content, args.file_path)

    query_lower = args.heading_query.lower()
    matches = [
        c for c in chunks if query_lower in c.heading_path.lower()
    ]

    if not matches:
        print(f"No section matching '{args.heading_query}' in {args.file_path}")
        print(f"Available sections:")
        for c in chunks:
            print(f"  - {c.heading_path} (lines {c.start_line}-{c.end_line})")
        return

    for m in matches:
        if args.json:
            print(json.dumps({"heading_path": m.heading_path, "text": m.text, **m.to_dict()}, indent=2))
        else:
            print(f"\n{'='*72}")
            print(f"Section: {m.heading_path}")
            print(f"Lines: {m.start_line}-{m.end_line}")
            print(f"{'─'*72}")
            print(m.text)


def cmd_stats(args):
    """Show index statistics."""
    from wiki_indexer.store import WikiVectorStore

    store = WikiVectorStore(persist_dir=args.index_dir, model_name=args.model)
    stats = store.stats()

    if args.json:
        print(json.dumps(stats, indent=2))
    else:
        print(f"Index: {stats['persist_dir']}")
        print(f"Model: {stats['model']}")
        print(f"Chunks: {stats['total_chunks']}")
        print(f"Files:  {stats['total_files']}")


def cmd_crossrefs(args):
    """Analyze cross-references and find broken links, orphan pages."""
    from wiki_indexer.crossrefs import analyze_crossrefs

    report = analyze_crossrefs(args.wiki_dir)

    if args.json:
        print(json.dumps(report.to_dict(), indent=2))
        return

    print(f"Cross-reference analysis: {args.wiki_dir}")
    print(f"  Files: {report.total_files}")
    print(f"  Internal links: {report.total_links}")

    if report.broken_links:
        print(f"\n  BROKEN LINKS ({len(report.broken_links)}):")
        for bl in report.broken_links:
            print(f"    {bl.source_file}:{bl.line_number} -> {bl.raw_target} [{bl.link_text}]")

    if report.orphan_pages:
        print(f"\n  ORPHAN PAGES ({len(report.orphan_pages)}):")
        for op in report.orphan_pages:
            print(f"    {op}")

    if not report.broken_links and not report.orphan_pages:
        print("\n  No issues found.")


def cmd_backlinks(args):
    """Show all files that link to a given file."""
    from wiki_indexer.crossrefs import analyze_crossrefs

    report = analyze_crossrefs(args.wiki_dir)
    file_path = args.file_path

    backlinks = report.back_links.get(file_path, [])
    forward = report.forward_links.get(file_path, [])

    if args.json:
        print(json.dumps({
            "file": file_path,
            "backlinks": backlinks,
            "forward_links": forward,
            "all_related": sorted(report.files_related_to(file_path)),
        }, indent=2))
        return

    print(f"Links for: {file_path}")
    if backlinks:
        print(f"\n  LINKED FROM ({len(backlinks)}):")
        for bl in sorted(set(backlinks)):
            print(f"    <- {bl}")
    else:
        print("\n  No backlinks (orphan page)")

    if forward:
        print(f"\n  LINKS TO ({len(forward)}):")
        for fl in sorted(set(forward)):
            print(f"    -> {fl}")
    else:
        print("\n  No outgoing links")


def main():
    parser = argparse.ArgumentParser(
        description="Index and search a markdown wiki for semantic overlap",
        formatter_class=argparse.RawDescriptionHelpFormatter,
    )
    parser.add_argument(
        "--index-dir",
        default=DEFAULT_INDEX_DIR,
        help=f"Directory for the vector index (default: {DEFAULT_INDEX_DIR})",
    )
    parser.add_argument(
        "--model",
        default="all-MiniLM-L6-v2",
        help="Sentence-transformer model name (default: all-MiniLM-L6-v2)",
    )
    subparsers = parser.add_subparsers(dest="command", required=True)

    # Shared flags added to each subparser
    def add_json_flag(p):
        p.add_argument("--json", action="store_true",
                        help="Output results as JSON (for tool integration)")

    # index
    p_index = subparsers.add_parser("index", help="Build the vector index")
    p_index.add_argument("wiki_dir", help="Path to the wiki directory")
    p_index.set_defaults(func=cmd_index)

    # search
    p_search = subparsers.add_parser("search", help="Semantic search")
    p_search.add_argument("query", help="Search query text")
    p_search.add_argument("-n", "--top-n", type=int, default=10, help="Number of results")
    add_json_flag(p_search)
    p_search.set_defaults(func=cmd_search)

    # related
    p_related = subparsers.add_parser("related", help="Find content related to a file")
    p_related.add_argument("file_path", help="File path relative to wiki root")
    p_related.add_argument("-n", "--top-n", type=int, default=10, help="Number of results")
    add_json_flag(p_related)
    p_related.set_defaults(func=cmd_related)

    # section
    p_section = subparsers.add_parser("section", help="Extract a section by heading")
    p_section.add_argument("file_path", help="File path relative to wiki root")
    p_section.add_argument("heading_query", help="Heading text to search for")
    p_section.add_argument("--wiki-dir", default=".", help="Wiki root directory")
    add_json_flag(p_section)
    p_section.set_defaults(func=cmd_section)

    # stats
    p_stats = subparsers.add_parser("stats", help="Show index stats")
    add_json_flag(p_stats)
    p_stats.set_defaults(func=cmd_stats)

    # crossrefs
    p_xref = subparsers.add_parser("crossrefs", help="Analyze links, find broken/orphan pages")
    p_xref.add_argument("wiki_dir", help="Path to the wiki directory")
    add_json_flag(p_xref)
    p_xref.set_defaults(func=cmd_crossrefs)

    # backlinks
    p_back = subparsers.add_parser("backlinks", help="Show backlinks for a file")
    p_back.add_argument("file_path", help="File path relative to wiki root")
    p_back.add_argument("--wiki-dir", default=".", help="Wiki root directory")
    add_json_flag(p_back)
    p_back.set_defaults(func=cmd_backlinks)

    args = parser.parse_args()
    args.func(args)


if __name__ == "__main__":
    main()
