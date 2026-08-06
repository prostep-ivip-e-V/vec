---
name: vec-wiki
description: |
  Use when researching, authoring, or checking consistency of content in the
  VEC ECAD wiki (prostep-ivip-e-V/vec). Triggers on questions about VEC model
  classes (PartMaster, DocumentVersion, PartVersion, Connection, Cavity, Wire,
  etc.), implementation guidelines, proposed wiki edits, or any discussion that
  references VEC concepts in German or English (e.g. Stecker, Leitung,
  Systemschaltplan). Also use when reviewing a discussion or change request to
  find affected pages, detect contradictions, or determine where to place new
  content.
---

# VEC Wiki Knowledge Skill

This skill helps you research, author, and check the consistency of content in
the ECAD Wiki for the Vehicle Electrical Container (VEC) specification.

## Index files

All indices live under `.claude/index/` relative to the wiki root:

| File | Contents |
|---|---|
| `classes.jsonl` | 548 VEC classes and enumerations (from `vec-2.2.0.mdxml`), with attributes, association ends, hierarchy and deprecation |
| `pages.jsonl` | 715 markdown pages (v2.2.0 model docs + guidelines) |
| `concepts.jsonl` | Inverted index: class → pages that mention it |
| `relations.jsonl` | Typed edges: class ↔ page and class → class (`frontmatter` / `inline-shortcode` / `attribute-type`) |
| `guidelines.jsonl` | 186 extracted normative statements (RFC 2119 keywords) |

Use `jq` to query them. See `search-strategies.md` for ready-made recipes.

Two things to know before relying on `classes.jsonl`:

- **537 of the 548 entries have a generated class page** (`has_generated_page`).
  The rest are diagram legends and report-generator helpers; they are excluded
  from `concepts.jsonl` and `relations.jsonl` and should be ignored.
- **Attributes and relations are own-only, not inherited.** `DocumentVersion`
  lists `documentNumber` but not `companyName` — that one comes from
  `ItemVersion`. Walk `base_classifiers` when you need the complete set.

---

## Workflow 1 — Affect analysis

*"What does this discussion / change request affect?"*

**Goal**: given a piece of text (issue, discussion, draft paragraph), find all
wiki pages that are relevant to it.

### Step 1 — Extract VEC concepts

1. Read the input text.
2. Identify any class names mentioned directly (PascalCase names matching
   entries in `classes.jsonl`).
3. Translate any German terms via `glossary.md` to canonical class names.
4. If uncertain about a term, check:
   ```bash
   jq -r '.name' .claude/index/classes.jsonl | grep -i "<term>"
   ```

### Step 2 — Query the inverted index

For each identified class:

```bash
jq -r 'select(.concept == "DocumentType") | .mentioned_in[].url' \
  .claude/index/concepts.jsonl
```

Collect the union of all returned URLs.

### Step 3 — Query the relations graph

```bash
jq -r 'select(.from == "DocumentVersion") | .to' \
  .claude/index/relations.jsonl
```

### Step 4 — Read candidate pages

You now have a small set of candidate pages (typically 3–10).  Read each in
full using the `path` field from `pages.jsonl`:

```bash
jq -r 'select(.url == "<url>") | .path' .claude/index/pages.jsonl
# → content/specifications/vec/guidelines/key-concepts/general-structure/index.md
```

### Step 5 — Classify

Label each page as one of:
- **affected** — the page will need updating if the change is adopted
- **contradicts** — the page contains a rule that conflicts with the proposed change
- **reinforces** — the page supports the proposed change
- **adjacent** — related context, no change needed

### Broadening the query

If Step 2 returns fewer than 3 results:
1. Look up the class's `base_classifiers` and repeat with parent classes.
2. Look for synonym classes in `glossary.md`.
3. Fall back to `grep -i "<term>" .claude/index/guidelines.jsonl`.

---

## Workflow 2 — Contradiction check

*"Does this proposed rule contradict existing guidelines?"*

### Step 1 — Identify scope classes

Extract the VEC class names that the proposed rule addresses (follow
Workflow 1 steps 1–3).

### Step 2 — Find existing rules for those classes

```bash
jq -c 'select(.scope_classes[] | IN("DocumentType","DocumentVersion"))' \
  .claude/index/guidelines.jsonl
```

### Step 3 — Compare modality and direction

For each returned rule, check:
- Does the proposed rule use the **same or stronger modality** on the same class?
- Does it say the **opposite** of an existing MUST/SHALL?
- Does it restrict something that is currently optional (MAY → MUST)?

### Step 4 — Surface findings with evidence

Never claim a contradiction without quoting:
- The existing rule: `statement` + `guideline_url` + `section_anchor`
- The proposed rule (from the input)
- The conflicting modality pair (e.g., existing "SHOULD" vs. proposed "MUST NOT")

Note: `extraction_confidence: "heuristic"` on all entries — always verify by
reading the source page before concluding a contradiction exists.

### Step 5 — Read source pages

For any potential contradiction, read the full page at the `guideline_url` to
confirm that the extracted statement is accurate and that the context doesn't
resolve the apparent conflict.

---

## Workflow 3 — Content placement

*"Where should this new content live in the wiki?"*

### Step 1 — Identify the topic's area

The guidelines tree has these areas (top-level directories):

| Area | Subject |
|---|---|
| `key-concepts` | Fundamental VEC building blocks (DocumentVersion, PartVersion, …) |
| `general` | Cross-cutting rules (XML/XSD, identifiers, interface behaviour, …) |
| `product-definition` | Component descriptions, harness, composite parts, … |
| `ee-components` | EE components (connectors, fuses, relays, …) |
| `component-types` | Wire types, tapes, grommets, fixings, … |
| `topology` | Routing, placement, geometry, … |
| `elog-layers` | System schematic, wiring, architecture layers |
| `pdm-information` | PDM context, metadata |
| `compliance-tests` | Conformance testing |

### Step 2 — Find existing pages in that area

```bash
jq -c 'select(.kind=="guideline" and .area=="key-concepts") | {url, title, headings}' \
  .claude/index/pages.jsonl
```

### Step 3 — Check coverage of the scope classes

```bash
jq -r 'select(.kind=="guideline" and (.linked_classes_frontmatter | contains(["DocumentVersion"]))) | "\(.url)\t\(.title)"' \
  .claude/index/pages.jsonl
```

### Step 4 — Decide: extend vs. new page

- **Extend an existing page** if: the topic fits within an existing area AND can
  be covered in 1–2 sections.  Prefer this.
- **Create a new page** if: the topic is distinct enough to deserve its own URL,
  or it requires 3+ top-level sections.

See `content-conventions.md` for the full decision rule and file layout.

### Step 5 — Draft the content

Follow `content-conventions.md` for front matter, shortcode usage, and
heading conventions.  Follow `cross-references.md` for linking rules.

---

## Key facts for authoring

- **Front matter field for class links**: `classes:` (YAML list of PascalCase names)
- **Shortcode for class links**: `{{< vec-class ClassName >}}`
- **Class pages are read-only** (generated from XMI — see `cross-references.md`)
- **Check deprecation before writing about a class or attribute.** Nine classes
  and seven attributes carry a `deprecated` object with `since` and `reason`.
  Never build new guidance on one; name the replacement given in `reason`.
- **Stable citation key**: `guideline_url + section_anchor`, e.g.
  `/specifications/vec/guidelines/key-concepts/general-structure/#usages-of-the-documentversion`
- **RFC 2119 keywords** used in guidelines: MUST, SHALL, SHOULD, MAY (and their
  NOT variants) — also lowercase in some pages

## When to stop using indices and read pages

Switch to reading full pages when:
1. You have narrowed candidates to ≤ 5 pages.
2. The extracted normative statement you found needs context verification.
3. You are about to propose a specific edit or draft a new section.
4. The index returns zero results (fall back to `grep` first, then read broadly).

---

## Sub-files in this skill

| File | Purpose |
|---|---|
| `search-strategies.md` | Ready-made `jq`/`grep` recipes for every common query |
| `content-conventions.md` | Front matter fields, shortcodes, heading style |
| `cross-references.md` | Linking rules between pages and classes |
| `glossary.md` | German ↔ English ↔ VEC class name translation table |
