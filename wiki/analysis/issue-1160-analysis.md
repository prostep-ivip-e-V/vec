# Analysis of Discussion / Change Proposal
---

## 1. Agreed Semantics

- A serialised VEC (file, REST response, etc.) is a **snapshot / baseline** of a model.
  A VEC is communication/exchange, not data management, and therefore always represents a
  specific, fixed state.
- The cut into `DocumentVersion`s is **process-specific** and reflects responsibilities and
  approvals. The content of a `DocumentVersion` is the scope of information that the
  process/PDM wants to track and annotate with metadata.
- The cut of `DocumentVersion`s does **not** represent structural boundaries in the model
  (unlike `Specification`s). `DocumentVersion`s are **building blocks in an
  interface/communication architecture** — information units exchanged between process
  partners, with a scope agreed within the process. There are typical scopes for typical
  processes (what is a system schematic, what is a harness description), but also strong
  deviations.

---

## 2. Rules to be Written

### R1 — No prescribed `Specification` content

Implementation Guidelines **cannot prescribe** which `Specification`s must be present in a
VEC. Only *typical* scopes for certain use cases may be described, and these always carry
optionality ("For Build-To-Print it is recommended that a `HarnessDescription` contains X
and Y — but significant portions may be absent").

**Scope:** this applies to *`Specification` content*, not to `DocumentType` assignment. The
model itself prescribes `DocumentType` in at least one place — the `ComponentDrawing`
literal states that a `DocumentVersion` describing a component with `Specification`s *shall*
have `DocumentType = PartMaster`. R1 must not be phrased so broadly that it invalidates
existing normative statements about `DocumentType`.

**Wording source:** `product-definition/component-description#content-requirements` already
states R1 almost verbatim; reuse its phrasing and cross-reference it instead of inventing
new wording. Use the term **"principle of optionality"**, which is already established in
`product-definition/component-instances#instantiation-with-roles`.

### R2 — `DocumentVersion`s are not a reference boundary

`DocumentVersion`s do **not** form a boundary for references (e.g. master data, harness →
system schematic). The rule must state the two cases separately:

- **Within one VEC file:** cross-`DocumentVersion` references are unproblematic — they are
  ordinary XML `IDREF`s.
- **Across VEC files:** an `IDREF` cannot span the file boundary. Resolution runs over PDM
  identity (`PartVersion` / `DocumentVersion` numbers), which is what
  `general/partitioning-sizing-packaging` rule 2 already assumes. That rule must be
  cross-referenced (`relref`) so the two are read together.

Producing a VEC whose cross-references resolve requires that the file was generated with
appropriate "intelligence" on the sender side.

### R3 — Receivers navigate the model, not the document structure

A data receiver shall find information **primarily via model relationships**, not by
searching for `DocumentType`s or by expecting a specific `DocumentVersion` structure.

Justification to be given in the guideline text:

- `DocumentVersion.documentType` has multiplicity `0..1` — it is **optional**, so a receiver
  keying off `DocumentType` fails on perfectly valid VECs.
- `DocumentType` is an `OpenEnumeration` — a receiver cannot enumerate the value space.

The navigation recipes are in [section 3](#3-navigation-recipes).

### R4 — What qualifies as a `HarnessDescription`

Everything that in the broadest sense **describes a harness** — the physical product,
regardless of informational completeness — is a `HarnessDescription`, as opposed to virtual
artefacts like architecture, system schematic or master data.

- **Informational completeness is not a criterion.**
- The dividing line is **physical product vs. virtual artefact**.
- The other harness-related literals (`WiringDescription`, `InstallationDescription`,
  `ManufacturingDescription`, `GeometryModel*`) are **not more specific kinds of harness
  description**. They denote different views, abstraction levels or reference targets and
  do not take precedence over `HarnessDescription`. See [section 4](#4-model-change-proposal-documenttype-literals)
  for the documentation changes that make this explicit in the model.

### R5 — `_DigitalRepresentationIndex_` also works towards a target dataset

`key-concepts/digital-change-tracking` currently covers only the "splitting a source
document" case (one source, multiple digital representations). Add the inverse scenario:

> A `DocumentVersion` with a known target identity (number/version) exists. Multiple
> processes/tools each contribute a partial snippet of it. The
> `_DigitalRepresentationIndex_` signals which partial state has been delivered.

This section is **explanatory, not normative**: the existing `SHALL` at `#when-to-modify`
("the `_DigitalRepresentationIndex_` shall be different, whenever the payload content … is
different") already covers the new case mechanically. Do not restate the rule at a
different modality.

**Relation to `compliance-tests` TC-0005** (*"Having multiple `DocumentVersion` with the
same `documentNumber` is suspicious, even when the `documentVersion` is different"*):
**TC-0005 remains valid and unchanged.** Merging contributions is the responsibility of a
system, not of the exchange format, and there is a state before and after the merge:

- *Before the merge* the contributions are individual `DocumentVersion`s that are not yet
  related to each other. There is therefore no reason to put them into a single VEC file.
- *After the merge* there is logically **one** `DocumentVersion` — the merged target
  content — with a new change index.

Consequently, a VEC file carrying the same `documentNumber` several times is suspicious and
warrants a closer look at the real reason. The new section must be written so that it does
not suggest bundling unmerged contributions into one file.

### R6 — Preserving the `DocumentVersion` structure on merge

When data from multiple VEC files is **aggregated** (content copied in for traceability),
the `DocumentVersion` structure shall be preserved. The rule already exists at full `SHALL`
modality in `key-concepts/general-structure` ("Combination and Reuse of Documents"):
*"In order to preserve this traceability along the process, the assignment of information
pieces to its original `DocumentVersion` shall remain unchanged."* Two things are missing:

1. It is written for the *component master data* example only and is never generalised to
   "merging content from multiple VEC files".
2. It needs a **carve-out for semantic merges**. `elog-layers/system-schematic` mandates the
   opposite for partial systems: when partial systems are combined, matching open links are
   resolved and the `OpenLink` `ComponentNode`s are removed. The result is new content, not
   a structure-preserving union. Without the carve-out the two guidelines contradict each
   other; `elog-layers/system-schematic` should be linked as the worked example.

### R7 — Ownership of "VEC is a snapshot, not a database"

The statement stays where it is today — `general/interface-behaviour#background`
(*"The VEC is not intended to be a file-based database…"*). `key-concepts/general-structure`
references it rather than duplicating it.

---

## 3. Navigation Recipes

These are the traversals that the new navigation section must document. All are verified
against the VEC 2.2.0 model.

| Goal | Correct traversal | Note |
|---|---|---|
| Component master data for a `PartVersion` | Collect all `PartOrUsageRelatedSpecification`s whose `describedPart` includes the `PartVersion` — the **inverse** of `describedPart` | `PartVersion` has no navigable association to its specifications; its only outgoing relation is `project → Project [0..1]`. Do not imply a forward traversal. |
| Information for an instance | `PartUsage.partOrUsageRelatedSpecification → PartOrUsageRelatedSpecification [0..*]` and `OccurrenceOrUsage.role → Role [0..*]` (composite) — **forward** | Established by the `SHALL` in `product-definition/component-instances#relationship-to-part-master-data`. |
| System-schematic connection for a wire | `WireElementReference.connection → Connection [0..*]`, with `WireElementReference.referencedWireElement → WireElement` for the part-level link | There is **no class named `Wire`** in VEC 2.2.0; the relevant classes are `WireElement`, `WireElementReference`, `WireSpecification`. |
| Process metadata for an element | Navigate **up the containment hierarchy** to the owning `DocumentVersion` | `DocumentVersion.specification → Specification [0..*]` is a composite aggregation, so the `DocumentVersion` is the XML parent element and is always reachable. |

Both master-data recipes must be given: implementers applying the `PartVersion` recipe to a
`PartUsage` (or vice versa) will get nothing.

---

## 4. Model Change Proposal: `DocumentType` Literals

`WiringDescription`, `InstallationDescription` and `ManufacturingDescription` currently have
**no documentation at all** in the model, which is what makes them read like specialisations
of `HarnessDescription`. Proposed documentation:

**`WiringDescription`**

> Documents of this type contain an abstract description of the electrical connectivity
> enriched with physical properties (e.g. conductor cross sections, colors, wire types).
> It is located between the `SystemSchematic` and the `HarnessDescription`: the content is
> not yet associated with a specific wiring harness, so it contains no routing / topology,
> no modularization and no geometric variance.

**`InstallationDescription`**

> Documents of this type describe how a wiring harness can be installed in the target
> product (e.g. a vehicle). This is normally information additional to the actual harness
> description. An `InstallationDescription` may contain the complete harness description,
> but this is not required.

**`ManufacturingDescription`**

> Documents of this type describe a wiring harness from a manufacturing point of view. In
> many cases this is an orthogonal view on the harness (MBOM) together with a bill of labour
> / bill of process. A `ManufacturingDescription` may contain the complete harness
> description, but this is not required.

**`GeometryModel`, `GeometryModelSimplified`, `GeometryModelOccurrence`** — the existing
documentation is correct; sharpen the typical usage so it cannot be read as a harness
description:

> `GeometryModel*` documents represent 3D models / views. They are normally used for
> components (e.g. connectors) and not for the harness itself, and they are normally
> external references to the actual 3D model file (e.g. JT, STEP, CATPart).

**`DocumentType` (class documentation)** — add a sentence stating that the literals are not
a specialisation hierarchy: they denote different views and scopes on the described subject,
and a more detailed literal does not supersede a broader one.

---

## 5. Page-by-Page Actions

### 5.1 `key-concepts/general-structure` — **affected**

| What is there now | What needs to change |
|---|---|
| Callout (lines 100–103): *"certain best practices and minimal content can be defined"* | "minimal content" reads like a hard floor; R1 allows only "typical scopes with optionality". Rephrase using the `product-definition/component-description#content-requirements` wording and cross-reference it. |
| "Combination and Reuse of Documents" (heading line 160, body to line 199) — contains the `SHALL` at lines 168–170 | **Generalise** it from the component-master-data example to "merging content from multiple VEC files", and **add the semantic-merge carve-out** (R6). The modality is already correct — do not "strengthen" it. |
| No statement about cross-`DocumentVersion` references | Add R2, with the intra-file / inter-file split, and `relref` `general/partitioning-sizing-packaging` rule 2. |
| No framing of VEC as snapshot vs. data management | Add the framing by **cross-referencing** `general/interface-behaviour#background` (R7); do not duplicate the statement. |
| "Content from mixed Sources" (lines 201–214) | Already covers the merge / structure-preservation case. Its "Separate DocumentVersions per Source" bullet is the natural anchor for the generalised R6 rule; align wording. |
| Front matter `classes:` lists `VecContent, DocumentVersion, PartVersion, DocumentType, PartOrUsageRelatedSpecification, Specification` | No change — coverage is complete for the proposed edits. |

### 5.2 `key-concepts/digital-change-tracking` — **affected**

- Add a `###` section **"Incremental / Target-Dataset Use"** under
  `## Application of the _DigitalRepresentationIndex_`, after "When to Modify", per R5:
  a target `DocumentVersion` has a known identity, generating systems produce partial
  contributions, and the `_DigitalRepresentationIndex_` changes whenever the contribution
  changes. Write it as an additional scenario, not as a new rule.
- State explicitly that unmerged contributions live in separate VEC files and that the
  merged result is a single `DocumentVersion` with a new change index, so that the section
  does not collide with TC-0005 (R5).
- The page has **no `classes:` front matter**. Per `cross-references.md`, a page carrying
  `MUST`/`SHALL` statements about a class must declare it — add `classes: [DocumentVersion]`.

### 5.3 `general/interface-behaviour` — **affected**

The page covers receiver tolerance (`#content-of-a-vec`) but not *how* a receiver should
locate information. Add a section **"Navigating Information in a VEC"**:

- Navigate via model relationships, not via `DocumentType` lookup or expected
  `DocumentVersion` structure; justify with `documentType` being `0..1` and an
  `OpenEnumeration` (R3).
- The four recipes from [section 3](#3-navigation-recipes), cross-linking
  `product-definition/component-instances` for the instance case.

Further:

- Front matter `classes:` currently lists only `VecContent, DocumentVersion, PartVersion`.
  Add `DocumentType`, `Specification`, `PartOrUsageRelatedSpecification`, `PartUsage`,
  `WireElementReference`, `Connection`.
- `#traceability-scenarios` already cross-references
  `general-structure#combination-and-reuse-of-documents`; keep that link consistent with the
  generalised R6 rule.
- The page keeps ownership of the "VEC is not a file-based database" statement (R7).

### 5.4 `product-definition/_index.md` — **minor update**

- Line 44: *"A single `DocumentVersion` … containing **all** information specific to the
  wiring harness"* — "all" can be misread as a completeness requirement. Soften to "the
  information specific to the wiring harness". (The second "_all_" on that line is about the
  150 % approach and is fine — do not touch it.)
- Add the `HarnessDescription` definition from R4 as an explicit definitional statement:
  completeness is not a criterion; the axis is physical product vs. virtual artefact; the
  other harness-related literals are different views, not more specific alternatives.
- Front matter is `classes: null`. Populate it with `DocumentVersion`, `PartVersion`,
  `Specification`, `PartOrUsageRelatedSpecification` and `DocumentType`.
- The existing callout (lines 52–54, "not a hard requirement nor exhaustive") and the
  partial/evolving-description paragraph at line 56 are consistent with R1 — keep.

### 5.5 `product-definition/component-description` — **minor update**

- Line 83 says a part master document *"can be recognised with the `DocumentType` =
  `PartMaster`"* — a `DocumentType`-based recognition recipe, which is exactly what R3 tells
  receivers not to rely on. Reword to "is normally marked with", and point to the new
  navigation section for the robust route.
- `#content-requirements` (lines 99–103) is the **precedent text** for R1 and for the
  `general-structure` callout rewrite — cite and reuse it.

### 5.6 `compliance-tests` — **no change**

TC-0005 stays as it is (R5). Ensure the new `digital-change-tracking` section is written so
that it does not produce the shape TC-0005 flags.

### 5.7 `elog-layers/system-schematic` — **no change, but must be carved out**

Lines 144 and 153–154 mandate that when partial systems are merged, matching open links are
resolved and the `OpenLink` `ComponentNode`s are removed. That is a structure-*changing*
merge. No edit here, but the R6 rule in `general-structure` must exclude semantic merges of
this kind and link here as the worked example.

### 5.8 `general/partitioning-sizing-packaging` — **no change, cross-reference required**

Rule 2 (line 49) states that elements with *"no relationships between each other (except
reference base on `PartVersion`s and `DocumentVersion`s)"* shall be placed in separate files.
That parenthesis is the inter-file reference mechanism R2 relies on. `general-structure`
must `relref` this rule.

### 5.9 `product-definition/component-instances` — **no change, must be cited**

- `#instantiation-with-roles` supplies the established term **"principle of optionality"** —
  use it in the new text instead of coining a new one.
- `#relationship-to-part-master-data` carries the `SHALL` establishing the forward navigation
  for instances — cite it from `general/interface-behaviour`.

### 5.10 `product-definition/harness` (KBL/VEC Mapping) — **no change**

The mandatory `DocumentType = PartMaster` / `HarnessDescription` statements (lines 111 and
113) are valid within the KBL→VEC mapping scope and do not contradict the receiver-side
rules. Optional editorial insurance: line 111 is a bare `must` with no scoping words in the
sentence itself — a one-clause scoping addition ("for this mapping, …") prevents it from
reading as a contradiction next to the new `interface-behaviour` rule.

### 5.11 Pages that reinforce the results — **no change**

- `elog-layers/_index.md` — the callout (lines 48–52) already states that process documents
  need not correspond to the layered structure one hundred percent and that this is an
  intended feature. Good citation source for the new `general-structure` text.
- `key-concepts/external-references` — defines the metadata-only `DocumentVersion` and the
  mechanisms for linking model elements to external documents. Line 67 (*"even though both
  information are contained in the same VEC-file, from the perspective of a versioning
  mechanism they are clearly separated"*) states the "`DocumentVersion` is a versioning unit,
  not a structural boundary" point from the other side — worth citing in 5.1.
- `pdm-information` — correctly describes the PDM metadata role of `DocumentVersion`
  (title block / ISO 7200). The framing "`DocumentVersion` reflects responsibilities and
  approvals" is the motivation for this page, not a change to it. (No `classes:` front
  matter — separate housekeeping issue.)
- `product-definition/composite-parts`, `product-definition/coupling`,
  `elog-layers/coupling-devices`, `elog-layers/wiring`, `topology/requirements`,
  `general/xml-xsd` — their `DocumentVersion` mentions are incidental (containment context
  or file-partitioning examples); no rule touched.

### 5.12 Housekeeping

The `vec-wiki` skill's `glossary.md` maps "Leitung" to a class `Wire`, which does not exist
in VEC 2.2.0. Correct it to `WireElement` / `WireSpecification`.

---

## 6. Summary

| Page | Status | Action |
|---|---|---|
| `key-concepts/general-structure` | **affected** | Cross-reference the VEC-as-snapshot statement (R7); add the cross-`DocumentVersion` reference rule with intra-/inter-file split (R2); generalise the existing `SHALL` on `DocumentVersion`-structure preservation and add the semantic-merge carve-out (R6); soften "minimal content" using the `component-description` wording (R1) |
| `key-concepts/digital-change-tracking` | **affected** | Add the target-dataset / partial-contribution section, explanatory not normative (R5); state the one-`DocumentVersion`-after-merge rule so TC-0005 is not contradicted; add `classes: [DocumentVersion]` |
| `general/interface-behaviour` | **affected** | Add "Navigating Information in a VEC" with the four traversals from section 3 (R3); justify with `documentType` `0..1` + `OpenEnumeration`; extend `classes:` |
| `product-definition/_index.md` | **minor update** | Soften "all information" on line 44; add the `HarnessDescription` definition (R4); populate `classes:` (currently `null`) |
| `product-definition/component-description` | **minor update** | Reword "can be recognised with the `DocumentType` = `PartMaster`"; cite `#content-requirements` as the precedent for R1 |
| VEC model — `DocumentType` literals | **model change** | Document `WiringDescription`, `InstallationDescription`, `ManufacturingDescription`; sharpen `GeometryModel*`; add the "not a specialisation hierarchy" note to the class documentation (section 4) |
| `compliance-tests` | no change | TC-0005 stays valid and unchanged |
| `elog-layers/system-schematic` | no change | Must be carved out of R6 and linked as the worked example |
| `general/partitioning-sizing-packaging` | no change | Must be `relref`'d from `general-structure` for the inter-file reference case |
| `product-definition/component-instances` | no change | Supplies "principle of optionality" and the forward-navigation `SHALL`; cite from `interface-behaviour` |
| `product-definition/harness` | no change | KBL-mapping scope, internally consistent (optional scoping clause on line 111) |
| `elog-layers/_index.md`, `key-concepts/external-references`, `pdm-information` | no change | Reinforcing / adjacent; cite where useful |
| `composite-parts`, `coupling`, `coupling-devices`, `wiring`, `topology/requirements`, `general/xml-xsd` | no change | Checked and cleared |
| `vec-wiki` skill `glossary.md` | housekeeping | Replace the non-existent `Wire` class with `WireElement` / `WireSpecification` |
