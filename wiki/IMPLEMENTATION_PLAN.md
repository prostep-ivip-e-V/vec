---
title: "Implementation Plan: Claude Code Knowledge Skill for the ECAD Wiki"
status: draft
audience: maintainers of prostep-ivip-e-V/vec wiki
related_repo: https://github.com/prostep-ivip-e-V/vec
---

# Implementation Plan: Claude Code Knowledge Skill for the ECAD Wiki

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
  `content/specifications/vec/v220/classes/` are generated from it. There are
  ~600 classes (see the published class index). The plan must derive its
  vocabulary from the XMI, not from the markdown.
- **Hugo theme**: Wowchemy. Front matter is YAML, class pages are produced by
  a generator, prose pages (key-concepts, guidelines) are hand-edited.
- **Class cross-linking**: prose pages already declare related VEC classes in
  front matter. Inline links to a class use a Hugo shortcode of the form
  `{{< vec-class ClassName >}}` (or similar — the exact name to be confirmed
  against the repo's `layouts/shortcodes/`).
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
- **Existing change-tracking**: guideline pages carry a "Change History"
  table with GitHub issue links. New content should be authored in this same
  style.

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

## 5. The five indices

### 5.1 `classes.jsonl` — the source of truth (from XMI)

One line per UML class, extracted from `vec-2.2.0.mdxml`.

```json
{
  "name": "DocumentVersion",
  "qualified_name": "vec::pdm::DocumentVersion",
  "owner": "core",
  "is_abstract": false,
  "base_classifier": "ItemVersion",
  "derived_classifiers": [],
  "documentation": "A DocumentVersion is a unique identifier …",
  "attributes": [
    {"name": "documentNumber", "type": "String", "mult": "1", "doc": "…"},
    {"name": "documentType",   "type": "DocumentType", "mult": "0..1", "doc": "…"}
  ],
  "outgoing_relations": [
    {"role": "documentClassification", "type": "DocumentClassification",
     "mult": "0..*", "doc": "…"}
  ],
  "page_url": "/specifications/vec/v220/classes/documentversion/",
  "page_path": "content/specifications/vec/v220/classes/documentversion.md"
}
```

This file replaces any hand-curated vocabulary list. All other indices
reference it.

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

`linked_classes_frontmatter` comes from a YAML field (whichever the repo
already uses — to be confirmed during step 7.1).
`linked_classes_inline` comes from parsing the Hugo `{{< vec-class … >}}`
shortcode out of the body.

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
already in the repo. To be filled in by reading actual pages during
step 7.1; expected sections:

- Front matter required fields (`title`, `summary`, `date`, related
  classes field — exact name to be confirmed).
- The exact `vec-class` shortcode form (and any other shortcodes in
  use, e.g. callouts).
- "Change History" table format and where the GitHub issue link goes.
- Section heading conventions ("Fundamentals", "Types of …", etc.).
- Status markers ("Under Review", "Stable") and when to use them.
- Rules of thumb on when a topic earns its own page vs. a section in
  an existing page (rough heuristic: if it can be summarized in two
  paragraphs and is firmly inside an existing area, it's a section).

### 6.5 `cross-references.md`

Documents the linking model so authored content is consistent:

- Use `{{< vec-class … >}}` for every first occurrence of a class on
  a page; subsequent mentions in the same section may be plain text.
- When a page introduces a normative rule about a class, the class
  must appear in the front matter `linked_classes` field (whatever
  it's called) so the auto-generated "Related Content" picks it up.
- When pointing to another guideline, use the absolute URL form
  (`/specifications/vec/guidelines/…/…/`) — these are stable.
- Avoid linking to class attribute anchors; link to the class page
  and let the reader scroll. (Anchor stability is not guaranteed
  across XMI regenerations.)

### 6.6 `glossary.md`

Plain markdown table that the skill consults to translate German terms.
Seed entries (to be expanded):

| German | English | VEC class(es) | Notes |
|---|---|---|---|
| Stecker | Connector | `ConnectorHousingSpecification`, `PartVersion` (when component) | "Stecker" colloquially conflates housing and the whole component |
| Leitung | Wire | `Wire`, `WireSpecification` | |
| Systemschaltplan | System schematic | `NetSpecification`, `ConnectionSpecification`, `Connection` | |
| Kabelbaum | Wiring harness | (KBL/VEC top-level) | |
| Komponente | Component | `PartVersion`, `*Specification` | |
| Empfänger | Receiver | (process role, not a class) | |
| Sender | Sender | (process role, not a class) | |

## 7. Implementation phases

### Phase 7.1 — Discovery against the actual repo (½ day)

Before writing the indexer, clone the repo and inspect:

1. The exact YAML field used for class cross-linking in front matter
   (likely `linked_classes`, `vec_classes`, or similar).
2. The exact name of the `vec-class` shortcode (look in
   `themes/<theme>/layouts/shortcodes/` and
   `wiki/layouts/shortcodes/`).
3. Whether status (`under-review`, `stable`) is a front matter field
   or inferred from a Hugo callout in body.
4. Whether the v220 prose pages (e.g. `parts-documents-and-resources.md`)
   use the same shortcode/front-matter pattern as the guidelines.
5. The structure of the Change History table (Markdown table vs.
   shortcode).
6. Whether there is an existing CI workflow we should plug into.

Output: a short note `discovery-findings.md` updating the placeholders
in this plan.

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

GitHub Action: on push to `main` and on PR, regenerate the indices
and fail if the working tree is dirty afterwards. This is optional
for v1 but recommended.

```yaml
name: vec-wiki-index
on: [push, pull_request]
jobs:
  rebuild:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: actions/setup-python@v5
        with: { python-version: "3.12" }
      - run: pip install -r .claude/tools/requirements.txt
      - run: python .claude/tools/build_index.py
      - run: git diff --exit-code .claude/index/
```

## 8. Total effort and order

Roughly 4–5 working days, sequential within phases but the SKILL.md
authoring (7.6) can run in parallel with rule extraction (7.5).

| Phase | Work | Dependency |
|---|---|---|
| 7.1 | Discovery in repo | — |
| 7.2 | Vocabulary from XMI | 7.1 |
| 7.3 | Page indexing | 7.1 |
| 7.4 | Derived indices | 7.2, 7.3 |
| 7.5 | Rule extraction | 7.3 |
| 7.6 | Skill files | 7.1 (parallel with 7.5) |
| 7.7 | E2E test | 7.4, 7.5, 7.6 |
| 7.8 | CI workflow | 7.7 |

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

## 10. Open questions to resolve in Phase 7.1

- **Front matter field name** for class cross-linking. Inspect a few
  existing pages (the published HTML shows the related-content
  blocks come from somewhere — confirm whether they originate from a
  front-matter list, a Hugo data file, or a page-bundle convention).
- **Exact shortcode form**. `{{< vec-class DocumentVersion >}}`,
  `{{< vec-class "DocumentVersion" >}}`, `{{% vec-class %}}…{{% /vec-class %}}`?
  Inspect repo shortcodes.
- **Are deprecated classes excluded** from the class index? Some
  classes are flagged "Deprecated" — decide whether the skill should
  warn or refuse to add new content referencing them.
- **KBL coverage**: the `content/specifications/kbl/` tree exists.
  Defer to v2 unless the indexer is essentially the same with a
  different vocabulary source — in which case extending is cheap
  and worth doing.
- **Generated v.s. hand-edited class pages**: confirm that we should
  treat class pages as read-only references and never propose edits
  to them (they would be overwritten by the next XMI regeneration).
  All authored changes must go to model-prose or guideline pages.

## 11. Risks and mitigations

| Risk | Mitigation |
|---|---|
| Heuristic rule extraction misses or fabricates normative statements | Keep `extraction_confidence: heuristic` flag; show extracted text alongside surrounding context in any answer; never let the skill claim a contradiction without quoting source |
| XMI schema changes between VEC versions | Vocabulary extractor pinned to v2.2.0; bump explicitly when v2.3.0 ships |
| Index drift (someone edits a page but doesn't rebuild) | CI check (phase 7.8); pre-commit hook as belt-and-braces |
| Class slug computation diverges from the actual generator | Cross-check against the live class index URL list during phase 7.2 validation; if the generator's slug rule changes, the indexer must follow |
| German phrasing the glossary doesn't cover | Glossary is a markdown table — easy to extend; SKILL.md instructs Claude to surface unknown terms instead of guessing |
| Skill drift as wiki structure evolves | The skill is in-repo, so changes ride along with content PRs and get reviewed together |

## 12. After v1

Possible v2 extensions, in rough priority order:

1. **KBL coverage** — same indexer, additional vocabulary source.
2. **Curated rule IDs** — once `guidelines.jsonl` is in use, stable
   IDs can be back-filled into front matter and the indexer can
   prefer them over heuristics.
3. **Embedding-based fallback** — for cases where the inverted index
   misses (paraphrased terminology, cross-language). Layer on top, do
   not replace the deterministic index.
4. **Review-PR mode** — given a draft markdown file, Claude Code
   produces a review comment listing affected pages, contradictions,
   and missing front-matter links.
5. **Asymmetry report** — a CI artifact listing inconsistencies in
   the relations graph (frontmatter says X but body doesn't, or vice
   versa).
