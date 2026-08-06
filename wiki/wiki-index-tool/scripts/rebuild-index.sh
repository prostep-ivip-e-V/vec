#!/usr/bin/env bash
# Rebuild the wiki vector index.
#
# Run this:
#   - After merging wiki changes to main
#   - In CI as a post-merge step
#   - Manually whenever you want to refresh the index
#
# Usage:
#   ./scripts/rebuild-index.sh [wiki_dir] [index_dir]
#
# Environment variables:
#   WIKI_DIR       Path to the wiki (default: ./wiki)
#   INDEX_DIR      Path for the index (default: .wiki-index)
#   EMBED_MODEL    Embedding model name (default: anomic-ai/nomic-embed-text-v1.5)

set -euo pipefail

WIKI_DIR="${1:-${WIKI_DIR:-./wiki}}"
INDEX_DIR="${2:-${INDEX_DIR:-.wiki-index}}"
EMBED_MODEL="${EMBED_MODEL:-nomic-ai/nomic-embed-text-v1.5}"

SCRIPT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

echo "=== Rebuilding Wiki Index ==="
echo "Wiki:  $WIKI_DIR"
echo "Index: $INDEX_DIR"
echo "Model: $EMBED_MODEL"
echo ""

# Ensure dependencies are installed
if ! python3 -c "import chromadb; import sentence_transformers" 2>/dev/null; then
    echo "Installing dependencies..."
    pip install -r "${SCRIPT_DIR}/requirements.txt" --quiet
fi

# Build the index
python3 "${SCRIPT_DIR}/wiki_search.py" \
    --index-dir "$INDEX_DIR" \
    --model "$EMBED_MODEL" \
    index "$WIKI_DIR"

echo ""
echo "=== Index Stats ==="
python3 "${SCRIPT_DIR}/wiki_search.py" \
    --index-dir "$INDEX_DIR" \
    --model "$EMBED_MODEL" \
    stats

echo ""

# Also run cross-reference check
echo "=== Cross-Reference Check ==="
python3 "${SCRIPT_DIR}/wiki_search.py" crossrefs "$WIKI_DIR"

echo ""
echo "Done. Index is ready at: $INDEX_DIR"
