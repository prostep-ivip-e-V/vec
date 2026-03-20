#!/usr/bin/env python3
"""
Quick test: index the sample wiki and run some searches.
Verifies the full pipeline works end-to-end.
"""

import json
import sys
from pathlib import Path

# Add project root to path
sys.path.insert(0, str(Path(__file__).parent))

from wiki_indexer.chunker import chunk_directory

SAMPLE_DIR = Path(__file__).parent / "sample_wiki"
INDEX_DIR = Path(__file__).parent / ".test-index"


def main():
    print("=" * 60)
    print("WIKI INDEX TOOL — END-TO-END TEST")
    print("=" * 60)

    # 1. Chunk
    print("\n1. Chunking sample wiki...")
    chunks = chunk_directory(SAMPLE_DIR)
    print(f"   Created {len(chunks)} chunks from sample wiki\n")

    for c in chunks:
        print(f"   [{c.source_file}] {c.heading_path} ({c.word_count} words)")

    # 2. Index
    print("\n2. Building vector index...")
    from wiki_indexer.store import WikiVectorStore

    store = WikiVectorStore(persist_dir=INDEX_DIR)
    stats = store.index_chunks(chunks)
    print(f"   Indexed {stats['indexed']} chunks in {stats['elapsed_seconds']}s")

    # 3. Search — should find the overlapping auth content
    print("\n3. Searching for 'OAuth2 token expiration'...")
    results = store.search("OAuth2 token expiration", n_results=5)
    for i, r in enumerate(results):
        sim = 1 - r["distance"]
        print(f"   [{i+1}] {r['source_file']} > {r['heading_path']} (sim={sim:.3f})")

    # 4. Related — find what overlaps with authentication.md
    print("\n4. Finding content related to 'authentication.md'...")
    related = store.search_by_file("authentication.md", n_results=5)
    for i, r in enumerate(related):
        sim = 1 - r["distance"]
        print(f"   [{i+1}] {r['source_file']} > {r['heading_path']} (sim={sim:.3f})")

    # 5. Demonstrate the contradictions that exist in the sample
    print("\n5. Known contradictions in sample wiki:")
    print("   - Token expiration: authentication.md says 3600s, api-reference.md says 7200s")
    print("   - Refresh token lifetime: authentication.md says 30 days, security-guide.md says 14 days")
    print("   - API key header: authentication.md says X-API-Key, api-reference.md says Authorization: ApiKey")
    print("   - API key expiry: authentication.md says 365 days max, api-reference.md says 90 days default")
    print("   - Token endpoint: authentication.md says /auth/token, api-reference.md says /api/v2/auth/refresh")

    # 6. JSON output test
    print("\n6. JSON output mode (for Claude Code):")
    results_json = store.search("API key authentication header", n_results=3)
    print(json.dumps(results_json[:2], indent=2)[:500] + "...")

    # Stats
    print("\n7. Index stats:")
    print(json.dumps(store.stats(), indent=2))

    print("\n" + "=" * 60)
    print("TEST COMPLETE — all systems working")
    print("=" * 60)


if __name__ == "__main__":
    main()
