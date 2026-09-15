# Analysis of Discussion / Change Proposal — Issue #1158 "Darstellung eines Gesamtbordnetzes"

---

## 0. Scope of this Analysis

Issue [#1158](https://github.com/prostep-ivip-e-V/vec/issues/1158) asks how a *Gesamtbordnetz*
(a collection of 150 % harnesses / 100 % definitions) is represented in a VEC file and how it
is delimited from `Harness` / `Module` / `Variant`. The discussion of 19.03.2026 answered a
number of adjacent questions about the BOM layering inside a harness description, but left the
actual Bordnetz question open.

This analysis covers three things:

1. Which of the agreed statements are already covered by the wiki, which are not, and which are
   **contradicted** by existing text ([section 2](#2-agreed-semantics-vs-current-wiki-state) and
   [section 3](#3-inconsistencies-found)).
2. What must be written, split into **implementation-guideline changes**
   ([section 5](#5-implementation-guideline-changes)) and **model (documentation) changes**
   ([section 6](#6-model-documentation-changes)).
3. What cannot be written yet because it is genuinely undecided
   ([section 4](#4-open-questions-requiring-a-decision)).

The related analysis for [#1160](./issue-1160-analysis.md) settles *what a `DocumentVersion`
is and what a `HarnessDescription` is*. This analysis builds on it and does not restate it;
where the two overlap, #1160 owns the rule and #1158 cross-references it.

---

## 1. Correction of the Issue's Premise

The issue states that `content = 'Bordnetz'` "ist mit der Einführung des
`PartStructureContentType` nicht mehr möglich". **This is not accurate and the analysis must
say so**, because it changes what kind of change is needed.

- `PartStructureContentType` is an **`OpenEnumeration`** (class documentation:
  *"OpenEnumeration that defines standard content types for the PartStructureSpecification."*).
- Per `basic-datatypes/open-and-closed-enumerations`, open enumerations are transformed to
  `xs:string` in the standard VEC XML schema and only to `xs:enumeration` in the **Strict VEC
  XML schema**.

So `Content = 'Bordnetz'` is still schema-valid against the standard VEC XSD in 2.x. What the
migration from the VEC 1.2 `String` took away is not the *possibility* but the
*standardisation*: the value is no longer an agreed literal, so no receiver can be expected to
interpret it, and the file no longer passes the strict schema.

Consequence: the decision to be taken is **whether the Bordnetz level deserves a standardised
literal**, not whether a value can be written at all. See [Q2](#q2--new-literals-for-the-vehicle-network-level).

---

## 2. Agreed Semantics vs. Current Wiki State

The table maps each statement from the 19.03.2026 discussion to its status in the wiki.

| # | Statement from the discussion | Status |
|---|---|---|
| A1 | The scope of a `HarnessDescription` is user-defined (single harness, several harnesses, harness + adapter). Whether RL/LL are two variants or two harnesses is a process decision. | **Covered by #1160** (R1/R4). No separate rule here; cross-reference. |
| A2 | Within one `HarnessDescription` there is exactly one `CompositionSpecification` per layer of the hierarchical BOM. | **Partially written, wrong place.** Only in `product-definition/harness` line 258 ("For the sake of a modular data structure, each layer defines its own `CompositionSpecification`"), i.e. inside the KBL-mapping guideline. Must be lifted to `composite-parts`. Also needs widening — see [F6](#f6--layer-container-rule-is-mislocated-and-too-narrow). |
| A3 | For a harness / KSK / Stufenleitungssatz the BOM does not stop at module level; occurrences are needed for logistic control information. The harness "BOM part" references them. Part number → `PartVersion`, otherwise `PartUsage`. | **Partially covered.** `composite-parts#details` and `harness#bill-of-material--part-structure` describe the `MODULES` layer. The `PartUsage` fallback for a bracket without a part number is **not** written anywhere. |
| A4 | Components are instantiated as `PartOccurrence` in the harness; all occurrences of one harness scope live in a common `CompositionSpecification`. Modules are `PartStructure`s referencing a subset of that central pool; a module has **no own** `CompositionSpecification` (150 % methodology). | **Covered** by `composite-parts#details` (the `COMPONENTS` CS and the in-place definition) and by the model page `composite-part-descriptions/instantiation-approaches`. |
| A5 | The harness itself is a `PartStructure`; it may contain several modules; if those modules carry control information they must be instantiated, which requires the harness to own a `CompositionSpecification`. Each aggregation level ("Klammerobjekt") gets its own `CompositionSpecification`. | **Same gap as A2.** The reasoning chain (control information ⇒ occurrence ⇒ container) is nowhere written down; today the reader only sees the result (`MODULES` CS) without the justification. |
| A6 | If the 150 % master-data definition of the module already says everything, modules need no `PartWithSubComponentsRole` re-referencing all occurrences of the `PartStructureSpecification`. | **Contradicted by four places.** See [F3](#f3--contradiction-mandatory-subcomponent-redundancy-for-in-place-modules). This is the single most consequential finding. |
| A7 | For general assemblies the `CompositionSpecification` sits in the master-data description; its `PartOccurrence`s must be re-instantiated in the using harness (`instanciatedOccurrence`). Same for "neutral modules" used in several harnesses. | **Covered for assemblies** (`composite-parts#usage-of-an-assembly`, lines 114–158). **Not covered for "neutral modules"** — `composite-parts` line 194 only says reuse "is also supported", with no mechanism. |
| A8 | When a whole Bordnetz is transported in one container, the harnesses stay separated: the `DocumentVersion` structure and the separate `CompositionSpecification`s are preserved. If the Bordnetz is designed/viewed as a whole, everything may be merged into one `DocumentVersion` and the `CompositionSpecification`s of each level merged. | **Not written.** The "preserve" half follows from `general-structure#combination-and-reuse-of-documents`; the "merge" half **conflicts** with the same paragraph. See [F7](#f7--the-bordnetz-merge-conflicts-with-the-traceability-shall). |
| A9 | A `PartOccurrence` that belongs exclusively to modules is controlled via those modules and needs no own control information. | **Not written.** `harness#variant-management-logistic-control-information` shows the module case but states no rule about component-level control information. |

### Answers to the four explicit questions of the issue

| Question | Current answer in the wiki | Verdict |
|---|---|---|
| Can several Bordnetze be in one VEC file? | Nothing. | **Open** — needs a written answer, see [Q5](#q5--cardinality-of-harnessdescription-documentversions). |
| Can several harnesses be in one VEC file? | **Yes.** `product-definition/_index.md` line 47 ("you may choose to have multiple `DocumentVersion`s with `DocumentType=HarnessDescription`, each describing a single harness") and `general/partitioning-sizing-packaging#background` ("information about a harness, a set of harnesses, or other related information"). | Answered; make it findable from the harness guideline. |
| Do modules/variants need separate `HarnessDescription` `DocumentVersion`s, or can one reference all their `PartVersion`s? | **One is enough.** `product-definition/_index.md` line 44 ("this single document contains the definitions of _all_ variants and modules") and `harness#documentversions` ("This document contains … the `Specification`s for the `Module`s and `Harness_configuration`s"). `DocumentVersion.referencedPart` is `0..*`. | Answered, but only implicitly; state it as a rule. |
| How many `HarnessDescription` `DocumentVersion`s per VEC file — in total and per `PartVersion`? | Nothing for the file. For the *described part*, `compliance-tests` TC-0003 limits a `PartVersion` to at most one `Specification` of each type, hence at most one `PartStructureSpecification`. | **Partially open**, see [Q5](#q5--cardinality-of-harnessdescription-documentversions). |

---

## 3. Inconsistencies Found

### F3 — Contradiction: mandatory `subComponent` redundancy for in-place modules

Statement A6 says the redundancy is not needed. Four existing texts say it is:

| Source | Statement | Modality |
|---|---|---|
| `product-definition/composite-parts#details` (line 186) | *"**All** `PartOccurrence`s referenced by the corresponding `PartStructureSpecification` as `InBillOfMaterial` must also be referenced as `SubComponent` by the `PartWithSubComponentsRole`. … Although redundant, it is intentionally required to fill both associations."* | **must / required** |
| `product-definition/harness#bill-of-material--part-structure` (line 310) | *"However, to provide a consistent appearance in the model for all parts with a BoM, both concepts shall be used."* | **shall** |
| Model: `composite-part-descriptions/instantiation-approaches` | *"In this case both relationships of the `PartWithSubComponentsRole` and a `PartStructureSpecification` to the `OccurrenceOrUsage` (`inBillOfMaterial` & `subComponents`) shall be maintained consistently."* | **shall** (model documentation) |
| `general/instantiation` | *"these structures shall be instantiated completely … This applies to … CompositeParts (e.g. Assemblies or Modules)"* | **shall** |

Pulling the other way:

- `product-definition/component-instances#instantiation-with-roles`: *"Following the principle of
  optionality in the VEC, it is not required to create `Role`s, for all the
  `PartOrUsageRelatedSpecification`s referenced in the part master data, if the corresponding
  aspect is not relevant in the individual context."*

The model permits A6 mechanically (`PartWithSubComponentsRole.subComponent` is `0..*`; only
`partStructureSpecification` is `1`), so this is purely a guideline decision. It cannot be
resolved by editing: see [Q4](#q4--is-the-subcomponent-redundancy-still-required-for-in-place-modules).
Whatever is decided has to be applied to **all four** places at once, the model documentation
included — otherwise the wiki contradicts itself in two directions.

### F4 — `Content` missing in the harness-level XML example

`product-definition/harness`, listing at lines 330–335:

```xml
<Specification xsi:type="vec:PartStructureSpecification" id="PartStructureSpecification_00367">
  <Identification>PSS-LTG0011200</Identification>
  <DescribedPart>PartVersion_00500</DescribedPart>
  <InBillOfMaterial>PartOccurrence_00287 ...</InBillOfMaterial>
</Specification>
```

The module listing above it (line 305) correctly carries `<Content>Module</Content>`; the
harness listing carries none, although the page's own mapping table
(`#mapping-kbl-classification-to-partstructurecontenttype`) maps KBL `harness` → `Harness`.
Add `<Content>Harness</Content>`.

### F5 — Misleading BOM edge label in the mermaid diagrams

Raised in the discussion. `product-definition/harness` lines 204, 238 and 255 label the edge
`PartStructureSpecification -- in BoM --> PartOccurrence`. Read along the arrow this says the
specification is *in the BOM of* the occurrence; the intended meaning is the reverse (the
occurrence is listed in the BOM defined by the specification). Relabel to something directional,
e.g. `-- lists in BoM -->` or `-- bill of material -->`. The casing is also inconsistent
(`in BoM` on line 204 vs. `in BOM` on 238/255).

### F6 — Layer/container rule is mislocated and too narrow

The "one container per layer" rule (A2/A5) exists only as a half-sentence in the KBL-mapping
guideline (`harness` line 258), and the `COMPONENTS` / `MODULES` `Identification` convention
appears only there too (lines 281, 310). Two problems:

1. **Location.** `product-definition/harness` is explicitly scoped to the KBL ("This
   implementation guideline … covers only the scope of the KBL"). A rule about the general BOM
   layering belongs in `product-definition/composite-parts`.
2. **Type.** The rule names `CompositionSpecification`, but `CompositionSpecification.component`
   is typed `PartOccurrence` only, while `PartStructureSpecification.inBillOfMaterial` is typed
   `OccurrenceOrUsage`. A layer whose members have no part number (A3: *"ansonsten `PartUsage`"*)
   therefore needs a `PartUsageSpecification`, not a `CompositionSpecification` — exactly as
   `composite-parts#part-master-data` already describes for assemblies. The rule must be phrased
   as "one **container specification** (`CompositionSpecification` or `PartUsageSpecification`)
   per layer".

### F7 — The Bordnetz merge conflicts with the traceability `SHALL`

A8 allows merging all harnesses of a Bordnetz into one `DocumentVersion` when the network is to
be designed as a whole. `key-concepts/general-structure#combination-and-reuse-of-documents`
(lines 168–170) states: *"In order to preserve this traceability along the process, the
assignment of information pieces to its original `DocumentVersion` shall remain unchanged."*

This is the same structural conflict that #1160 R6 identified for `elog-layers/system-schematic`
(semantic merge of partial systems). The Bordnetz case is a **second worked example** of the
carve-out proposed there, and should be written as such rather than as a new rule — otherwise
the two analyses will produce two competing exceptions to the same `SHALL`. See
[Q6](#q6--what-happens-to-the-per-layer-containers-when-a-bordnetz-is-merged).

### F8 — `LogisticControlInformation` is not a VEC class

The discussion notes use `LogisiticControlInformation`, which is the KBL attribute
`Module_configuration.Logistic_control_information`. There is no such class in VEC 2.2.0. The
VEC equivalent is `VariantConfiguration.logisticControlExpression` together with
`ConfigurationConstraint` / `ConfigurationConstraintSpecification`, as already mapped in
`harness#variant-management-logistic-control-information`. New text must use the VEC terms;
using the KBL term outside the mapping guideline would introduce a phantom class.

### F9 — "one instance of each per harness" needs scoping for multi-harness files

`harness` line 345 requires *"two specifications … with one instance of each per harness"*
(`VariantConfigurationSpecification`, `ConfigurationConstraintSpecification`). In a VEC holding
a whole Bordnetz — and especially in the merged single-`DocumentVersion` variant of A8 — "per
harness" becomes ambiguous. Scope it explicitly ("per `HarnessDescription`", or "per harness
`PartStructureSpecification`", depending on Q6).

### F10 — `Applied Stereotype` is no longer rendered on class pages (v2.0.2 onward)

Directly relevant to [section 1](#1-correction-of-the-issues-premise): a reader of the v2.2.0
`PartStructureContentType` page cannot see that the enumeration is open.

| Version | Class pages rendering a stereotype |
|---|---|
| v2.0.0 | 115 |
| v2.0.1 | 116 |
| v2.0.2 | 0 |
| v2.1.0 | 0 |
| v2.2.0 | 0 (all 537 pages render `| **Applied Stereotype** |   |`) |

The information survives only in the free-text documentation ("OpenEnumeration that defines…"),
which is not machine-checkable and is absent on many other open enumerations. This is a
generator regression, not a content issue, but it should be filed.

### F11 — Front-matter `classes:` gaps on the two central pages

Per `cross-references.md` ("if you write a sentence containing a normative keyword and name a
class, that class belongs in `classes:`"):

- `product-definition/harness` has an **empty** `classes:` list (line 13) while carrying `shall`
  statements about `PartStructureSpecification`, `PartOccurrence`, `CompositionSpecification`,
  `PartWithSubComponentsRole`, `VariantConfiguration` and `ConfigurationConstraint`.
- `product-definition/composite-parts` lists `PartStructureSpecification`,
  `CompositionSpecification`, `PartStructureContentType`, `PartWithSubComponentsRole` but not
  `PartOccurrence`, `PartUsage`, `PartUsageSpecification` or `DocumentVersion`, about which it
  makes `must` statements.

### F12 — `DocumentType` literals without documentation (shared with #1160)

`NetworkArchitecture`, `SystemSchematic`, `WiringDescription`, `InstallationDescription`,
`ManufacturingDescription` and `ChangeDescription` have empty description cells on the
`DocumentType` page. #1160 section 4 already proposes text for three of them. If a
`VehicleNetworkDescription` literal is added (Q2), it must not repeat that mistake, and
`NetworkArchitecture` in particular must be documented at the same time, since its name will
otherwise be confused with a vehicle-network *BOM* bracket.

### F13 — Minor: typo in the model documentation

`CompositionSpecification` class documentation begins *"The CompositionSpecificiation is used
to…"* (sic, present identically in v2.1.0 and v2.2.0). Fix in the XMI source.

---

## 4. Open Questions Requiring a Decision

These cannot be written up without a decision by the group. They are listed in the order in
which they block each other.

### Q1 — What *is* a Gesamtbordnetz, in model terms?

Three candidate answers, with different consequences:

1. **A flat set of harness descriptions.** The Bordnetz is not an object; it is "all
   `HarnessDescription`s in this exchange". Nothing new is required in the model; the
   representation is the VEC file (or VEC-Package) itself, optionally bracketed by a
   `BaselineSpecification`. This is what `product-definition/_index.md` line 47 implies today.
2. **A `PartStructure` level above the harness.** The Bordnetz is a `PartVersion` with
   `PrimaryPartType = PartStructure` and a `PartStructureSpecification` whose
   `inBillOfMaterial` are occurrences of the harnesses. This is the reading implied by the
   discussion ("wenn Leitungsstränge in einem Bordnetz instanziiert werden, liegen auch diese in
   einer eigenen CS") and it is what needs a new `PartStructureContentType` literal.
3. **A bracket without a part number.** Same as (2) but the Bordnetz has no part number, so the
   harnesses are `PartUsage`s in a `PartUsageSpecification` (A3's fallback), or the bracket is
   expressed by a `Project` / `BaselineSpecification` instead of a part structure.

Note that (2) and (3) are not mutually exclusive — both occur in practice (a Bordnetz with a
drawing number vs. a purely organisational grouping). The guideline will most likely have to
describe both. **What must be decided is whether (1) alone is the recommended answer.**

### Q2 — New literals for the vehicle-network level?

Depends on Q1. Two independent sub-decisions:

- **`PartStructureContentType`**: add a literal for the level above `Harness` (candidate names:
  `VehicleNetwork`, `HarnessSet`, `VehicleHarnessSet`). Note that `ConfigurableAssembly` /
  `Assembly` can already carry a set of harnesses structurally — the question is whether the
  semantics (a set of *harnesses*, with harness-level variance) deserve their own literal and
  their own completeness statement (150 %? 100 %? both?).
- **`DocumentType`**: add `VehicleNetworkDescription`, raised in the discussion as "zu klären".
  Its typical content must be defined. Candidates, in ascending scope: (a) only the bracket —
  the Bordnetz `PartStructureSpecification` plus the harness occurrences, with the harnesses
  themselves in their own `HarnessDescription`s; (b) the bracket plus the coupling information
  (today the scope of `HarnessCoupling`); (c) the merged whole-network description of A8. The
  relation to `BaselineSpecification` must be settled at the same time: a baseline already
  answers "which harness versions belong together", so a new `DocumentType` must add something
  a baseline does not provide.
  Note that `HarnessCoupling` is already documented as *"define the coupling information of
  wiring harnesses in a vehicle network"* — the new literal must be delimited against it.

### Q3 — T-parts

From the discussion, unresolved: *"Müsste ein 'T-Teil' eigentlich in der
`CompositionSpecification` der Module eingetragen werden?"* Restated in VEC terms: a component
occurrence shared by several modules, or belonging to none, is in the `COMPONENTS`
`CompositionSpecification`, but should it also appear in the `inBillOfMaterial` of the module
`PartStructureSpecification`s that need it — in all of them, in one of them, or in none?

This interacts with A9: if a component occurrence appears in no module at all, A9's "controlled
via its modules" does not apply and the occurrence needs its own `ConfigurationConstraint`. The
guideline text for A9 cannot be written before Q3 is answered.

### Q4 — Is the `subComponent` redundancy still required for in-place modules?

Two distinct sub-questions, both currently answered "yes" by the wiki (see [F3](#f3--contradiction-mandatory-subcomponent-redundancy-for-in-place-modules)):

- **Q4a:** Must an in-place module be instantiated at all (i.e. must a `PartOccurrence` with a
  `PartWithSubComponentsRole` exist) when the module carries no control information and nothing
  else refers to it? The discussion says no; `general/instantiation` and `composite-parts`
  effectively say yes.
- **Q4b:** *If* such an occurrence exists, must `PartWithSubComponentsRole.subComponent` repeat
  the full `inBillOfMaterial` list? The discussion says no; `composite-parts` line 186 says
  "**All** … must".

A "no" on Q4b makes readers of a module occurrence dereference the `PartStructureSpecification`
to learn its content — which is fine for the in-place case but breaks the stated goal of
"unif[ying] the handling of assemblies and modules for reading systems". If Q4b is answered
"no", that justification sentence has to be removed, not just softened.

### Q5 — Cardinality of `HarnessDescription` `DocumentVersion`s

The issue asks for a number; the honest answer is likely "unbounded, but…". What needs deciding
is the *"but"*:

- **Per VEC file:** presumably unbounded, governed by
  `general/partitioning-sizing-packaging#partitioning-and-sizing` ("as small as possible and as
  large as necessary"). Confirm and cross-reference rather than inventing a limit.
- **Per `PartVersion`:** may two `HarnessDescription` `DocumentVersion`s describe the *same*
  harness `PartVersion` — e.g. a 3D-design contribution and an electrical contribution? This is
  the incremental/target-dataset scenario of #1160 R5 and is constrained from two sides:
  `compliance-tests` TC-0003 allows a `PartVersion` at most one `PartStructureSpecification`,
  and TC-0005 flags repeated `documentNumber`s. A decision is needed on whether this is
  permitted, and if so which of the two documents carries the `PartStructureSpecification`.

### Q6 — What happens to the per-layer containers when a Bordnetz is merged?

A8 says the `CompositionSpecification`s "der jeweiligen Stufen" are unified when several
harnesses are merged into one `DocumentVersion`. Two things need deciding:

- Whether the merge really unifies the containers (one `COMPONENTS` CS for the whole Bordnetz)
  or keeps one set of containers per harness inside the shared `DocumentVersion`. The latter
  preserves more traceability and does not conflict with A2 ("one CS per layer") only if A2 is
  scoped "per layer **per harness**" rather than "per layer per `DocumentVersion`" — which is a
  third thing to decide.
- How this relates to the traceability `SHALL` in `general-structure` — see
  [F7](#f7--the-bordnetz-merge-conflicts-with-the-traceability-shall). The proposal is to treat it
  as a second worked example of the #1160 R6 semantic-merge carve-out, not as a new exception.

### Q7 — Are harnesses re-instantiated inside a Bordnetz?

If Q1 is answered (2)/(3), a harness becomes a composite part used in a larger context. By
`composite-parts#usage-of-an-assembly` that is the **library approach**, which requires *all*
subcomponents to be re-instantiated in the using context with `instanciatedOccurrence` links.
Applied to a Bordnetz this means cloning every module occurrence — and, transitively, possibly
every component occurrence — of every harness. Is that intended, or does the Bordnetz level get
an explicit exemption (harness occurrence with a `PartWithSubComponentsRole` and no cloned
subcomponents)? The same question applies to A7's "neutral modules" shared between harnesses.

### Q8 — Terminology: *Leitungsstrang* / *Leitungssatz* / harness

The discussion notes use *Leitungsstrang* for the object the guidelines call *harness*
(`PartStructureContentType.Harness`), and *Leitungssatz* in the enumeration of
"Leitungssatz / KSK / Stufenleitungssatz". Before any of this is written in English, confirm
which German term maps to `Harness` and whether *Leitungsstrang* denotes an additional level
between module and harness. If it does, Q1 acquires a fourth candidate answer.

---

## 5. Implementation-Guideline Changes

Only the changes that do **not** depend on an open question are listed as actionable; the rest
are marked with the blocking question.

### 5.1 `product-definition/composite-parts` — **affected (primary page)**

This is the page that owns the general BOM-layering concepts, so most of the new text goes here.

| What is there now | What needs to change |
|---|---|
| `#details` line 184 describes the `COMPONENTS` CS; line 186 the module layer; line 188 the harness layer | Add an explicit **layer rule** (A2/A5): each aggregation level defines its own container specification — `CompositionSpecification` for `PartOccurrence`s, `PartUsageSpecification` for `PartUsage`s (F6). State the *reason* (control information requires an occurrence, an occurrence requires a container), which is currently missing. |
| Line 186, the `**All** … must also be referenced as SubComponent` statement | **Blocked by [Q4](#q4--is-the-subcomponent-redundancy-still-required-for-in-place-modules).** If the discussion's position is adopted, this paragraph and its justification sentence ("This unifies the handling of assemblies and modules for reading systems") must both be rewritten, not merely softened. |
| Line 188, harness = "bill of modules" | Extend: the BOM does not end at the module level (A3); the harness bracket is a `PartVersion` when it has a part number and a `PartUsage` otherwise. Currently the `PartUsage` case is unwritten although `PartStructureSpecification.inBillOfMaterial` is typed `OccurrenceOrUsage` and permits it. |
| Line 194, "Reusing shared modules in different harnesses is … also supported" | Give the mechanism (A7): a module shared between harnesses follows the **library** approach — its `CompositionSpecification` lives in its own master-data `DocumentVersion` and its occurrences are re-instantiated per using harness via `instanciatedOccurrence`, exactly as for assemblies. Link `#usage-of-an-assembly`. |
| No section above harness level | **Blocked by [Q1](#q1--what-is-a-gesamtbordnetz-in-model-terms)/[Q7](#q7--are-harnesses-re-instantiated-inside-a-bordnetz).** New `## Vehicle Network / Bordnetz` section describing the chosen representation. |
| Front matter `classes:` | Add `PartOccurrence`, `PartUsage`, `PartUsageSpecification`, `DocumentVersion` (F11). |

### 5.2 `product-definition/harness` (KBL/VEC Mapping) — **affected**

- Line 204/238/255: relabel the mermaid BOM edges (F5) and unify `in BoM` / `in BOM`.
- Lines 330–335: add `<Content>Harness</Content>` to the harness `PartStructureSpecification`
  listing (F4).
- Line 258 ("each layer defines its own `CompositionSpecification`"): once the general rule is
  in `composite-parts` (5.1), reduce this to a `relref` so the rule has one owner.
- Line 310 ("both concepts shall be used"): **blocked by [Q4](#q4--is-the-subcomponent-redundancy-still-required-for-in-place-modules)**; must be changed in
  lockstep with `composite-parts` line 186.
- Line 345 ("one instance of each per harness"): scope explicitly for the multi-harness /
  Bordnetz case (F9).
- Front matter `classes:` is empty — populate it (F11).
- The `COMPONENTS` / `MODULES` `Identification` convention (lines 281, 310) should be stated as
  a *recommendation of this mapping*, not as a general VEC convention, unless the group wants to
  promote it — in which case it belongs in `composite-parts` too.

### 5.3 `product-definition/_index.md` — **minor update**

- Line 47's callout is today the only place that answers "several harnesses in one VEC file?".
  Keep it, and add the two remaining answers from
  [section 2](#answers-to-the-four-explicit-questions-of-the-issue): one `HarnessDescription`
  covers all modules and variants of its harness (no separate `DocumentVersion` per module), and
  the file-level cardinality is governed by `general/partitioning-sizing-packaging`.
- The #1160 analysis already proposes softening "**all** information" on line 44 and populating
  the `null` `classes:` front matter — do not duplicate that work here, but the harness/Bordnetz
  text must land after it.

### 5.4 `key-concepts/general-structure` — **affected (coordinate with #1160)**

- `## Types of Documents` (line 218) currently documents only `Part Master` and
  `Master Data Definition`. A `### Harness Description` subsection is the natural home for the
  typical content and the multi-harness statement — but #1160 R1 limits such sections to
  *typical scopes with optionality*. Write it under that constraint or not at all.
- `#combination-and-reuse-of-documents`: the Bordnetz merge (A8/F7) is a second worked example
  for the semantic-merge carve-out proposed in #1160 R6. Add it there rather than creating a
  separate rule.
- A `### Vehicle Network Description` subsection is **blocked by [Q2](#q2--new-literals-for-the-vehicle-network-level)**.

### 5.5 `general/instantiation` — **affected, blocked by Q4**

The page's "instantiate completely" rule explicitly lists *CompositeParts (e.g. Assemblies or
Modules)*. If Q4b is answered "no", **Modules must be removed from that list or carved out**,
otherwise the contradiction simply moves from `composite-parts` to here. The page has
`classes: null` and names no classes normatively by shortcode, so no front-matter change is
needed beyond that carve-out.

### 5.6 `product-definition/coupling` — **no change, cite**

`#mechanical-coupling` already anticipates the Bordnetz case: *"It would also be imaginable to
have a process where the definition of the coupling for a bordnet would happen after the
development of all involved harnesses. In this case, the `CouplingSpecification` might be
created in its own `DocumentVersion`."* This is the existing precedent for a network-level
`DocumentVersion` and must be cited when Q2 is decided, so that a new
`VehicleNetworkDescription` is delimited against `HarnessCoupling` rather than overlapping it.

### 5.7 `general/partitioning-sizing-packaging` — **no change, cross-reference required**

`#background` ("a harness, a set of harnesses, or other related information") and the three
partitioning rules are the answer to the file-level cardinality questions. `composite-parts` and
`product-definition/_index.md` must `relref` them instead of restating a limit.

### 5.8 `compliance-tests` — **no change; check after Q4/Q5**

TC-0003 (at most one `Specification` of each type per `PartVersion`) and TC-0009 (at most one
`Role` per type per `OccurrenceOrUsage`) are the machine-checkable side of this topic and stay
valid. Once Q4 and Q5 are decided, check whether a new test is warranted — e.g. "a
`PartStructureSpecification` with `Content = Module` shall not be `describedPart` of more than
one `PartVersion`", or a consistency test between `inBillOfMaterial` and `subComponent` if Q4b
keeps the redundancy.

### 5.9 `elog-layers/coupling-devices` — **adjacent, flagged**

Line 68 states that *"the containment of `Specification`s in their `DocumentVersion`s has a
semantic meaning"*. Under #1160's conclusion (the `DocumentVersion` cut is process-specific and
not a structural boundary) and under A8 (the same content may be cut differently for the
Bordnetz case), this sentence is at least imprecise. It is #1160's to fix; noted here because
the Bordnetz merge makes it more visible.

### 5.10 `product-definition/component-instances` — **no change, must be cited**

`#instantiation-with-roles` supplies the *principle of optionality*, which is the only existing
text supporting A6/Q4a. Whatever is decided, it has to be cited — either as the basis for the
exemption or as the thing being carved out of.

---

## 6. Model (Documentation) Changes

Strictly separated from section 5: these require a change to the XMI / model, not to the wiki
guidelines.

### 6.1 `PartStructureContentType` — literal addition (blocked by Q1/Q2)

If the Bordnetz gets its own level, add a literal with documentation in the style of the
existing ones, i.e. naming the completeness percentage and what may appear in the BOM:

> *(draft, name TBD)* `VehicleNetwork` — Definition of the complete set of wiring harnesses of
> a vehicle (or comparable product). The bill of material of a vehicle network consists of
> harnesses (`Harness`) or harness variants (`Variant`), not of individual components.

### 6.2 `PartStructureContentType` — class documentation

Independent of Q1/Q2 and worth doing either way: the class documentation says only
*"OpenEnumeration that defines standard content types"*. Add the consequence spelled out in
[section 1](#1-correction-of-the-issues-premise) — the listed literals are the standardised set,
process-specific values are technically permitted by the standard schema but are rejected by the
strict schema and cannot be interpreted by a receiver. This is what the issue's author needed to
know and could not read anywhere.

### 6.3 `PartStructureSpecification` — class documentation

The attribute documentation of `content` is *"Specifies the type of content of the bill of
material (e.g. module, harness complete set)"*. Add that `content` classifies the **described
part's aggregation level** and thereby implies constraints on both completeness (10 % / 100 % /
150 %) and on the permitted element types in `inBillOfMaterial` — the semantics that
`composite-parts` line 41 and `harness` line 212 already assume but that the model never states.

### 6.4 `DocumentType` — literal addition and documentation (blocked by Q2)

- `VehicleNetworkDescription` (name TBD), if Q2 is answered positively, with a documentation
  text that delimits it from `HarnessCoupling` and from `BaselineDefinition`.
- Independent of Q2: document `NetworkArchitecture` and `SystemSchematic`, which are currently
  empty (F12). #1160 section 4 covers `WiringDescription`, `InstallationDescription`,
  `ManufacturingDescription` and the `GeometryModel*` sharpening — keep them there, do not
  duplicate.

### 6.5 `composite-part-descriptions/instantiation-approaches` — blocked by Q4

The sentence *"In this case both relationships … shall be maintained consistently"* is
model-level documentation that has to move in lockstep with the guideline decision on Q4b. A
guideline exemption that leaves this sentence standing would put the model and the guidelines in
direct conflict.

### 6.6 Generator: restore `Applied Stereotype` on class pages

F10. Regression from v2.0.2 onward; affects all 537 class pages of v2.2.0 and hides the
open/closed distinction for every open enumeration, not just this one.

### 6.7 Typo

`CompositionSpecification` class documentation: *"CompositionSpecificiation"* → *"CompositionSpecification"* (F13).

---

## 7. Summary

| Page / artefact | Status | Action |
|---|---|---|
| `product-definition/composite-parts` | **affected (primary)** | Own the layer rule (container per aggregation level, `CompositionSpecification` *or* `PartUsageSpecification`); extend the harness level beyond modules incl. the `PartUsage` bracket; give the mechanism for shared/"neutral" modules; add the Bordnetz section (Q1); fix `classes:` |
| `product-definition/harness` | **affected** | Relabel BOM mermaid edges; add missing `<Content>Harness</Content>`; delegate the layer rule to `composite-parts`; scope "per harness" for variant specifications; populate empty `classes:`; Q4-dependent rewrite of line 310 |
| `product-definition/_index.md` | **minor update** | Answer the modules-per-`DocumentVersion` and file-cardinality questions explicitly; land after the #1160 edits to lines 44/47 |
| `key-concepts/general-structure` | **affected (with #1160)** | `### Harness Description` under `## Types of Documents`; Bordnetz merge as a second worked example of the #1160 R6 carve-out |
| `general/instantiation` | **affected, blocked by Q4** | Carve `Modules` out of the "instantiate completely" list, or keep and drop A6 |
| `compliance-tests` | no change now | Re-check after Q4/Q5; TC-0003/TC-0005/TC-0009 stay valid |
| `product-definition/coupling` | no change | Cite `#mechanical-coupling` as the precedent for a network-level `DocumentVersion` when delimiting `VehicleNetworkDescription` |
| `general/partitioning-sizing-packaging` | no change | `relref` for the file-cardinality answers |
| `product-definition/component-instances` | no change | Supplies the "principle of optionality" — cite in the Q4 decision |
| `elog-layers/coupling-devices` | no change | Line 68 "containment has semantic meaning" flagged for #1160 |
| VEC model — `PartStructureContentType` | **model change** | Document the open-enumeration consequence (do now); add a vehicle-network literal (blocked by Q1/Q2) |
| VEC model — `PartStructureSpecification` | **model change** | Document that `content` implies completeness and permitted BOM element types |
| VEC model — `DocumentType` | **model change** | Document `NetworkArchitecture` / `SystemSchematic`; add `VehicleNetworkDescription` (blocked by Q2) |
| VEC model — `instantiation-approaches` | **model change, blocked by Q4** | Align the `inBillOfMaterial` / `subComponents` consistency sentence |
| Class-page generator | **housekeeping** | Restore `Applied Stereotype` rendering (regression since v2.0.2) |
| VEC model — `CompositionSpecification` | **housekeeping** | Typo "CompositionSpecificiation" |

**Blocking decisions**, in the order they need to be taken: Q8 (terminology) → Q1 (what a
Bordnetz is) → Q2 (new literals) → Q7 (re-instantiation at network level) → Q6 (merge
behaviour); and, independently of the Bordnetz thread, Q4 (the `subComponent` redundancy) and
Q3 (T-parts), which block A6 and A9 respectively. Q5 (cardinality) can be answered as soon as
Q1 is settled.
