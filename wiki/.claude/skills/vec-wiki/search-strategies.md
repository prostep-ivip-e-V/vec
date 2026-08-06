# Search Strategies for the VEC Wiki Index

This file contains concrete `jq` / `grep` recipes for querying the JSONL indices in
`.claude/index/`. All commands run from the **wiki root directory**.

---

## Finding pages that mention a class

```bash
# All pages mentioning DocumentVersion (any source)
jq -r 'select(.concept == "DocumentVersion") | .mentioned_in[].url' \
  .claude/index/concepts.jsonl

# Only guideline pages mentioning DocumentVersion
jq -r 'select(.concept == "DocumentVersion") | .mentioned_in[] | select(.url | contains("/guidelines/")) | .url' \
  .claude/index/concepts.jsonl

# Only pages where the class is in the front matter (authoritative cross-reference)
jq -r 'select(.concept == "DocumentVersion") | .mentioned_in[] | select(.via | contains("frontmatter")) | .url' \
  .claude/index/concepts.jsonl
```

---

## Finding normative rules about a class

```bash
# All normative rules scoped to DocumentVersion or PartVersion
jq -c 'select(.scope_classes[] | IN("DocumentVersion", "PartVersion"))' \
  .claude/index/guidelines.jsonl

# MUST / MUST NOT rules only
jq -c 'select(.modality | IN("MUST", "MUST NOT", "SHALL", "SHALL NOT"))' \
  .claude/index/guidelines.jsonl

# Rules scoped to a class AND with high modality
jq -c 'select(.scope_classes[] == "DocumentType" and (.modality | IN("MUST","MUST NOT","SHALL","SHALL NOT")))' \
  .claude/index/guidelines.jsonl
```

---

## Finding the best placement for new content

```bash
# Find guideline pages in a specific area
jq -c 'select(.kind=="guideline" and .area=="key-concepts")' \
  .claude/index/pages.jsonl

# Find pages that already cover a set of classes (ranked by coverage)
jq -r 'select(.kind=="guideline" and (.linked_classes_frontmatter | contains(["DocumentVersion"]))) | [.url, (.linked_classes_frontmatter | length)] | @tsv' \
  .claude/index/pages.jsonl | sort -t$'\t' -k2 -nr
```

---

## Consistency checks

```bash
# Pages whose front matter links a class but body does not (potential gap)
jq -c 'select(
  (.linked_classes_frontmatter | length) > 0 and
  ((.linked_classes_frontmatter - .linked_classes_inline) | length) > 0
)' .claude/index/pages.jsonl

# Pages whose body mentions a class inline but front matter does not declare it
jq -c 'select(
  (.linked_classes_inline | length) > 0 and
  ((.linked_classes_inline - .linked_classes_frontmatter) | length) > 0
) | {url, missing: (.linked_classes_inline - .linked_classes_frontmatter)}' \
  .claude/index/pages.jsonl
```

---

## Class hierarchy lookups

```bash
# Find the base classifier(s) of a class
jq -r 'select(.name == "WireSpecification") | "base: \(.base_classifiers | join(", "))"' \
  .claude/index/classes.jsonl

# Find all classes with a given base class (direct subclasses)
jq -r 'select(.base_classifiers[] == "Specification") | .name' \
  .claude/index/classes.jsonl

# Find all abstract classes
jq -r 'select(.is_abstract == true) | .name' \
  .claude/index/classes.jsonl
```

---

## Impact analysis (what does changing X affect?)

```bash
# All pages that mention ConnectorHousingSpecification in any way
CLASS="ConnectorHousingSpecification"
jq -r --arg cls "$CLASS" 'select(.concept == $cls) | .mentioned_in[].url' \
  .claude/index/concepts.jsonl

# Combined: class info + all affected pages
CLASS="DocumentType"
echo "=== Class info ===" && \
jq -r --arg cls "$CLASS" 'select(.name == $cls) | "Type: \(.element_type)\nOwner: \(.owner)\nBase: \(.base_classifiers | join(", "))\nDoc: \(.documentation[:150])"' \
  .claude/index/classes.jsonl && \
echo "=== Mentioned in ===" && \
jq -r --arg cls "$CLASS" 'select(.concept == $cls) | .mentioned_in[] | "\(.via)\t\(.url)"' \
  .claude/index/concepts.jsonl | sort
```

---

## Searching guidelines by text

```bash
# Full-text search in extracted normative statements
grep -i "documenttype" .claude/index/guidelines.jsonl | \
  jq -r '"\(.modality) | \(.guideline_url) | \(.statement[:120])"'

# Find any rule mentioning "receiver" or "sender"
grep -iE '"statement":"[^"]*\b(receiver|sender|empfänger|sender)\b' \
  .claude/index/guidelines.jsonl | jq -r '"\(.guideline_url)#\(.section_anchor) | \(.statement[:100])"'
```

---

## Relations graph queries

```bash
# All edges from a specific guideline page
jq -c 'select(.from == "/specifications/vec/guidelines/key-concepts/general-structure/")' \
  .claude/index/relations.jsonl

# All class->guideline edges (which guideline pages reference which classes)
jq -r 'select(.from_kind == "class" and .to_kind == "guideline") | "\(.from)\t\(.to)\t\(.source)"' \
  .claude/index/relations.jsonl | sort
```

---

## Broadening a search when the first cut is empty

If a class name returns no results, try:
1. Check spelling: `jq -r 'select(.name | ascii_downcase | contains("connectorhousing")) | .name' .claude/index/classes.jsonl`
2. Try the base class: look up `base_classifiers` in `classes.jsonl` and repeat the query with the parent.
3. Try a synonym from `glossary.md` and retry with the English/canonical class name.
4. Fall back to `grep -i` on the raw JSONL files.
