# Wiki Index Tool

Semantic search, cross-reference analysis, and overlap detection for markdown
documentation wikis. Designed to work with **Claude Code** to catch
contradictions and content drift across large documentation sets.

## Quick Start

```bash
# Install dependencies
pip install -r requirements.txt

# Build the vector index (first run downloads the embedding model ~90MB)
python wiki_search.py index ./path/to/your/wiki

# Search for related content
python wiki_search.py search "OAuth2 token expiration"

# Find all content related to a specific file
python wiki_search.py related "authentication.md"

# Check for broken links and orphan pages
python wiki_search.py crossrefs ./path/to/your/wiki

# Show backlinks for a file
python wiki_search.py backlinks "authentication.md" --wiki-dir ./path/to/your/wiki

# Extract a section by heading
python wiki_search.py section "authentication.md" "OAuth2" --wiki-dir ./path/to/your/wiki

# Check index stats
python wiki_search.py stats
```

## Commands

| Command | Needs ChromaDB? | Description |
|---------|:---:|---|
| `index <wiki_dir>` | Yes | Chunk all `.md` files, embed, and store in vector DB |
| `search <query>` | Yes | Semantic search across all indexed chunks |
| `related <file>` | Yes | Find content that overlaps with a given file |
| `section <file> <heading>` | No | Extract a section by heading text match |
| `stats` | Yes | Show chunk/file counts in the index |
| `crossrefs <wiki_dir>` | No | Analyze links: find broken links and orphan pages |
| `backlinks <file>` | No | Show what links to/from a given file |

## Options

| Flag | Description |
|------|-------------|
| `--index-dir DIR` | Where to store the index (default: `.wiki-index`) |
| `--model NAME` | Sentence-transformer model (default: `all-MiniLM-L6-v2`) |
| `--json` | Output as JSON (for tool integration with Claude Code) |
| `-n, --top-n N` | Number of results to return |

## Embedding Models

| Model | Size | Context | Quality | Speed |
|-------|------|---------|---------|-------|
| `all-MiniLM-L6-v2` (default) | 80MB | 512 tokens | Good | Fast |
| `BAAI/bge-large-en-v1.5` | 1.3GB | 512 tokens | Better | Slower |
| `nomic-ai/nomic-embed-text-v1.5` | 550MB | 8192 tokens | Better | Medium |

For a 500-file wiki, `all-MiniLM-L6-v2` is fine. If you have very long
sections or need higher precision overlap detection, consider `nomic-embed-text`.

## Claude Code Integration

### Setup

1. Copy the `.claude/` directory into your project root
2. Build the index: `python wiki_search.py index ./wiki`
3. Use the `/review` slash command in Claude Code when reviewing wiki changes

### How the `/review` command works

1. Identifies which files changed via git
2. Runs `crossrefs` to detect broken links
3. Runs `backlinks` to understand the link graph around changed files
4. Searches the vector index for semantically related content
5. Reads and compares the related sections
6. Reports contradictions, terminology drift, stale overlaps, and broken links

### Git Hook

A pre-push hook is included that runs basic checks before push:

```bash
cp hooks/pre-push-review.sh .git/hooks/pre-push
chmod +x .git/hooks/pre-push
```

It checks for broken links and lists related content for changed files.

### Rebuilding the Index

Rebuild after merging wiki changes to keep the index current:

```bash
# Manual
python wiki_search.py index ./wiki

# Or use the CI script
./scripts/rebuild-index.sh ./wiki .wiki-index
```

Add `.wiki-index/` to `.gitignore` (already included).

## How Chunking Works

Files are split at H2/H3 heading boundaries. Each chunk preserves the full
heading breadcrumb path (e.g. `Config > Auth > OAuth2`) so search results
include structural context.

- **Minimum chunk**: 30 words — smaller sections are merged with neighbors
- **Maximum chunk**: 800 words — larger sections are split at paragraph boundaries
- **Merged chunks** preserve all heading paths from both original chunks
  (e.g. `Security Guide | Auth Best Practices | Token Configuration`)

## Sample Wiki

The `sample_wiki/` directory contains 4 test files with deliberate
contradictions for testing:

- Token expiration: 3600s vs 7200s
- Refresh token lifetime: 30 days vs 14 days
- API key header: `X-API-Key` vs `Authorization: ApiKey`
- API key max lifetime: 365 days vs 90 days
- Token endpoint path: `/auth/token` vs `/api/v2/auth/refresh`
- One broken link: `deployment-guide.md` doesn't exist

## Architecture

```
Markdown Files
     |
     v
 +---------+     Chunks split at H2/H3 boundaries
 | Chunker |     with heading breadcrumbs preserved
 +----+----+
      |
      +------------------+
      |                  |
      v                  v
 +-----------+    +------------+
 | Embedder  |    | Link       |
 | (vector)  |    | Analyzer   |
 +-----+-----+    +-----+------+
       |                 |
       v                 v
 +----------+    +------------+
 | ChromaDB |    | CrossRef   |
 | (cosine) |    | Report     |
 +-----+----+    +-----+------+
       |                |
       +--------+-------+
                |
                v
        +---------------+
        | wiki_search   |
        | CLI + JSON    |
        +-------+-------+
                |
                v
        +---------------+
        | Claude Code   |
        | /review cmd   |
        +---------------+
```

## Project Structure

```
wiki-index-tool/
  wiki_indexer/
    __init__.py          # Package with lazy imports
    chunker.py           # Markdown -> heading-based chunks
    store.py             # ChromaDB vector store wrapper
    crossrefs.py         # Link graph analyzer
  wiki_search.py         # CLI entry point (7 commands)
  requirements.txt       # chromadb + sentence-transformers
  test_pipeline.py       # End-to-end test script
  .gitignore
  .claude/
    commands/
      review.md          # Claude Code /review slash command
  hooks/
    pre-push-review.sh   # Git pre-push hook
  scripts/
    rebuild-index.sh     # CI index rebuild script
  sample_wiki/           # Test files with deliberate contradictions
```
