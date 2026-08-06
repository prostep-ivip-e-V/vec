---
title: "Implementation Plan: Claude Code Knowledge Skill for the ECAD Wiki"
status: implemented
last_updated: 2026-08-06
audience: maintainers of prostep-ivip-e-V/vec wiki
related_repo: https://github.com/prostep-ivip-e-V/vec
---

# Implementation Plan: Claude Code Knowledge Skill for the ECAD Wiki

## 0. Current status

v1 is built and lives on branch `feat/claude-wiki-skill`. All placeholders in
this document have been replaced with what was actually found in the repo, and
the open questions in section 10 are answered rather than pending.

| Phase | State |
|---|---|
| 7.1 Discovery | done — findings folded into this document and `content-conventions.md` |
| 7.2 Vocabulary from XMI | done — 548 elements, 537 published |
| 7.3 Page indexing | done — 715 pages |
| 7.4 Derived indices | done — 548 concepts, 1830 relation edges |
| 7.5 Rule extraction | done — 186 candidate statements |
| 7.6 Skill files | done — `SKILL.md` + four sub-files |
| 7.7 E2E test | done — see `e2e-results.md` |
| 7.8 CI workflow | done — `.github/workflows/vec-wiki-index.yml` at the **repo root** |

Not done, deliberately: the four guideline edits that the 2026-03-19 meeting
analysis identified (see `meeting-2026-03-19-analysis.md`). Those are content
work, not skill work.

A second, independent experiment — an embedding-based semantic indexer on branch
`wiki-indexer` — is parked. It corresponds to item 3 in section 12 and is not
part of v1.

## 1. Goal

Make the content of the ECAD Wiki — in particular the VEC v2.2.0 model
documentation and the implementation guidelines — directly usable from inside
Claude Code, so that maintainers and contributors can:

- Research existing coverage of a topic across model docs and guidelines.
- Detect contradictions when a new rule or recommendation is proposed.
- Identify the best location to add new content.
- Keep cross-references between guidelines and model classes consistent.
- Work with mixed German/English source material.

The skill lives **in the wiki repository itself** (under `.claude/`) so it
travels with the content, is versioned alongside it, and any contributor with
Claude Code installed gets the same behavior.

## 2. Ground truth and constraints

The plan is shaped by the following observed facts about the repo and
published site (`https://ecad-wiki.prostep.org/`):

- **VEC element vocabulary**: the UML model in `vec-2.2.0.mdxml` (MagicDraw
  XMI) is the hard truth. The class pages under
  `content/specifications/vec/v220/classes/` are generated from it. The model
  holds **548 classes and enumerations**, of which **537 have a generated
  class page**; the remaining 11 are diagram legends and MagicDraw
  report-generator helpers. The plan derives its vocabulary from the XMI, not
  from the markdown.
- **Hugo theme**: Wowchemy. Front matter is YAML, class pages are produced by
  a generator, prose pages (key-concepts, guidelines) are hand-edited.
- **Class cross-linking**: prose pages declare related VEC classes in the
  front-matter field **`classes:`** (a YAML list of PascalCase names). Inline
  links to a class use the shortcode **`{{< vec-class ClassName >}}`**; the
  percent form is not used. `{{< kbl-class … >}}` is the KBL equivalent.
- **Guideline IDs**: there are no stable rule IDs, but **page URLs are
  stable** (e.g. `/specifications/vec/guidelines/key-concepts/general-structure/`).
  These will serve as the citation key.
- **Bidirectional related-content already exists**: class pages list
  "Implementation Guidelines" and "Recommendation Chapters" that reference
  them; guideline pages list "Class Definitions". This relationship graph is
  the most valuable existing asset and the indexing strategy must preserve
  and exploit it rather than rebuild it.
- **Languages**: model documentation and guidelines are primarily English,
  but discussion content (issues, change requests, in-meeting notes) is often
  German. The skill must handle a German question against an English corpus.
- **Existing change-tracking**: guideline pages carry their change history in
  front matter, not as a markdown table — a `history:` list of
  `{date, description, issue | ghIssue}` entries, where `issue` is a legacy
  Jira key (`KBLFRM-NNN`) and `ghIssue` a GitHub issue number. The theme
  renders it. New content should be authored in this same style.
- **Review status** is the front-matter flag `review: true`, not a body
  callout.

## 3. Scope of v1

**In scope:**
- Skill definition under `.claude/skills/vec-wiki/`.
- An offline indexer that produces a small set of JSONL files committed to
  the repo under `.claude/index/`.
- Vocabulary extraction from `vec-2.2.0.mdxml`.
- Search/recipe documentation that teaches Claude Code how to use the
  indices.

**Out of scope for v1 (deferred):**
- Vector embeddings or semantic search.
- KBL specification coverage.
- Generation of new class pages from the XMI (already handled by an
  existing generator).
- Automated PR drafting; v1 only proposes edits, the human commits them.

## 4. Repository layout after implementation

```
vec/                                     # repo root
├── .github/
│   └── workflows/
│       └── vec-wiki-index.yml           # MUST live here, not under wiki/
└── wiki/
    ├── content/
    │   └── specifications/vec/
    │       ├── v220/
    │       │   ├── classes/             # generated from XMI (existing)
    │       │   └── …prose pages…        # existing
    │       └── guidelines/              # existing
    ├── .claude/
    │   ├── skills/
    │   │   └── vec-wiki/
    │   │       ├── SKILL.md
    │   │       ├── search-strategies.md
    │   │       ├── content-conventions.md
    │   │       ├── cross-references.md
    │   │       └── glossary.md          # German ↔ English ↔ class mapping
    │   ├── index/
    │   │   ├── pages.jsonl
    │   │   ├── concepts.jsonl
    │   │   ├── guidelines.jsonl
    │   │   ├── classes.jsonl            # from XMI
    │   │   └── relations.jsonl          # bidirectional class ↔ page graph
    │   └── tools/
    │       ├── build_index.py
    │       ├── extract_vocabulary.py
    │       └── requirements.txt
    └── …
```

`build_index.py` and the JSONL files are committed. The indices are
small (single-digit MB) and being able to read them directly in a PR
review is a feature.

Note the workflow location: the git repository root is `vec/`, and GitHub
Actions only reads `.github/workflows/` at that root. A workflow placed under
`wiki/.github/workflows/` is silently ignored — it looks committed and never
runs. The job therefore lives at the root with
`defaults.run.working-directory: wiki` and `wiki/`-prefixed path filters.

## 5. The five indices

### 5.1 `classes.jsonl` — the source of truth (from XMI)

One line per UML class or enumeration, extracted from `vec-2.2.0.mdxml`.

```json
{
  "name": "DocumentVersion",
  "qualified_name": "VEC::core::DocumentVersion",
  "element_type": "Class",
  "owner": "core",
  "is_abstract": false,
  "base_classifiers": ["ItemVersion"],
  "derived_classifiers": [],
  "documentation": "A DocumentVersion is a unique identifier …",
  "attributes": [
    {"name": "documentNumber", "type": "String", "mult": "1", "doc": "…"},
    {"name": "documentType",   "type": "DocumentType", "mult": "0..1", "doc": "…"}
  ],
  "outgoing_relations": [
    {"role": "specification", "type": "Specification", "mult": "0..*",
     "aggregation": "composite", "doc": "…"}
  ],
  "page_url": "/specifications/vec/v220/classes/documentversion/",
  "page_path": "content/specifications/vec/v220/classes/documentversion.md",
  "has_generated_page": true
}
```

This file replaces any hand-curated vocabulary list. All other indices
reference it.

Four properties of the extraction are worth stating explicitly, because they
are easy to get wrong against MagicDraw XMI:

- **Attributes vs. relations.** A `uml:Property` that carries an `association`
  attribute is a navigable association end and goes to `outgoing_relations`
  (with its `aggregation`); everything else is a plain attribute. The 506
  entries in `outgoing_relations` across all classes match the 506
  `uml:Association` elements in the model exactly.
- **Multiplicity is nested.** Association ends carry `lowerValue` / `upperValue`
  as direct children, but plain owned attributes bury them inside
  `xmi:Extension/modelExtension`. Reading only direct children silently yields
  `0..1` for every attribute — which is what the first implementation did, and
  it made `documentNumber` look optional when the model says it is mandatory.
  Multiplicities are now spot-checked against the generated class pages.
- **Documentation bodies carry a CSS preamble.** Every MagicDraw comment is an
  HTML document whose `<style>` block survives naive text extraction as a
  literal `p {padding:0px; margin:0px;}` prefix. It is stripped from class,
  attribute and relation docs alike.
- **Members are own-only.** Inherited attributes are not copied down, so a
  complete picture of a class requires walking `base_classifiers`. The
  generated class pages *do* show inherited members, so the two differ by
  design.

Deprecated elements carry an extra `deprecated` object:

```json
"deprecated": {"since": "2.2", "reason": "The FuseComponent … has been replaced …"}
```

It appears on classes (9), attributes (7), association ends and enumeration
literals, and comes from the `<<Deprecated>>` stereotype, which MagicDraw
applies out-of-line via `base_Element`.

### 5.2 `pages.jsonl` — every markdown page

One line per `.md` file under `content/specifications/vec/`.

```json
{
  "path": "content/specifications/vec/guidelines/key-concepts/general-structure.md",
  "url": "/specifications/vec/guidelines/key-concepts/general-structure/",
  "kind": "guideline",
  "area": "key-concepts",
  "title": "General Structure of VEC Files & Documents",
  "description": "The VEC has two major key concepts: PartVersion and DocumentVersion …",
  "status": "under-review",
  "language": "en",
  "headings": ["Fundamentals", "Parts and Documents", "Usages of the DocumentVersion", …],
  "linked_classes_frontmatter": ["DocumentType", "DocumentVersion", "PartVersion", …],
  "linked_classes_inline": ["DocumentVersion", "PartVersion", "Specification", …],
  "linked_pages": ["/specifications/vec/v220/key-concepts/parts-documents-and-resources/", …],
  "github_issues": [956, 901],
  "last_modified": "2026-01-28"
}
```

`kind` distinguishes `class` (auto-generated, treat as reference data),
`model-prose` (the v220 hand-written chapters), and `guideline`.

`linked_classes_frontmatter` comes from the `classes:` YAML field.
`linked_classes_inline` comes from parsing the Hugo `{{< vec-class … >}}`
shortcode out of the body.

Only `v220` and `guidelines` are walked; older specification versions are
skipped. The 715 pages break down as 554 class, 110 model-prose, 51 guideline.

### 5.3 `concepts.jsonl` — inverted index over classes

One line per class, listing every page that mentions it.

```json
{
  "concept": "DocumentType",
  "defined_in": "/specifications/vec/v220/classes/documenttype/",
  "mentioned_in": [
    {"url": "/specifications/vec/guidelines/key-concepts/general-structure/", "via": "frontmatter+inline"},
    {"url": "/specifications/vec/v220/classes/documentversion/",              "via": "attribute-type"},
    {"url": "/specifications/vec/guidelines/general/interface-behaviour/",    "via": "inline"}
  ]
}
```

This is what makes "what is affected by a change to DocumentType?"
answerable in one `jq` call.

`via` takes one of four values: `frontmatter`, `inline`, `frontmatter+inline`
(prose pages), and `attribute-type` (the class page of every class that uses
this one as an attribute or association-end type). Only classes with a
generated page participate; the 11 legend/helper elements are excluded so they
cannot produce false matches on common words like "Legend".

### 5.4 `guidelines.jsonl` — extracted rule statements

This is the index that catches contradictions. Since guidelines have no
formal IDs, we extract candidate normative statements heuristically:
sentences containing RFC 2119 keywords (MUST, SHOULD, MAY, MUST NOT, …)
or their German equivalents (MUSS, SOLL, KANN, DARF NICHT, …), plus
explicit recommendation blocks (Hugo callouts, if any).

```json
{
  "guideline_url": "/specifications/vec/guidelines/key-concepts/general-structure/",
  "section": "Usages of the DocumentVersion",
  "section_anchor": "#usages-of-the-documentversion",
  "scope_classes": ["DocumentVersion", "DocumentType", "PartMaster"],
  "modality": "SHOULD",
  "statement": "A receiver SHOULD primarily use model relationships and not DocumentType to locate information.",
  "language": "en",
  "context": "<surrounding paragraph for human review>"
}
```

Each rule is identified by `guideline_url + section_anchor + statement[:80]`
which is stable enough for citation. We do **not** assign synthetic IDs
because that would create a parallel identity scheme that gets out of
sync.

### 5.5 `relations.jsonl` — the class ↔ page graph

The wiki's published "Related Content" section already declares this
graph. We capture it explicitly so Claude Code can answer "which
guideline pages talk about DocumentVersion?" without reading every page.

```json
{"from": "DocumentVersion", "from_kind": "class",
 "to": "/specifications/vec/guidelines/key-concepts/general-structure/",
 "to_kind": "guideline", "source": "frontmatter"}

{"from": "/specifications/vec/guidelines/key-concepts/general-structure/", "from_kind": "guideline",
 "to": "DocumentType", "to_kind": "class", "source": "inline-shortcode"}
```

A third edge type carries the model graph itself, class → class:

```json
{"from": "DocumentVersion", "from_kind": "class",
 "to": "DocumentType", "to_kind": "class", "source": "attribute-type"}
```

Page edges are emitted in both directions; `attribute-type` edges are directed
only, since the reverse question ("who references DocumentType?") is a filter
on `to` and emitting both would only double the file. The current totals are
858 `attribute-type`, 690 `inline-shortcode` and 282 `frontmatter` edges.

Edges are typed by their source so we can later detect asymmetries (page
mentions class inline but front matter doesn't list it, or vice versa) —
this is itself a useful consistency check.

## 6. The skill

### 6.1 `SKILL.md`

```yaml
---
name: vec-wiki
description: |
  Use when researching, authoring, or checking consistency of content in
  the VEC ECAD wiki (prostep-ivip-e-V/vec). Triggers on questions about
  VEC model classes (PartMaster, DocumentVersion, PartVersion,
  Connection, Cavity, Wire, etc.), implementation guidelines, proposed
  wiki edits, or any discussion that references VEC concepts in German
  or English (e.g. Stecker, Leitung, Systemschaltplan). Also use when
  reviewing a discussion or change request to find affected pages.
---

# VEC Wiki Knowledge Skill

… (see the spec in section 6.2 below)
```

### 6.2 SKILL.md body — required behavior

The body documents the expected workflow. Three workflows must be
covered explicitly with worked examples:

1. **Affect analysis** ("what does this discussion affect?").
2. **Contradiction check** ("does this contradict existing rules?").
3. **Placement** ("where should this content live?").

For each, the SKILL.md must specify:
- Which JSONL file(s) to consult.
- A `jq` or `grep` query template.
- How to broaden the query when the first cut is empty.
- When to stop indexing and start reading full pages.

The general shape of the workflow is:

1. Extract concepts from the input (a discussion, a draft paragraph, a
   change request). Use `glossary.md` to translate German terms to VEC
   class names.
2. Query `concepts.jsonl` and `relations.jsonl` to get candidate pages.
3. Query `guidelines.jsonl` filtered by `scope_classes` to find
   potentially conflicting rules.
4. Read the candidate pages in full (the set is now small).
5. Classify each as **affected**, **contradicts**, **reinforces**,
   **adjacent**.
6. For placement: prefer extending an existing section over creating a
   new page; only propose a new page when no existing area is a clean
   fit. Use `content-conventions.md`.

### 6.3 `search-strategies.md`

Concrete recipes the skill points at. Each recipe is a small block of
shell that Claude Code can adapt. Examples:

```bash
# All pages mentioning DocumentType
jq -r 'select(.concept == "DocumentType") | .mentioned_in[].url' \
  .claude/index/concepts.jsonl

# All normative rules scoped to PartMaster or DocumentVersion
jq -c 'select(.scope_classes[] | IN("PartMaster","DocumentVersion"))' \
  .claude/index/guidelines.jsonl

# Pages whose front matter links a class but body does not (consistency)
jq -c 'select(
   (.linked_classes_frontmatter | length) > 0 and
   ((.linked_classes_frontmatter - .linked_classes_inline) | length) > 0
 )' .claude/index/pages.jsonl

# Find guideline pages in the "key-concepts" area
jq -c 'select(.kind=="guideline" and .area=="key-concepts")' \
  .claude/index/pages.jsonl
```

### 6.4 `content-conventions.md`

Captures the existing house style so authored content matches what is
already in the repo. Written against the actual pages; it documents:

- Front matter fields as they are actually used: `title`, `linktitle`,
  `type: specs`, `toc`, `authors`, `date`, `lastmod`, `draft`, `review`,
  `history`, `classes`, `menu` / `weight`.
- The `{{< vec-class Name >}}` shortcode form, plus `kbl-class`, `figure`
  and the `callout` percent-form shortcodes.
- The `history:` front-matter list (not a markdown table), with `issue`
  for legacy Jira keys and `ghIssue` for GitHub issue numbers.
- Section heading conventions ("Fundamentals", "Types of …", etc.).
- `review: true` as the under-review marker, and when to use it.
- Rules of thumb on when a topic earns its own page vs. a section in
  an existing page (rough heuristic: if it can be summarized in two
  paragraphs and is firmly inside an existing area, it's a section).

### 6.5 `cross-references.md`

Documents the linking model so authored content is consistent:

- Use `{{< vec-class … >}}` for every first occurrence of a class on
  a page; subsequent mentions in the same section may be plain text.
- When a page introduces a normative rule about a class, the class
  must appear in the front matter `classes:` list so the auto-generated
  "Related Content" picks it up.
- When pointing to another guideline, use the absolute URL form
  (`/specifications/vec/guidelines/…/…/`) — these are stable.
- Avoid linking to class attribute anchors; link to the class page
  and let the reader scroll. (Anchor stability is not guaranteed
  across XMI regenerations.)

### 6.6 `glossary.md`

Plain markdown table that the skill consults to translate German terms.
The seed list of seven entries has grown to 33, covering connectors,
wires, terminals, seals, topology, nets and schematic vocabulary. See
`.claude/skills/vec-wiki/glossary.md` for the current table.

## 7. Implementation phases

### Phase 7.1 — Discovery against the actual repo (½ day) — **done**

Findings, in the order the questions were asked:

1. **Class cross-linking front-matter field**: `classes:`, a YAML list of
   PascalCase names.
2. **Shortcode**: `{{< vec-class ClassName >}}`, angle-bracket form, class
   name resolved by slug and therefore case-insensitive. `{{< kbl-class … >}}`
   is the KBL counterpart. The percent form is not used.
3. **Status**: the front-matter flag `review: true`, not a body callout.
4. **v220 prose pages** use the same shortcode and front-matter pattern as
   the guidelines, so one parser handles both.
5. **Change history** is the front-matter `history:` list, not a markdown
   table — entries are `{date, description, issue | ghIssue}`.
6. **CI**: the repo already runs GitHub Actions from the repository root
   (`add-labels.yml`, `hugo.yml`, the latter doing `cd wiki`). The index
   workflow follows that pattern rather than introducing a new one. Note the
   repo also carries a legacy `.gitlab-ci.yml` under `wiki/`, which is not
   the live pipeline.

No separate `discovery-findings.md` was produced; the findings are folded
into this document and into `content-conventions.md`, which is where the
skill actually reads them.

### Phase 7.2 — Vocabulary extraction (1 day)

`build_index.py` step 1: parse `vec-2.2.0.mdxml`.

- Use `lxml` with the MagicDraw namespace map.
- Walk all `uml:Class` and `uml:Enumeration` elements; for each, capture
  name, owner, abstract flag, base classifier, attributes (with type
  and multiplicity), associations, and the documentation comment.
- Resolve `xmi:id` references to names so the JSONL is human-readable.
- Map each class name to its expected page URL using the existing
  generator's slug rule (lowercase, no separators, plus
  `/specifications/vec/v220/classes/`).

Output: `classes.jsonl`. Validate by spot-checking 10 random entries
against the published class pages.

### Phase 7.3 — Page indexing (1 day)

`build_index.py` step 2: walk `content/specifications/vec/`.

- Use `python-frontmatter` for YAML parsing.
- Detect `kind`:
  - under `…/v220/classes/…` → `class` (skip body parsing; use the
    XMI as truth)
  - under `…/v220/…` → `model-prose`
  - under `…/guidelines/…` → `guideline`
- For non-class pages: parse body to extract:
  - Inline `vec-class` shortcode invocations (regex against the
    confirmed shortcode form).
  - Internal links to other wiki pages.
  - GitHub issue numbers from the Change History table (regex
    `#(\d+)` or full issue URLs).
  - Headings (for the `headings` array).
- Compute `language` heuristically (it's almost certainly `en` for the
  whole VEC tree, but the field is there for future German content).

Output: `pages.jsonl`.

### Phase 7.4 — Derived indices (½ day)

`build_index.py` step 3: from `classes.jsonl` and `pages.jsonl`,
compute:

- `concepts.jsonl` (invert page → class mentions).
- `relations.jsonl` (one edge per source: frontmatter, inline,
  attribute-type).

Output: both JSONL files.

### Phase 7.5 — Rule extraction (1 day)

`build_index.py` step 4: extract candidate normative statements.

Approach:

1. Walk each guideline page section by section (split on `##`/`###`).
2. For each sentence in each section, check for RFC 2119 keywords
   (case-sensitive) or their German equivalents.
3. Compute `scope_classes` = classes mentioned in the same section
   (front matter classes for the page if the section has none of its
   own).
4. Capture `modality` (the strongest keyword present), the sentence,
   and ~200 chars of surrounding context.

Acknowledge the heuristic nature explicitly in `guidelines.jsonl` —
each entry can carry `extraction_confidence: heuristic` so future
work can replace this with hand-curated rules without breaking
consumers.

Output: `guidelines.jsonl`.

### Phase 7.6 — Skill files (½ day)

Author the SKILL.md and the four sub-files using the spec in section
6, with placeholders filled in from phase 7.1 findings.

### Phase 7.7 — End-to-end test on real cases (½ day)

Run the original example through the skill and at least three
additional past discussions (sourced from recent GitHub issues on
the repo). Cases to cover:

- The example from the prompt (model relationships vs. DocumentType).
- A purely model question (e.g. "is `documentNumber` mandatory?").
- A multilingual case (a German sentence about Stecker).
- A consistency check (a class mentioned in body but not in front
  matter).

For each, capture: was the answer correct? Were the cited pages the
right ones? Did Claude propose a sensible placement? Tune SKILL.md
and the indexer accordingly.

### Phase 7.8 — CI integration (¼ day)

On push to `main` and on PR, regenerate the indices and fail if the working
tree is dirty afterwards.

The workflow lives at **`.github/workflows/vec-wiki-index.yml` in the
repository root**, not under `wiki/`. GitHub Actions discovers workflows only
at the root; a file under `wiki/.github/workflows/` is committed, looks
correct, and never runs. Because the wiki is a subdirectory, the job sets
`defaults.run.working-directory: wiki` and filters on `wiki/`-prefixed paths —
the same shape the existing `hugo.yml` deploy workflow uses.

The staleness check prints the offending diff and a remediation hint rather
than failing bare, since a bare `git diff --exit-code` gives a maintainer no
idea what to do.

## 8. Total effort and order

Roughly 4–5 working days, sequential within phases but the SKILL.md
authoring (7.6) can run in parallel with rule extraction (7.5).

| Phase | Work | Dependency | State |
|---|---|---|---|
| 7.1 | Discovery in repo | — | done |
| 7.2 | Vocabulary from XMI | 7.1 | done |
| 7.3 | Page indexing | 7.1 | done |
| 7.4 | Derived indices | 7.2, 7.3 | done |
| 7.5 | Rule extraction | 7.3 | done |
| 7.6 | Skill files | 7.1 (parallel with 7.5) | done |
| 7.7 | E2E test | 7.4, 7.5, 7.6 | done |
| 7.8 | CI workflow | 7.7 | done |

## 9. Acceptance criteria

The skill is considered done for v1 when, against a freshly cloned
repo, Claude Code can reliably:

1. Given the example discussion in the original prompt, return:
   - At least the `general-structure` and `interface-behaviour`
     guidelines as affected.
   - The `DocumentType`, `DocumentVersion`, `PartVersion`,
     `Connection` classes as concepts in scope.
   - A concrete proposed placement (a new section in an existing
     guideline, with a justified alternative of a new page).
2. When asked "what classes are mentioned in the body of
   `<page>` but missing from its front matter linked classes?",
   produce a correct, deterministic answer.
3. When asked a German question ("Welche Regeln gibt es zur
   Suche von Stecker-Spezifikationen?"), translate via the glossary
   and answer against English content.
4. When asked to draft a new section, produce front matter and
   shortcode usage matching the conventions in the repo (verified by
   `hugo build` succeeding on the new file).

## 10. Resolved questions

- **Front matter field name** for class cross-linking: `classes:`, a
  front-matter YAML list. Not a data file, not a page-bundle convention.
- **Exact shortcode form**: `{{< vec-class DocumentVersion >}}` — angle
  brackets, unquoted, resolved by slug and therefore case-insensitive.
- **Deprecated classes** are **kept in the index, not excluded.** They are
  part of the model and questions about them are legitimate; hiding them
  would make the skill answer "no such class". Instead each deprecated class,
  attribute, association end and enumeration literal carries a `deprecated`
  object with `since` and `reason`, and `SKILL.md` instructs Claude to check
  it before authoring and to name the replacement given in `reason` rather
  than build new guidance on a deprecated element. Currently 9 classes and 7
  attributes are affected.
- **KBL coverage**: deferred to v2, as anticipated. `content/specifications/kbl/`
  is not walked and no KBL pages are indexed. The `kbl-class` shortcode *is*
  recognised by the page parser, so KBL mentions in VEC guideline prose are
  not silently lost — but there is no KBL vocabulary to resolve them against
  yet. Extending is cheap: a second vocabulary source plus widening the walk.
- **Generated vs. hand-edited class pages**: confirmed read-only. Class pages
  are regenerated from the XMI and any edit would be overwritten, so all
  authored changes go to model-prose or guideline pages. `cross-references.md`
  states this and `SKILL.md` repeats it under "Key facts for authoring".
- **Elements without a generated page** (new, found during 7.2): 11 of the 548
  model elements are diagram legends and MagicDraw report helpers with no
  class page. They are kept in `classes.jsonl` with
  `has_generated_page: false` and excluded from the derived indices. Keeping
  rather than dropping them means a genuinely new class that has not been
  regenerated yet stays visible instead of vanishing silently; the build
  prints the exclusion list on every run.

## 11. Risks and mitigations

| Risk | Mitigation |
|---|---|
| Heuristic rule extraction misses or fabricates normative statements | Keep `extraction_confidence: heuristic` flag; show extracted text alongside surrounding context in any answer; never let the skill claim a contradiction without quoting source |
| XMI schema changes between VEC versions | Vocabulary extractor pinned to v2.2.0; bump explicitly when v2.3.0 ships |
| Index drift (someone edits a page but doesn't rebuild) | CI check (phase 7.8); pre-commit hook as belt-and-braces |
| Class slug computation diverges from the actual generator | Every record records whether its page actually exists (`has_generated_page`), and the build prints the misses — divergence shows up as a growing exclusion list rather than as silent wrong URLs |
| XMI structural quirks silently produce wrong data (multiplicity nested under `xmi:Extension`, CSS preamble in comments) | Multiplicities are spot-checked against the generated class pages, which are produced by an independent generator from the same source; a mismatch means one of the two is wrong |
| German phrasing the glossary doesn't cover | Glossary is a markdown table — easy to extend; SKILL.md instructs Claude to surface unknown terms instead of guessing |
| Skill drift as wiki structure evolves | The skill is in-repo, so changes ride along with content PRs and get reviewed together |

## 12. After v1

Possible v2 extensions, in rough priority order:

1. **KBL coverage** — same indexer, additional vocabulary source.
2. **Curated rule IDs** — once `guidelines.jsonl` is in use, stable
   IDs can be back-filled into front matter and the indexer can
   prefer them over heuristics.
3. **Embedding-based fallback** — for cases where the inverted index
   misses (paraphrased terminology, cross-language). A standalone
   prototype exists on branch `wiki-indexer` (`wiki-index-tool/`,
   ChromaDB + sentence-transformers, generic over any markdown wiki).
   It is parked, not integrated. Layer on top, do
   not replace the deterministic index.
4. **Review-PR mode** — given a draft markdown file, Claude Code
   produces a review comment listing affected pages, contradictions,
   and missing front-matter links.
5. **Asymmetry report** — a CI artifact listing inconsistencies in
   the relations graph (frontmatter says X but body doesn't, or vice
   versa).
