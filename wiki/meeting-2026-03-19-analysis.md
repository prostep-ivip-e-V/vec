# Meeting 2026-03-19 — VEC DocumentVersion Semantics: Analysis

> **Goal:** Write a new Implementation Guideline summarising the meeting results;
> audit existing guidelines for consistency.
>
> **Revision 2 (2026-08-07):** Re-verified against the VEC 2.2.0 model index and
> against the full text of every candidate page. Corrections and additions are
> marked. See [Verification Notes](#verification-notes-revision-2) for what
> changed and why.

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

     > **Scope qualifier (added rev. 2):** this applies to *`Specification` content*, not
     > to `DocumentType` assignment. The model itself already prescribes `DocumentType`
     > in at least one place — the `ComponentDrawing` literal states that a
     > `DocumentVersion` describing a component with `Specification`s *shall* have
     > `DocumentType = PartMaster`. Do not phrase consequence 1 so broadly that it
     > invalidates existing normative statements about `DocumentType`.
  2. `DocumentVersion`s do **not** form a boundary for references (e.g. master data,
     harness → system schematic). This generally requires that the VEC was produced with
     appropriate "intelligence".

     > **Scope qualifier (added rev. 2):** cross-`DocumentVersion` references are
     > unproblematic **within one VEC file**, where they are ordinary XML `IDREF`s.
     > **Across VEC files** an `IDREF` cannot span the file boundary — resolution then
     > runs over PDM identity (`PartVersion` / `DocumentVersion` numbers), which is
     > exactly what `general/partitioning-sizing-packaging` rule 2 already assumes. The
     > new rule must state the intra-file and inter-file case separately, otherwise it
     > reads as a promise the XML serialisation cannot keep.
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

     > **Model support (added rev. 2):** the model backs this conclusion more strongly
     > than the meeting notes claim. `DocumentVersion.documentType` has multiplicity
     > `0..1` — it is **optional**, so a receiver keying off `DocumentType` fails on
     > perfectly valid VECs. `DocumentType` is additionally an `OpenEnumeration`, so a
     > receiver cannot even enumerate the value space. Both facts belong in the new
     > guideline text as the justification.
     >
     > **Navigation directions must be corrected before drafting** — see
     > [Model Corrections](#model-corrections-revision-2).
  4. Everything that in the broadest sense **describes a harness** (the physical product,
     regardless of informational completeness) is a `HarnessDescription` — as opposed to
     virtual artefacts like architecture, system schematic, or master data.

     > **Conflict (added rev. 2):** taken literally this contradicts the `DocumentType`
     > enumeration, which also defines `WiringDescription`, `InstallationDescription`,
     > `ManufacturingDescription`, `HarnessCoupling` and the `GeometryModel*` literals —
     > all of which describe the physical harness product in a broad sense. The usable
     > core of the statement is narrower and must be written that way: *informational
     > completeness is not a criterion for `HarnessDescription`*, and the dividing line
     > is physical product vs. virtual artefact — but a more specific literal still wins
     > where one applies. See [Open Question 1](#open-questions).
  5. The page `key-concepts/digital-change-tracking` should be extended:
     `_DigitalRepresentationIndex_` is not only for splitting a source dataset — it can
     also be used to work **towards a target dataset** (a complete harness description has
     a known number; different processes each deliver only a partial snippet of it).
  6. When data from multiple VEC files is **merged**, the `DocumentVersion` structure
     should generally be preserved.

     > **Carve-out required (added rev. 2):** this holds for *aggregating* merges
     > (copying content in for traceability). It does **not** hold for *semantic* merges,
     > where `elog-layers/system-schematic#partial-systems` mandates the opposite: when
     > partial systems are combined, matching open links are resolved and the
     > `OpenLink` `ComponentNode`s are removed. The result is new content, not a
     > structure-preserving union. The rule must distinguish the two cases.

---

## Model Corrections (revision 2)

These are factual errors in the discussion translation that would propagate into the
drafted guideline text if adopted verbatim. All were checked against
`.claude/index/classes.jsonl` (VEC 2.2.0).

| Claim in the notes | Model reality | Consequence for the drafted text |
|---|---|---|
| "navigate from the relevant `PartVersion`s to their describing `Specification`s" | `PartVersion` has **no** navigable association to its specifications. Its only outgoing relation is `project → Project [0..1]`. The link is unidirectional the other way: `PartOrUsageRelatedSpecification.describedPart → PartVersion [0..*]`. | Phrase it as resolving the **inverse** of `describedPart`: collect all `PartOrUsageRelatedSpecification`s whose `describedPart` includes the `PartVersion`. Do not imply a forward traversal that does not exist in the XSD. |
| "wire → `Connection`" | There is **no class named `Wire`** in VEC 2.2.0. The relevant classes are `WireElement`, `WireElementReference`, `WireSpecification`. The navigable association is `WireElementReference.connection → Connection [0..*]`. | Write the example as `WireElementReference` → `Connection`, with `WireElementReference.referencedWireElement → WireElement` for the part-level link. (Note: the skill's own `glossary.md` lists a non-existent `Wire` class for "Leitung" — worth fixing there too.) |
| "Navigation to `DocumentVersion` … by navigating up the hierarchy" | Correct. `DocumentVersion.specification → Specification [0..*]` is a **composite** aggregation, so the owning `DocumentVersion` is the XML parent element and is always reachable. | Keep, but say explicitly that this is the containment parent — it is the one "upward" navigation that is guaranteed. |
| (not in the notes) | For **instances**, a forward navigation *does* exist: `PartUsage.partOrUsageRelatedSpecification → PartOrUsageRelatedSpecification [0..*]` and `OccurrenceOrUsage.role → Role [0..*]` (composite). | The new navigation section must give **two** recipes — inverse-of-`describedPart` for `PartVersion`, forward reference for `PartUsage`/`PartOccurrence` — otherwise implementers will apply the wrong one. `product-definition/component-instances` already documents this. |

---

## Affected Pages

### 1. `key-concepts/general-structure` — AFFECTED (several points)

| What is there now | What needs to change |
|---|---|
| Callout (lines 100–103): *"certain best practices and minimal content can be defined"* | "minimal content" reads like a hard floor; discussion says only "typical scopes with optionality" — rephrase to avoid implying a hard minimum. Reuse the wording already agreed in `product-definition/component-description#content-requirements` (see item 10) rather than inventing new phrasing. |
| "Combination and Reuse of Documents" section (heading at line 160, body to line 199) — **already contains an explicit SHALL** at lines 168–170: *"In order to preserve this traceability along the process, the assignment of information pieces to its original `DocumentVersion` shall remain unchanged."* | **Corrected in rev. 2:** the rule does **not** need to be created, it already exists at full `SHALL` modality. What is missing is (a) that it is written for the *component master data* example only and never generalised to "merging content from multiple VEC files", and (b) the carve-out for semantic merges (consequence 6). Edit = generalise + carve out, not "strengthen". |
| No statement about cross-`DocumentVersion` references | Add explicit statement that `DocumentVersion`s do **not** form a boundary for references — **with the intra-file / inter-file distinction** from consequence 2. |
| No framing of VEC as snapshot vs. data management | Add an introductory sentence framing a serialised VEC as a snapshot/exchange artefact, not a persistent database. **Note:** `general/interface-behaviour#background` (line 41) already says almost exactly this ("The VEC is not intended to be a file-based database…"). Cross-reference it instead of duplicating; decide which page owns the statement. |
| "Content from mixed Sources" section (lines 201–214) added in gh-956 — good | Already covers the merge/structure preservation case; cross-check wording to ensure it aligns with the generalised rule above. Its "Separate DocumentVersions per Source" bullet is the preferred approach and is the natural anchor for the generalised merge rule. |
| Front matter `classes:` already lists `VecContent, DocumentVersion, PartVersion, DocumentType, PartOrUsageRelatedSpecification, Specification` | No change needed — coverage is complete for the proposed edits. |

### 2. `key-concepts/digital-change-tracking` — AFFECTED (explicitly requested)

The existing page covers only the **"splitting a source document"** use case (one source,
multiple digital representations; see the bullet at line 59 and the "VEC files with
partial content" figure). The discussion requests adding the inverse:

> A `DocumentVersion` with a known target identity (number/version) exists. Multiple
> processes/tools each contribute a partial snippet. The `_DigitalRepresentationIndex_`
> signals which partial state has been delivered.

New section to add, as a `###` under `## Application of the _DigitalRepresentationIndex_`,
after "When to Modify":

- **"Incremental / Target-Dataset Use"** — a target `DocumentVersion` has a known
  identity; generating systems produce partial contributions; `_DigitalRepresentationIndex_`
  changes whenever the contribution changes.

**Additional items found in rev. 2:**

- The page has **no `classes:` front matter at all** — `DocumentVersion` is only linked
  inline. Per `cross-references.md` a page carrying `MUST`/`SHALL` statements about a
  class must declare it. Add `classes: [DocumentVersion]` as part of this edit.
- The existing `SHALL` at `#when-to-modify` ("the `_DigitalRepresentationIndex_` shall be
  different, whenever the payload content … is different") already covers the new use
  case mechanically. The new section is therefore **explanatory, not normative** — write
  it as an additional scenario, and do not restate the rule at a different modality.
- **Interaction with `compliance-tests` TC-0005** — see item 12. The target-dataset
  pattern can legitimately produce several `DocumentVersion`s sharing a `documentNumber`,
  which TC-0005 flags as suspicious. Resolve before publishing.

### 3. `general/interface-behaviour` — AFFECTED (new guideline missing entirely)

The page already covers receiver tolerance (`#content-of-a-vec`: *"A receiving system
shall be able to accept any valid VEC"*, *"it shall not refuse the import … because of
'too much' information"*, and the reciprocal permission to reject on "too little"). It
does **not** address *how* a receiver should locate information. A new section is needed:

> **"Navigating Information in a VEC"** (or similar)
> - Navigate via **model relationships**, not via `DocumentType` lookup or expected
>   `DocumentVersion` structure. Justify with the model facts: `documentType` is
>   optional (`0..1`) and is an `OpenEnumeration`.
> - Finding component master data: collect the `PartOrUsageRelatedSpecification`s whose
>   `describedPart` references the `PartVersion` in question (**inverse** traversal) —
>   regardless of which `DocumentVersion` contains them.
> - Finding information for an instance: follow
>   `PartUsage.partOrUsageRelatedSpecification` and `OccurrenceOrUsage.role`
>   (**forward** traversal). Cross-link `product-definition/component-instances`.
> - Finding system-schematic connections for a wire: traverse
>   `WireElementReference.connection → Connection` directly — regardless of which
>   document holds the `ConnectionSpecification`.
> - Navigate up to `DocumentVersion` only when **process metadata** (approval, version,
>   provenance) for a specific element is needed; the `DocumentVersion` is the
>   containment parent of the `Specification` and is therefore always reachable.

**Additional items found in rev. 2:**

- Front matter `classes:` currently lists only `VecContent, DocumentVersion, PartVersion`.
  The new section is authoritative about `DocumentType`, `Specification`,
  `PartOrUsageRelatedSpecification`, `PartUsage`, `WireElementReference` and `Connection`
  — all must be added.
- The page's `#traceability-scenarios` section already cross-references
  `general-structure#combination-and-reuse-of-documents`. Keep that link consistent with
  whatever the generalised merge rule becomes in item 1.

### 4. `product-definition/_index.md` — MINOR UPDATE

The page already has a strong callout (lines 52–54) noting the specification list is "not
a hard requirement nor exhaustive", followed by the partial/evolving-description paragraph
at line 56. This is **consistent** with the discussion.

Gaps:

- Line 44: *"A single `DocumentVersion` … containing **all** information specific to the
  wiring harness"* — "all" could be misread as a completeness requirement. Soften to
  "the information specific to the wiring harness" or add a qualifier. (The same line
  contains a second "_all_" about variants and modules; that one is about the 150 %
  approach and is fine — do not touch it.)
- The explicit definitional statement about what qualifies as a `HarnessDescription` is
  implicit but not stated as a definition. **Rev. 2:** state it in the corrected, narrower
  form from consequence 4 — completeness is not a criterion; physical product vs. virtual
  artefact is the axis; more specific `DocumentType` literals still take precedence.
  Do **not** publish the blanket "everything that broadly describes the harness is a
  `HarnessDescription`" — it contradicts the enumeration.
- **Rev. 2:** front matter is `classes: null`. The page makes normative statements about
  `DocumentVersion`, `PartVersion`, `Specification` and `PartOrUsageRelatedSpecification`
  and is about to gain one about `DocumentType`. Populate `classes:` with this edit.

### 5. `product-definition/harness` (KBL/VEC Mapping) — ADJACENT

Scoped to KBL→VEC mapping (see the disclaimer callout at the top of the page). The
mandatory `DocumentType=PartMaster` / `HarnessDescription` statements (lines 111 and 113)
are valid within that mapping context and do not contradict the discussion (which is about
general receiver behaviour, not about what a converter must produce from a KBL source).
**No change required.**

Rev. 2 caveat: line 111 is a bare `must` with no scoping words in the sentence itself. If
the new receiver-side rule in `interface-behaviour` is read next to it out of context, it
looks like a contradiction. A one-clause scoping addition ("for this mapping, …") is cheap
insurance — optional, editorial.

### 6. `elog-layers/_index.md` — REINFORCES (no change needed)

The existing callout (lines 48–52) already says: *"Many processes define documents that are
similar to this layered structure in terms of their content, but do not correspond to it
one hundred percent … This is perfectly valid and an intended feature of the VEC."* This
directly supports the discussion's point about process-specific cuts and optionality.
Good candidate to cite from the new `general-structure` text.

### 7. `pdm-information` — ADJACENT (no change needed)

Correctly describes the PDM metadata role of `DocumentVersion` (title-block / ISO 7200
mapping). The discussion's framing ("DocumentVersion reflects responsibilities and
approvals") is the motivation for this page, not a change to it.

Rev. 2 note: this page also has no `classes:` front matter. Out of scope here, but worth a
separate housekeeping issue.

### 8. `general/partitioning-sizing-packaging` — ADJACENT, **cross-check required**

Covers splitting/packaging decisions. The merge/preservation discussion belongs in
`general-structure`, not here.

**Rev. 2 — reclassified from "no change needed":** rule 2 at line 49 states that elements
with *"no relationships between each other (except reference base on `PartVersion`s and
`DocumentVersion`s)"* **shall** be placed in separate files. That parenthesis is precisely
the inter-file reference mechanism, and it is what makes consequence 2 true across files.
The new cross-`DocumentVersion` reference statement in `general-structure` must
cross-reference this rule so the two are read together. No text change here; a `relref`
from `general-structure` is enough.

### 9. `elog-layers/system-schematic` — **CONTRADICTS (partially)** — reclassified in rev. 2

The "Partial Systems" section already handles partial `ConnectionSpecification`s and
merging partial systems, and line 152 confirms the discussion's model ("the content of
each [partial system] is contained in its own `DocumentVersion` … in the same
`VecContent`"). The wire → `Connection` example is consistent with this page's approach.

**However**, lines 144 and 153–154 mandate that when partial systems are merged, matching
open links **are resolved and the `OpenLink` `ComponentNode`s are removed** ("it is
mandatory to resolve these open links and replace them by determined `ComponentNode`
elements"). That is a structure-*changing* merge and it conflicts with a blanket reading of
consequence 6.

**Action:** no edit to this page, but the merge rule authored in `general-structure` must
explicitly exclude semantic merges of this kind, and should link here as the worked
example. Without that carve-out the two guidelines contradict each other.

### 10. `product-definition/component-description` — **REINFORCES (strongly)** — added in rev. 2

Missed entirely in revision 1. Its `#content-requirements` section (lines 99–103) already
states consequence 1 almost verbatim:

> *"In an omniscient view of the world, it would be possible to formulate logical
> constraints and minimum requirements for the content of a `PartMaster`-Document … However,
> a given VEC file can only be a fragment of this complete picture. The availability of
> information in a VEC depends on the specific use case, the process, the point in the
> process, the degree of maturity of the tooling … Therefore, even if there are logical
> constraint, they are not enforced in the VEC."*

This is the **precedent text** for the `general-structure` callout rewrite in item 1 — use
its phrasing rather than inventing new wording, and cross-reference it. Note also that the
page's history entry is literally *"Clarification of the Minimum Content of
DocumentVersions for Part Master Data" (KBLFRM-931)*, i.e. this exact question was already
settled once for `PartMaster`; the meeting generalises it.

**One minor edit worth making:** line 83 says a part master document *"can be recognised
with the `DocumentType` = `PartMaster`"*. That is a `DocumentType`-based recognition
recipe — exactly what consequence 3 tells receivers not to rely on. Reword to "is normally
marked with", and point to the new navigation section for the robust route.

### 11. `product-definition/component-instances` — REINFORCES — added in rev. 2

Missed in revision 1. Two reasons it matters:

- `#instantiation-with-roles` contains *"Following the principle of optionality in the VEC,
  it is not required to create `Role`s for all the `PartOrUsageRelatedSpecification`s
  referenced in the part master data…"* — an existing, explicitly named **principle of
  optionality**. The new text should adopt that term instead of coining a new one.
- `#relationship-to-part-master-data` carries the `SHALL` that establishes the **forward**
  navigation for instances (*"A `PartUsage` shall reference all
  `PartOrUsageRelatedSpecification`s that provide relevant information about itself"*).
  This is the counterpart recipe the navigation section in item 3 needs.

**No change required**, but it must be cited from `general/interface-behaviour`.

### 12. `compliance-tests` — **AFFECTED (check)** — added in rev. 2

Missed in revision 1. **TC-0005**: *"Having multiple `DocumentVersion` with the same
`documentNumber` is suspicious, even when the `documentVersion` is different."*

The target-dataset pattern from consequence 5 — several process partners each delivering a
partial contribution to a `DocumentVersion` with a *known, shared* target identity — will
produce exactly this shape, and TC-0005 will flag valid data. Either:

- the new `digital-change-tracking` section must state that the partial contributions are
  merged into **one** `DocumentVersion` per identity before serialisation (so TC-0005 never
  fires), or
- TC-0005 needs a documented exception.

This must be decided **before** the new section is published, otherwise the guideline and
the compliance suite disagree. See [Open Question 2](#open-questions).

### 13. `key-concepts/external-references` — ADJACENT (no change needed) — added in rev. 2

Missed in revision 1 despite being one of only three guideline pages that declare
`DocumentVersion` in front matter. It defines the metadata-only `DocumentVersion` (the
"plain PDM reference") and enumerates the mechanisms for connecting model elements to
documents. Nothing here conflicts: it is about VEC-element → *external document* links,
whereas the discussion is about VEC-element → VEC-element links across `DocumentVersion`s.

Worth noting for the author of item 1: line 67 already articulates the separation idea —
*"even though both information are contained in the same VEC-file, from the perspective of
a versioning mechanism they are clearly separated"* — which is the same "DV is a versioning
unit, not a structural boundary" point, stated from the other side.

### 14. Checked, no change — added in rev. 2

To make the audit complete, the remaining guideline pages that mention `DocumentVersion`
were read and cleared: `product-definition/composite-parts`, `product-definition/coupling`,
`elog-layers/coupling-devices`, `elog-layers/wiring`, `topology/requirements`,
`general/xml-xsd`. Their `DocumentVersion` mentions are incidental (containment context for
specifications, or file-partitioning examples) and none carries a rule that the discussion
touches.

---

## Verification Notes (revision 2)

**Coverage.** Revision 1 examined 9 pages. The inverted index lists **17 guideline pages**
that mention `DocumentVersion`; revision 1 omitted 8 of them, including
`key-concepts/external-references` (front-matter-linked) and
`product-definition/component-description` (the strongest reinforcing precedent in the
wiki). All 17 are now classified.

**Method.** Class facts checked against `.claude/index/classes.jsonl` (VEC 2.2.0);
`DocumentType` literals checked against the generated class page
`content/specifications/vec/v220/classes/documenttype.md`; every page listed above read in
full rather than via extracted statements (the guideline index is
`extraction_confidence: heuristic`).

**What changed in the conclusions.**

| # | Revision 1 said | Revision 2 finding |
|---|---|---|
| 1 | `general-structure` needs the merge/preserve rule **added** ("strengthen to an explicit rule") | The rule already exists at `SHALL` modality (lines 168–170). The real gap is generalisation + a carve-out. |
| 2 | `elog-layers/system-schematic` — adjacent, consistent, no change | Partially **contradicts** consequence 6: its mandated merge removes `OpenLink` nodes. Needs a carve-out in the new rule. |
| 3 | `compliance-tests` — not mentioned | **Affected**: TC-0005 collides with the target-dataset pattern. |
| 4 | Navigation recipes stated as `PartVersion` → `Specification` and `wire` → `Connection` | Both wrong at the model level: the first is an inverse traversal, the second names a class that does not exist. Corrected. |
| 5 | Consequence 4 adoptable as a definition | Contradicts five `DocumentType` literals. Must be narrowed. |
| 6 | No mention of front-matter maintenance | Three of the four pages to be edited have missing or `null` `classes:` front matter, which the repo's own convention requires for pages carrying normative class statements. |
| 7 | `product-definition/component-description` — not mentioned | Strongest reinforcing precedent; also needs one small `DocumentType`-recognition reword. |

**Line references** were re-checked and corrected where they had drifted
(`general-structure` "Combination and Reuse" starts at 160 not 162; `product-definition`
callout is 52–54 not 52–57; `elog-layers/_index` callout is 48–52 not 49–53).

---

## Open Questions

These need a decision before drafting; they cannot be resolved from the wiki alone.

1. **`HarnessDescription` vs. the more specific literals.** Does the meeting intend
   `HarnessDescription` to absorb `WiringDescription`, `InstallationDescription` and
   `ManufacturingDescription`, or does it only mean "completeness is not a criterion"?
   The second reading is compatible with the model; the first would require deprecating
   literals. Assumed: the second.
2. **TC-0005 vs. the target-dataset pattern.** Merge contributions into one
   `DocumentVersion` before serialisation (guideline change only), or grant TC-0005 an
   exception (compliance-suite change)? Assumed: the first, as it needs no rule change.
3. **Ownership of the "VEC is a snapshot, not a database" statement.** It exists today in
   `general/interface-behaviour#background`. Move it to `general-structure` and reference
   it from `interface-behaviour`, or leave it and reference from `general-structure`?
   Assumed: leave it, reference from `general-structure` — the page is older and widely
   linked.

---

## Summary

| Page | Status | Key action |
|---|---|---|
| `key-concepts/general-structure` | **affected** | Add VEC-as-snapshot cross-reference; add cross-DV reference rule **with intra-/inter-file split**; **generalise** the existing `SHALL` on DV-structure preservation and add the semantic-merge carve-out; soften "minimal content" using the `component-description` precedent wording |
| `key-concepts/digital-change-tracking` | **affected** | Add "target-dataset / partial contribution" section (explanatory, not a new rule); add missing `classes: [DocumentVersion]` front matter; resolve TC-0005 interaction first |
| `general/interface-behaviour` | **affected** | Add "Navigating Information in a VEC" with the **corrected** traversals (inverse `describedPart` for `PartVersion`; forward for `PartUsage`/`PartOccurrence`; `WireElementReference` → `Connection`); justify with `documentType` being `0..1` + `OpenEnumeration`; extend `classes:` |
| `product-definition/_index.md` | **minor update** | Soften "all information" on line 44; add the **narrowed** `HarnessDescription` definition; populate `classes:` (currently `null`) |
| `product-definition/component-description` | **minor update** *(new in rev. 2)* | Reword "can be recognised with the `DocumentType` = `PartMaster`"; cite as precedent for the optionality wording elsewhere |
| `compliance-tests` | **check** *(new in rev. 2)* | Decide TC-0005 vs. target-dataset pattern before publishing item 2 |
| `elog-layers/system-schematic` | **contradicts (partial)** *(reclassified)* | No edit here, but the new merge rule must carve out semantic merges and link here |
| `general/partitioning-sizing-packaging` | adjacent, cross-check *(reclassified)* | No edit; `general-structure` must `relref` rule 2 for the inter-file reference case |
| `product-definition/component-instances` | reinforces *(new in rev. 2)* | No change — supplies the "principle of optionality" term and the forward-navigation `SHALL` |
| `key-concepts/external-references` | adjacent *(new in rev. 2)* | No change |
| `product-definition/harness` | adjacent | No change — KBL-mapping scope, internally consistent (optional scoping clause on line 111) |
| `elog-layers/_index.md` | reinforces | No change — existing callout already supports discussion conclusions |
| `pdm-information` | adjacent | No change (missing `classes:` — separate housekeeping issue) |
| `composite-parts`, `coupling`, `coupling-devices`, `wiring`, `topology/requirements`, `general/xml-xsd` | adjacent *(new in rev. 2)* | No change — checked and cleared |
