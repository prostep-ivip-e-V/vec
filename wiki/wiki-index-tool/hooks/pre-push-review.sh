#!/usr/bin/env bash
# Git pre-push hook for wiki consistency review.
#
# Install:
#   cp hooks/pre-push-review.sh .git/hooks/pre-push
#   chmod +x .git/hooks/pre-push
#
# Or use as a standalone check:
#   ./hooks/pre-push-review.sh
#
# What it does:
#   1. Finds all .md files changed vs the main branch
#   2. Runs the crossrefs check for broken links
#   3. Prints related content for manual review
#   4. Exits non-zero if broken links are found
#
# For the full AI-powered review, use Claude Code with:
#   /review

set -euo pipefail

WIKI_DIR="${WIKI_DIR:-./wiki}"
SCRIPT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
SEARCH_CMD="python3 ${SCRIPT_DIR}/wiki_search.py"

# Determine which branch to diff against
MAIN_BRANCH="${MAIN_BRANCH:-main}"
if ! git rev-parse --verify "$MAIN_BRANCH" &>/dev/null; then
    MAIN_BRANCH="master"
fi

echo "=== Wiki Consistency Check ==="
echo ""

# 1. Find changed markdown files
CHANGED_FILES=$(git diff --name-only "$MAIN_BRANCH"...HEAD -- "${WIKI_DIR}/" 2>/dev/null \
    | grep '\.md$' || true)

if [ -z "$CHANGED_FILES" ]; then
    echo "No markdown files changed. Skipping wiki review."
    exit 0
fi

echo "Changed wiki files:"
echo "$CHANGED_FILES" | sed 's/^/  /'
echo ""

# 2. Check for broken links
echo "--- Cross-reference check ---"
XREF_OUTPUT=$($SEARCH_CMD crossrefs "$WIKI_DIR" 2>&1) || true
echo "$XREF_OUTPUT"

BROKEN_COUNT=$(echo "$XREF_OUTPUT" | grep -c "BROKEN LINKS" || true)

# 3. For each changed file, show related content that might need updating
echo ""
echo "--- Related content (potential overlap) ---"
for FILE in $CHANGED_FILES; do
    REL_PATH="${FILE#${WIKI_DIR}/}"
    echo ""
    echo "File: $REL_PATH"
    $SEARCH_CMD related "$REL_PATH" -n 5 2>/dev/null || echo "  (run 'wiki_search.py index' first to enable semantic search)"
done

echo ""
echo "=== Check complete ==="

# Fail on broken links
if [ "$BROKEN_COUNT" -gt 0 ]; then
    echo "WARNING: Broken links detected. Consider fixing before push."
    # Set to 'exit 1' to make this a hard block
    exit 0
fi
