# Phase 7.7 — End-to-End Test Results

Date: 2026-08-06
Index under test: `.claude/index/` as rebuilt by `.claude/tools/build_index.py`

Four cases, as specified in `IMPLEMENTATION_PLAN.md` §7.7. Case 1 was run
earlier and written up separately; cases 2–4 and acceptance criterion 4 are
recorded here. Three of the four surfaced defects, which were fixed and the
cases re-run.

---

## Case 1 — Affect analysis (model relationships vs. DocumentType)

**Result: pass.** Written up in full in `meeting-2026-03-19-analysis.md`.

Nine pages classified as affected / minor-update / adjacent / reinforces, with
a concrete action per page. Covers acceptance criterion 1: `general-structure`
and `interface-behaviour` both came back as affected, and the scope classes
included `DocumentVersion`, `DocumentType`, `PartVersion` and `Connection`.

---

## Case 2 — Pure model question: "is `documentNumber` mandatory?"

**Result: pass, after fixing a multiplicity bug.**

```bash
jq -r 'select(.name == "DocumentVersion") | .attributes[] | "\(.name)\t\(.type)\t\(.mult)"' \
  .claude/index/classes.jsonl
```

Answer: **yes** — `documentNumber` is `String [1]`. Together with
`documentVersion [1]` and `companyName [1]` (inherited from `ItemVersion`) it
forms the identifier triple.

The first run answered this **wrongly**. Every plain attribute in the index
carried multiplicity `0..1`, which would have made `documentNumber` look
optional. Cause: MagicDraw nests `lowerValue`/`upperValue` inside
`xmi:Extension/modelExtension` for plain attributes, while association ends
carry them as direct children; the extractor only looked at direct children
and fell through to its defaults.

Fixed, and now guarded: a spot-check script compares index multiplicities
against the generated class pages, which an independent generator produces
from the same XMI. 23 attributes across 12 randomly sampled classes, 0
mismatches.

Note for answering these questions: `attributes` and `outgoing_relations` are
**own-only**. `companyName` is not on `DocumentVersion`; it comes from
`ItemVersion` via `base_classifiers`. The generated class pages *do* show
inherited members, so index and page legitimately differ. This is now stated
in `SKILL.md` and `search-strategies.md`.

---

## Case 3 — German question

*"Welche Regeln gibt es zur Suche von Stecker-Spezifikationen?"*

**Result: pass on translation, partial on precision.**

The glossary resolved *Stecker* → `ConnectorHousingSpecification`, `PartVersion`
and *Spezifikation* → `Specification`, and the index returned 12 guideline
pages mentioning `ConnectorHousingSpecification`, with
`component-types/connectors/` the only `frontmatter+inline` hit — correctly the
most authoritative one.

The rule query is noisier. Filtering `guidelines.jsonl` on
`scope_classes ∋ Specification` pulls in packaging and interface-behaviour
rules that have nothing to do with connectors. Two causes, both inherent to
the heuristic:

1. `scope_classes` falls back to the page's front-matter classes when a
   section names none of its own, so a page declaring the abstract
   `Specification` tags all of its rules with it.
2. `Specification` is an abstract base with 55 direct subclasses, so it is a
   poor filter term.

**Guidance rather than a code change:** query the concrete class first and only
widen to the base class if that comes back empty — which is what
`search-strategies.md` already prescribes under "Broadening a search". No
change made; the noise is visible to the reader and the alternative (dropping
the front-matter fallback) would lose real rules.

---

## Case 4 — Consistency check (body vs. front matter)

**Result: pass, after fixing two defects. Also found two real content bugs.**

```bash
jq -r 'select(.kind=="guideline") | (.linked_classes_inline - .linked_classes_frontmatter) as $m
       | select(($m|length)>0) | "\($m|length)\t\(.url)"' .claude/index/pages.jsonl | sort -rn
```

Deterministic and correct. Two tool defects showed up first:

**Defect A — KBL and VEC vocabularies were pooled.** The shortcode regex
matched `vec-class` and `kbl-class` alike and dropped the distinction, so KBL
class names (`Connector_housing`, `Wire_Protection`, `Harness`, …) landed in
`linked_classes_inline` and were then reported as VEC classes missing from
front matter. On `product-definition/harness/` alone that was 31 spurious
entries out of 62. Fixed: `linked_kbl_classes_inline` is now a separate field.

**Defect B — class names were not canonicalised.** The shortcode resolves its
argument by slug, so pages write `veccontent`, `documentversion`,
`partversion`. The index preserved the raw spelling, so `veccontent` and
`VecContent` counted as two different concepts and every case-inconsistent
mention became a bogus front-matter gap. 32 mentions affected. Fixed: page
class references and `scope_classes` are canonicalised to the model's casing.

After both fixes `product-definition/harness/` reports 29 genuinely
undeclared classes rather than 62.

**Two genuine wiki bugs found and fixed:**

| Page | Was | Now | Evidence |
|---|---|---|---|
| `topology/placement-and-dimensions/` | `PlavceableElementRole` | `PlaceableElementRole` | Typo; the corrected name exists in the model |
| `product-definition/coupling/` | `Coupling` | `CouplingPoint` | No `Coupling` class exists; the body uses `{{< vec-class CouplingPoint >}}` six times and never declared it |

Both entries silently linked to nothing, so the bidirectional Related Content
graph was broken in both directions: the guideline pages showed a dead related
class, and `CouplingPoint` / `PlaceableElementRole` did not list the guideline
that documents them. After the fix, `hugo` renders the class link on each
guideline page and the guideline link on each class page.

The build now reports any front-matter class that resolves to no model element
as a `WARNING`, so this cannot regress silently. The current tree produces
none.

---

## Acceptance criterion 4 — authored content builds

**Result: pass.**

A throwaway page was drafted strictly from `content-conventions.md` — full
front matter (`type: specs`, `history:` with `ghIssue`, `classes:`, `menu`/
`weight`, `review: true`), `{{< vec-class … >}}` for classes, a percent-form
callout, and an absolute-URL guideline link — and built with the pinned
Hugo 0.120.3 extended.

- Site builds clean: 7828 pages, no errors.
- All four `vec-class` shortcodes resolved to correct class-page URLs.
  Enumerations render their link text wrapped in `<code>`, classes render it
  plain — cosmetic, but worth knowing when grepping rendered output.
- The callout rendered, and the `classes:` list fed the "Related Content"
  block as expected.

The probe page was deleted afterwards; it is not part of the branch.

Note for anyone reproducing this: the wiki uses Hugo modules, so `hugo`
**requires the `go` binary on PATH**. Without it the build fails with
`failed to download modules: binary with name "go" not found` — and under
`--quiet` that failure prints nothing at all and is only visible in the exit
code. Check the exit code, not the output.

---

## Summary

| Case | Result | Defect found |
|---|---|---|
| 1 — affect analysis | pass | — |
| 2 — model question | pass after fix | multiplicity always `0..1` |
| 3 — German question | pass | none (precision limit documented) |
| 4 — consistency check | pass after fix | KBL/VEC pooling; class-name casing |
| AC4 — authored content builds | pass | — |

Index totals after all fixes: 548 classes (537 published), 715 pages,
537 concepts, 1812 relation edges, 186 normative statements. The build is
deterministic — three consecutive runs produce byte-identical output.

### Known heuristic limits, accepted

Rule extraction still produces false positives that no amount of tuning will
fully remove, e.g. `"This *can* (not a must) be expressed …"` is tagged `MUST`
because the keyword matcher sees the word inside a parenthetical, and
`"The following figure shall illustrate this."` is narrative rather than
normative. This is why every record carries `extraction_confidence: heuristic`
and why `SKILL.md` requires quoting the source before claiming a
contradiction.
