# Meeting 2026-03-19 — VEC DocumentVersion Semantics: Analysis

> **Goal:** Write a new Implementation Guideline summarising the meeting results;
> audit existing guidelines for consistency.

---

## Translation of the Discussion

- A serialised VEC (file, REST response, etc.) is a **snapshot / baseline** of a model.
  A VEC file is not data management — it is communication/exchange, and therefore always
  represents a specific, fixed state.
- The cut into `DocumentVersion`s is **process-specific** and reflects responsibilities
  and approvals. The content of a `DocumentVersion` represents a scope of information
  that the process/PDM wants to track and annotate with metadata.
- The cut of `DocumentVersion`s does **not** represent structural boundaries in the model
  (unlike `Specification`s). Instead they are **building blocks in an
  interface/communication architecture** — information units exchanged between process
  partners/systems with a scope agreed upon within the process. (cf. what is a system
  schematic, what is a harness description — there are typical scopes in different
  processes, but also strong deviations.)
- **Consequences:**
  1. VEC / Implementation Guidelines **cannot prescribe** which `Specification`s must be
     in a VEC. Only "typical" scopes for certain use cases may be described — but these
     always carry optionality. ("For Build-To-Print it is recommended that a
     `HarnessDescription` contains X and Y — but significant portions may be absent.")
  2. `DocumentVersion`s do **not** form a boundary for references (e.g. master data,
     harness → system schematic). This generally requires that the VEC was produced with
     appropriate "intelligence".
  3. A data receiver shall find information **primarily via model relationships**, not by
     searching for `DocumentType`s or expecting specific `DocumentVersion` structures.
     Examples:
     - Finding component info (e.g. a connector): navigate from the relevant
       `PartVersion`s to their describing `Specification`s — regardless of which
       `DocumentVersion` contains them.
     - Finding system-schematic connections for wires: standard traversal is wire →
       `Connection`, regardless of which document it lives in.
     - Navigation to `DocumentVersion` only becomes relevant when **metadata** for a
       specific information element is needed — by navigating up the hierarchy.
  4. Everything that in the broadest sense **describes a harness** (the physical product,
     regardless of informational completeness) is a `HarnessDescription` — as opposed to
     virtual artefacts like architecture, system schematic, or master data.
  5. The page `key-concepts/digital-change-tracking` should be extended:
     `_DigitalRepresentationIndex_` is not only for splitting a source dataset — it can
     also be used to work **towards a target dataset** (a complete harness description has
     a known number; different processes each deliver only a partial snippet of it).
  6. When data from multiple VEC files is **merged**, the `DocumentVersion` structure
     should generally be preserved.

---

## Affected Pages

### 1. `key-concepts/general-structure` — AFFECTED (several points)

| What is there now | What needs to change |
|---|---|
| Callout (line 100–103): *"certain best practices and minimal content can be defined"* | "minimal content" reads like a hard floor; discussion says only "typical scopes with optionality" — rephrase to avoid implying a hard minimum |
| "Combination and Reuse" section (lines 162–199) says copies of component `DocumentVersion`s are placed beside the harness DV in the target VEC | Strengthen to an **explicit rule**: when content from multiple VEC files is merged, the originating `DocumentVersion` structure shall be preserved |
| No statement about cross-`DocumentVersion` references | Add explicit statement that `DocumentVersion`s do **not** form a boundary for references (cross-DV model links are valid) |
| No framing of VEC as snapshot vs. data management | Add an introductory sentence framing a serialised VEC as a snapshot/exchange artefact, not a persistent database |
| "Content from mixed Sources" section (lines 201–215) added in gh-956 — good | Already covers the merge/structure preservation case; cross-check wording to ensure it aligns with the new explicit rule above |

### 2. `key-concepts/digital-change-tracking` — AFFECTED (explicitly requested)

The existing page covers only the **"splitting a source document"** use case (one source,
multiple digital representations). The discussion requests adding the inverse:

> A `DocumentVersion` with a known target identity (number/version) exists. Multiple
> processes/tools each contribute a partial snippet. The `_DigitalRepresentationIndex_`
> signals which partial state has been delivered.

New section to add (after "When to Modify" or as a new sub-heading under "Application"):

- **"Incremental / Target-Dataset Use"** — a target `DocumentVersion` has a known
  identity; generating systems produce partial contributions; `_DigitalRepresentationIndex_`
  changes whenever the contribution changes.

### 3. `general/interface-behaviour` — AFFECTED (new guideline missing entirely)

The page already covers receiver tolerance (accept any valid VEC, ignore excess, may
reject insufficient). It does **not** address *how* a receiver should locate information.
A new section is needed:

> **"Navigating Information in a VEC"** (or similar)
> - Navigate via **model relationships** (`PartVersion` → `Specification`), not via
>   `DocumentType` lookup or expected `DocumentVersion` structure.
> - Finding component information: start from the relevant `PartVersion`; follow to its
>   `PartOrUsageRelatedSpecification`s — regardless of which `DocumentVersion` contains
>   them.
> - Finding system-schematic connections for a wire: traverse wire → `Connection`
>   directly — regardless of which document holds the `ConnectionSpecification`.
> - Navigate up to `DocumentVersion` only when **process metadata** (approval, version,
>   provenance) for a specific element is needed.

### 4. `product-definition/_index.md` — MINOR UPDATE

The page already has a strong callout (lines 52–57) noting the specification list is "not
a hard requirement nor exhaustive" and that early-phase descriptions may be partial.
This is **consistent** with the discussion.

Two small gaps:

- Line 44: *"A single `DocumentVersion` … containing **all** information specific to the
  wiring harness"* — "all" could be misread as a completeness requirement. Soften to
  "the information specific to the wiring harness" or add a qualifier.
- The explicit definitional statement **"everything that broadly describes the physical
  harness product (regardless of completeness) is a `HarnessDescription`"** is implicit
  but not stated as a definition. Adding it explicitly answers the practical question:
  "what qualifies as `HarnessDescription` vs. `SystemSchematic` vs. `MasterData`?"

### 5. `product-definition/harness` (KBL/VEC Mapping) — ADJACENT

Scoped to KBL→VEC mapping. The mandatory `DocumentType=PartMaster`/`HarnessDescription`
statements (lines 111–113) are valid within that mapping context and do not contradict
the discussion (which is about general receiver behaviour, not about what a converter must
produce from a KBL source). **No change required.**

### 6. `elog-layers/_index.md` — REINFORCES (no change needed)

The existing callout (lines 49–53) already says: *"Many processes define documents similar
to this layered structure… but do not correspond to it one hundred percent. This is
perfectly valid and an intended feature of the VEC."* This directly supports the
discussion's point about process-specific cuts and optionality.

### 7. `pdm-information` — ADJACENT (no change needed)

Correctly describes the PDM metadata role of `DocumentVersion`. The discussion's framing
("DocumentVersion reflects responsibilities and approvals") is the motivation for this
page, not a change to it.

### 8. `general/partitioning-sizing-packaging` — ADJACENT (no change needed)

Covers splitting/packaging decisions. The merge/preservation discussion belongs in
`general-structure`, not here.

### 9. `elog-layers/system-schematic` — ADJACENT (no change needed)

The "Partial Systems" section already handles partial `ConnectionSpecification`s and
merging partial systems. The discussion's example (wire → `Connection` traversal) is
consistent with this page's approach.

---

## Summary

| Page | Status | Key action |
|---|---|---|
| `key-concepts/general-structure` | **affected** | Add VEC-as-snapshot framing; add cross-DV reference rule; strengthen merge/preserve-structure rule; soften "minimal content" wording |
| `key-concepts/digital-change-tracking` | **affected** | Add new section for "target-dataset / partial contribution" use of `_DigitalRepresentationIndex_` |
| `general/interface-behaviour` | **affected** | Add new section: navigate via model relationships, not `DocumentType` lookups; include connector and connection examples |
| `product-definition/_index.md` | **minor update** | Soften "all information"; add explicit definitional statement for what qualifies as `HarnessDescription` |
| `product-definition/harness` | adjacent | No change — KBL-mapping scope, internally consistent |
| `elog-layers/_index.md` | reinforces | No change — existing callout already supports discussion conclusions |
| `pdm-information` | adjacent | No change |
| `general/partitioning-sizing-packaging` | adjacent | No change |
| `elog-layers/system-schematic` | adjacent | No change |
