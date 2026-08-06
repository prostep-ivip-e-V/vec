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

# Find the direct subclasses of a class (pre-computed, no scan needed)
jq -r 'select(.name == "Specification") | .derived_classifiers[]' \
  .claude/index/classes.jsonl

# Find all abstract classes
jq -r 'select(.is_abstract == true) | .name' \
  .claude/index/classes.jsonl
```

---

## Model structure: attributes vs. relationships

`attributes` holds plain-valued properties; `outgoing_relations` holds navigable
association ends (the model relationships). Both carry `type` and `mult`.

**Only own members are listed** — inherited ones are not copied down. To get the
full picture of a class, walk `base_classifiers` upwards and union the results.

```bash
# Is an attribute mandatory?  (mult "1" or "1..*" = mandatory)
jq -r 'select(.name == "DocumentVersion") | .attributes[] | "\(.name)\t\(.type)\t\(.mult)"' \
  .claude/index/classes.jsonl

# What can you navigate to from a class?
jq -r 'select(.name == "DocumentVersion") | .outgoing_relations[] | "\(.role) -> \(.type) [\(.mult)] \(.aggregation)"' \
  .claude/index/classes.jsonl

# Which classes reference DocumentType anywhere in the model?
jq -r 'select(.source == "attribute-type" and .to == "DocumentType") | .from' \
  .claude/index/relations.jsonl

# Walk one level up the hierarchy and list inherited attributes too
jq -r 'select(.name == "DocumentVersion") | .base_classifiers[]' .claude/index/classes.jsonl
# → ItemVersion, then repeat the attribute query for ItemVersion
```

---

## Deprecated elements

Deprecated classes, attributes and association ends carry a `deprecated` object
with `since` and `reason`. **Never propose new content that relies on one** —
say it is deprecated and name the replacement from `reason`.

```bash
# All deprecated classes with the reason
jq -r 'select(.deprecated) | "\(.name)\tsince \(.deprecated.since)\t\(.deprecated.reason[:100])"' \
  .claude/index/classes.jsonl

# Deprecated attributes and relations, by owning class
jq -r '.name as $c | (.attributes + .outgoing_relations)[] | select(.deprecated) | "\($c).\(.name // .role)\tsince \(.deprecated.since)"' \
  .claude/index/classes.jsonl

# Check a specific class before writing about it
jq -r 'select(.name == "FuseComponent") | .deprecated // "not deprecated"' \
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
