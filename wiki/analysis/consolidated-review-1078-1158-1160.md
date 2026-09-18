# Consolidated Review — Composite Parts, Instantiation and Document Structure

**Consolidates:** [#1078](https://github.com/prostep-ivip-e-V/vec/issues/1078) *Katalogteile mit
innerer Struktur* · [#1158](https://github.com/prostep-ivip-e-V/vec/issues/1158) *Darstellung
eines Gesamtbordnetzes* · [#1160](https://github.com/prostep-ivip-e-V/vec/issues/1160) *Inhalt
einer DocumentVersion*

**Purpose:** input for a project-group session. The three issues were analysed separately
(`issue-1078-analysis.md`, `issue-1158-analysis.md`, `issue-1160-analysis.md`); those documents
keep the line-level evidence and are referenced here, not repeated. This document re-cuts the
material along the **four themes that actually connect the issues**, states what is already
decided, lists the wiki statements that contradict those decisions, and reduces everything that
is still open to **nine decisions** ([section 6](#6-decisions-for-the-group)). A single
page-by-page action plan follows ([section 7](#7-consolidated-action-plan)).

---

## 1. Why the three issues cannot be executed independently

| Connection | #1078 | #1158 | #1160 |
|---|---|---|---|
| **Principle of optionality vs. mandatory completeness** | decided 19.03.2026: drop the completeness requirement for instantiation | asks whether in-place modules must repeat `inBillOfMaterial` as `subComponent` (Q4) — the *same* question in its BOM form | R1: guidelines cannot prescribe `Specification` content; names the "principle of optionality" |
| **What a `HarnessDescription` is and how many there are** | — | asks: several harnesses / Bordnetze per file, `DocumentVersion`s per module, per `PartVersion` | R4 defines `HarnessDescription`; R1 forbids prescribing content |
| **Preserving vs. merging `DocumentVersion` structure** | different editors see different slices of one assembly, possibly in different `DocumentVersion`s (10.03.2026) | Bordnetz: preserve on transport, may merge for whole-network design (A8) | R6: structure preservation `SHALL` + carve-out for semantic merges (`system-schematic`) |
| **Receivers navigate the model, not the document** | consuming use cases filter the occurrences of a ZSB relevant to them | — | R3: navigate via model relationships, not `DocumentType` |
| **`DocumentType` / `PartStructureContentType` literals** | `PrimaryPartType` of a composite part | new `VehicleNetworkDescription`? new content-type literal? | undocumented `DocumentType` literals (`WiringDescription`, …) |
| **Same pages** | `general/instantiation`, `composite-parts`, `component-instances` | `composite-parts`, `harness`, `general-structure`, `general/instantiation` | `general-structure`, `interface-behaviour`, `product-definition/_index` |
| **Same compliance tests** | TC-0004 | TC-0003, TC-0005, TC-0009 | TC-0005 |

Two of the decisions were taken in the same meeting (19.03.2026, #1078 at 12:54, #1158 at 13:16)
and land on the same two pages. Executed as three separate edits, the second and third would
re-introduce or contradict what the first removed.

---

## 2. Already Decided

These are taken from the issue threads and are **not** up for re-discussion here; they are the
baseline the open decisions build on.

| # | Decision | Source |
|---|---|---|
| **D-A** | A serialised VEC is a snapshot / baseline; a VEC is exchange, not data management. | #1160 |
| **D-B** | The cut into `DocumentVersion`s is process-specific and reflects responsibilities and approvals. It is **not** a structural boundary of the model and **not** a boundary for references. `DocumentVersion`s are building blocks of an interface architecture. | #1160 |
| **D-C** | Guidelines may describe *typical* `Specification` content for a `DocumentType`, always with optionality; they cannot prescribe it. | #1160 (R1) |
| **D-D** | Receivers locate information by navigating model relationships, not by keying off `DocumentType` (which is `0..1` and open) or an expected `DocumentVersion` layout. | #1160 (R3) |
| **D-E** | A `HarnessDescription` is anything that describes the harness as a physical product, regardless of informational completeness. The other harness-related literals are different views, not more specific kinds. | #1160 (R4) |
| **D-F** | The scope of one `HarnessDescription` (one harness, several, harness + adapter, RL/LL as variants or as separate harnesses) is a process decision. | #1158, 19.03.2026 |
| **D-G** | Within a harness description, each aggregation level of the BOM ("Klammerobjekt") has its own container of occurrences. Components lie flat in one container; modules reference their subset from that pool and have no container of their own; module occurrences lie in a second container; if harnesses are instantiated in a Bordnetz, those occurrences lie in a third. | #1158, 19.03.2026 |
| **D-H** | The BOM of a KSK / Stufenleitungssatz does not stop at module level: module occurrences are needed to carry logistic control information (`VariantConfiguration` / `ConfigurationConstraint`). A bracket with a part number is a `PartVersion`, otherwise a `PartUsage`. | #1158, 19.03.2026 |
| **D-I** | An occurrence that belongs exclusively to modules is controlled via those modules and needs no own control information. | #1158, 19.03.2026 |
| **D-J** | Library parts (assemblies, "neutral" modules shared across harnesses) keep their container in their own master-data document; their occurrences are re-instantiated in the using context with `instanciatedOccurrence` traceability. | #1158, 19.03.2026 (confirms `composite-parts`) |
| **D-K** | Transporting a whole Bordnetz keeps the per-harness `DocumentVersion`s and their containers. For whole-network design, merging everything into one `DocumentVersion` — and the containers per level — is permitted. | #1158, 19.03.2026 |
| **D-L** | Catalogue parts with inner structure are modelled as an assembly containing `PartUsage`s / `PartOccurrence`s, **not** as an E/E component or connector "that has a BOM". Consumers filter the occurrences relevant to them. | #1078, 19.02.2025 |
| **D-M** | **The completeness requirement for instantiation is dropped** — in `composite-parts#usage-of-an-assembly` and completely in `general/instantiation`. Only the instantiation of elements required for the context definition is necessary. | #1078, 19.03.2026 |

D-M is the pivot. It generalises the "principle of optionality" (D-C) from specifications to
instances and, by doing so, **answers #1158 Q4 and dissolves #1158 Q7** (see
[section 3.2](#32-what-d-m-resolves-elsewhere)).

---

## 3. Theme I — Instantiation: from "complete" to "what the context needs"

### 3.1 Wiki statements contradicted by D-M

Six places require completeness today. All must change in one edit; the thread names only the
first two.

| Where | Statement | Modality |
|---|---|---|
| `general/instantiation` lines 23–34 | *"these structures shall be instantiated completely … for every element in the structural definition a corresponding element in the instancing shall exist, **regardless if it is used in the respective VEC or not**"* — lists Connectors, Wires, EEComponents, CompositeParts | shall |
| `composite-parts#usage-of-an-assembly` line 120 | *"all subcomponents (referenced by the `PartStructureSpecification`) **must be** instantiated in the using context as well"* | must |
| `composite-parts#details` line 186 | *"**All** `PartOccurrence`s referenced by the corresponding `PartStructureSpecification` as `InBillOfMaterial` must also be referenced as `SubComponent` … intentionally required … This unifies the handling of assemblies and modules for reading systems."* | must |
| `product-definition/harness` line 310 | *"to provide a consistent appearance in the model for all parts with a BoM, both concepts shall be used."* | shall |
| model `composite-part-descriptions/instantiation-approaches` | *"both relationships … (`inBillOfMaterial` & `subComponents`) shall be maintained consistently."* | shall (model) |
| `ee-components/fuses` line 33, `ee-components/relays` line 39 | *"all structure elements underneath will be instantiated"* — stated as fact | descriptive |

Already pulling the other way — the texts to reuse, not rewrite:

- `component-instances#instantiation-with-roles` line 85 — *"Following the principle of
  optionality … it is not required to create `Role`s … if the corresponding aspect is not relevant
  in the individual context."*
- model `general-component-data/description-of-parts` — *"It is not required to describe every
  `PartVersion` in a specific VEC file with a corresponding `PartOrUsageRelatedSpecification`, if
  the information is not required in the context of the VEC file."*
- `component-description#content-requirements` — logical constraints exist but are not enforced
  because a VEC is always a fragment.
- `general/interface-behaviour#content-of-a-vec` — a receiver *"shall be able to accept any valid
  VEC"*.

### 3.2 What D-M resolves elsewhere

- **#1158 Q4 (module `subComponent` redundancy):** resolved in principle — an in-place module
  occurrence need not repeat the full list. What remains is the modality of the replacement
  ([Decision 1](#decision-1--replacement-rule-for-instantiation)).
- **#1158 Q7 (re-instantiation of harnesses inside a Bordnetz):** dissolves. Under D-M a harness
  occurrence at network level carries a `PartWithSubComponentsRole` and clones only the
  subcomponents the network context actually says something about — normally none. The same
  applies to "neutral modules" (D-J): traceability via `instanciatedOccurrence` stays, the
  obligation to clone everything goes.
- **#1078 "different editors, different slices":** becomes the normal case rather than a
  violation. Combined with D-D it needs one sentence in the new guideline, not a mechanism.

### 3.3 The cost, to be accepted explicitly

Today `general/instantiation` guarantees a `CavityReference` for every `Cavity`; a
`CavityReference` with nothing attached therefore means *deliberately empty*. After D-M, **absence
is ambiguous** — "unused" or "not modelled by this producer". Nothing in the model disambiguates:
`CavityReference` has only `identification`, `componentPort`, `referencedCavity`,
`integratedTerminalRole`; `Cavity.available` is a type property. The same holds for
`SlotReference`, `WireElementReference`, `HousingComponentReference`.

The guideline must say that absence means "no statement", and must name the process-level
tightening route already documented in `general/xml-xsd#motivation-and-objective` (XSD 1.1
assertions, schema filtering, Schematron) for processes that need the old guarantee. Whether the
group also wants an explicit "unused" marking in the model is part of
[Decision 1](#decision-1--replacement-rule-for-instantiation).

---

## 4. Theme II — Composite parts: what "having a BOM" means, and the levels above and below the harness

### 4.1 Below the harness: catalogue parts with inner structure (#1078)

D-L chose between two constructions — "assembly that contains a connector" vs. "connector that
has a BOM" — and rejected the second on four grounds (BOM means *built from*; which contained
component is "leading"; why assemblies without a leading character exist; "leading" depends on
use case). **The model has a third construction that was not on the table**, documented on this
exact case:

> `CompositionSpecification`: *"…define a set of occurrences required to describe unambiguously the
> design of a composite part. **This does not have to be necessarily the same occurrences which
> are building the bill of material.** Example: A company might want to regard an antenna cable
> as one part out of a bill of material perspective. However, at the same time it may be useful
> … to describe the contacting of the antenna cable within the VEC."*

> `assemblies-modules-and-harness-configurations`: *"A `PartVersion` **without** a separate
> `PartStructureSpecification` shall be regarded as one atomic part out of a bill of material
> perspective even if it is referenced by a `DocumentVersion` containing a
> `CompositionSpecification` with several occurrences."*

I.e. a catalogue connector can be `PrimaryPartType = ConnectorHousing` with a
`ConnectorHousingSpecification` **and** a `CompositionSpecification` / `PartUsageSpecification`
for its contacts and seals, and **no** `PartStructureSpecification` — internally described, atomic
in the BOM. It avoids objection #1 of D-L because there is no BOM. It is entirely absent from the
implementation guidelines (`composite-parts` uses "atomic" only in its inverse, line 46).

Four mechanisms now cover overlapping physical situations with no delimitation in the guidelines:

| Mechanism | Where | Criterion available today |
|---|---|---|
| `PartRelation` (accessories) | `component-types/accessories` | model: *"not included with the part number and have to be ordered separately"* |
| `ModularSlot` / inserts | `component-types/connectors#modular-connector` | selectable variants of one housing; kept to `PartVersion` links so master data stays one-file-per-component |
| `PartStructureSpecification` (assembly) | `composite-parts#assemblies` | D-L's choice |
| `CompositionSpecification` without `PartStructureSpecification` (atomic) | model only | — |

Two secondary consequences of D-L:

- **`PartUsage` semantics.** The model and three guideline sections define a `PartUsage` as an
  *open requirement* ("**yet** not possible to define a concrete part number"; "a selected
  component … is required to satisfy the requirements"; `realizedPartUsage` traceability). A
  contact inside a catalogue part has no "yet" and will never be realised by anything. Using
  `PartUsage` is mechanically fine but needs an explicit carve-out. `PartNumberType` has no
  literal for "physically existing but not separately orderable" (`VirtualPart` says *not
  physically existing*).
- **`PrimaryPartType` and TC-0004.** `PrimaryPartType` is a closed, single-valued enumeration, so
  a ZSB is either `PartStructure` or the component type, never both. The USB-cable question is
  answered at `composite-parts` line 70 (`PartStructure`) but only inside the assembly text and
  the KBL mapping. TC-0004 (*"there shall be one [specification] corresponding to the
  `PrimaryPartType`"*) will flag any producer shipping only the connector-housing slice of a
  `PartStructure` part — which D-M and `description-of-parts` explicitly allow.

→ [Decision 2](#decision-2--recommended-construction-for-catalogue-parts-with-inner-structure),
[Decision 3](#decision-3--marking-and-type-of-contained-anonymous-parts).

### 4.2 Within the harness: layers, brackets and control information (#1158)

D-G/D-H/D-I are largely **already practised** in `composite-parts#details` and the KBL mapping,
but not stated as rules, and in two respects the wiki is narrower than the decision:

- The "one container per layer" rule exists only as a half-sentence inside the KBL-mapping
  guideline (`harness` line 258) together with the `COMPONENTS` / `MODULES` identification
  convention (lines 281, 310). It belongs in `composite-parts`, and it must say **container
  specification** — `CompositionSpecification.component` is typed `PartOccurrence` only, so a
  layer without part numbers (D-H's `PartUsage` bracket) needs a `PartUsageSpecification`, exactly
  as `composite-parts#part-master-data` already describes for assemblies.
- The reasoning chain *control information ⇒ occurrence ⇒ container* is nowhere written; readers
  see the `MODULES` container without its justification.
- `LogisticControlInformation` (used in the notes) is a KBL attribute; the VEC terms are
  `VariantConfiguration.logisticControlExpression` + `ConfigurationConstraint`.
- `harness` line 345 requires *"one instance of each per harness"* for the two variant
  specifications — ambiguous once several harnesses, or a merged Bordnetz, share a file.
- **T-parts** (component occurrences shared by several modules or belonging to none) are
  unresolved in the thread and unmentioned in the wiki. D-I ("controlled via its modules") does
  not apply to an occurrence that belongs to no module. → [Decision 4](#decision-4--t-parts-and-control-information-inheritance).

Editorial defects in the KBL mapping, uncontroversial: the harness-level
`PartStructureSpecification` listing (lines 330–335) lacks `<Content>Harness</Content>`; the
mermaid edge label `PartStructureSpecification -- in BoM --> PartOccurrence` (lines 204, 238, 255)
reads backwards and is inconsistently cased.

### 4.3 Above the harness: the Gesamtbordnetz (#1158)

**Premise correction first.** The issue states that `Content = 'Bordnetz'` is no longer possible
since `PartStructureContentType` was introduced. It is an `OpenEnumeration` → `xs:string` in the
standard schema, `xs:enumeration` only in the strict schema. The value is still schema-valid; what
was lost is standardisation. (The class pages did not render the stereotype since v2.0.2 — fixed
in `82f20997`, so this is now visible to readers.) The decision is therefore *whether the network
level deserves a standardised literal*, not whether a value can be written.

**Nothing in the wiki describes a level above the harness.** `PartStructureContentType` stops at
`Harness`; the only network-scoped `DocumentType` is `HarnessCoupling`, explicitly limited to
coupling information; `product-definition/_index.md` line 47 treats a vehicle network as a flat
set of `HarnessDescription`s.

Three candidate readings of "Gesamtbordnetz", not mutually exclusive:

1. **A flat set** of `HarnessDescription`s in one exchange — nothing new needed; optionally
   bracketed by a `BaselineSpecification`.
2. **A `PartStructure` level** above the harness — `PartVersion` (`PrimaryPartType = PartStructure`)
   whose `inBillOfMaterial` are harness occurrences; needs a `PartStructureContentType` literal.
3. **A bracket without part number** — as (2) with `PartUsage`s in a `PartUsageSpecification`
   (D-H), or expressed via `Project` / `BaselineSpecification` instead of a part structure.

With D-M in force, (2)/(3) no longer imply cloning every module of every harness (see 3.2), which
removes the strongest practical objection to them.

The **merge half of D-K** conflicts with `general-structure#combination-and-reuse-of-documents`
(*"the assignment of information pieces to its original `DocumentVersion` shall remain
unchanged"*). This is the same conflict #1160 R6 identified for `elog-layers/system-schematic`;
the Bordnetz is a second worked example of that carve-out, not a new exception.

→ [Decision 5](#decision-5--representation-of-the-gesamtbordnetz),
[Decision 6](#decision-6--merge-behaviour-and-container-scoping).

---

## 5. Theme III — `DocumentVersion`: scope, cardinality, structure preservation (#1160, #1158)

The #1160 rules R1–R7 are decided (D-A…D-E) and their page actions are unchanged
(`issue-1160-analysis.md` §5). What #1158 adds are **cardinality questions that #1160 answered
only implicitly**:

| Question (#1158) | Answer available today | Gap |
|---|---|---|
| Several harnesses in one file? | Yes — `product-definition/_index.md` line 47; `partitioning-sizing-packaging#background` ("a harness, a set of harnesses") | Make it findable from the harness guideline |
| One `HarnessDescription` for all modules/variants, or one each? | One — `_index.md` line 44 ("_all_ variants and modules"), `harness#documentversions`; `DocumentVersion.referencedPart` is `0..*` | State it as a rule |
| How many `HarnessDescription`s per file? | Governed by `partitioning-sizing-packaging` ("as small as possible, as large as necessary") | `relref`, don't invent a limit |
| How many per `PartVersion`? | TC-0003: at most one `Specification` of each type per `PartVersion` ⇒ one `PartStructureSpecification`. Nothing about `DocumentVersion`s | Open — collides with #1160 R5 (partial contributions to a target dataset) and TC-0005 |
| Several Bordnetze in one file? | Nothing | Open, follows from Decision 5 |

→ [Decision 7](#decision-7--cardinality-of-harnessdescription-per-partversion).

A note for #1160's own action list: `elog-layers/coupling-devices` line 68 (*"the containment of
`Specification`s in their `DocumentVersion`s has a semantic meaning"*) contradicts D-B and becomes
more visible once D-K allows re-cutting.

---

## 6. Decisions for the Group

Ordered by dependency. Each states the options, a **proposed answer** where the evidence supports
one, and what it unblocks.

### Decision 1 — Replacement rule for instantiation

*Consolidates #1078 Q4, Q5 and #1158 Q4.* D-M removes the `shall`; what goes in its place?

- **1a Modality.** Proposed: *"Only elements required for the definition of the respective context
  need to be instantiated. Where an instantiation element exists, its type link
  (`referencedCavity`, `referencedWireElement`, `partStructureSpecification`, …) and — for
  library parts — its `instanciatedOccurrence` / `instanciatedUsage` traceability **shall** be
  set."* This keeps the three justifications at `composite-parts` lines 122–126 (redefinition of
  identifiers/properties, placement/routing) as the *reason to instantiate*, not as an obligation.
- **1b Absence semantics.** Proposed: state that a missing instantiation element is "no
  statement", name the `general/xml-xsd` tightening route, and **do not** add an "explicitly
  unused" marking to the model unless a concrete use case is named.
- **1c In-place modules.** Proposed: a module occurrence's `PartWithSubComponentsRole` **may** omit
  `subComponent`; if filled, it shall be a subset of the `PartStructureSpecification`'s
  `inBillOfMaterial`. The sentence *"This unifies the handling of assemblies and modules for
  reading systems"* is removed, not softened — it is no longer true.
- **1d Page shape.** `general/instantiation` keeps its URL and its type→instance correspondence
  paragraph; the rule paragraph is replaced.

Unblocks: all Theme I edits; #1158 Q7; the pigtail example.

### Decision 2 — Recommended construction for catalogue parts with inner structure

*#1078 Q1.* Options: (3) assembly — D-L as taken; (4) described-but-atomic — the model option
D-L did not consider; both, with a criterion.

Proposed: **both**, with the criterion *"do the contained components have (or will they get) a
part number in the issuing process?"* — yes → (3) assembly, `Content = Assembly`; no → (4)
atomic with a `PartUsageSpecification` describing the internals. `PartRelation` remains for
components **not** included in the part number. `ModularSlot` remains for selectable inserts. The
decision table goes into the new page ([7.6](#7-consolidated-action-plan)).

If the group instead confirms (3) only, the model sentence on atomic parts needs a scope, because
it currently reads as a general rule and contradicts the recommendation.

### Decision 3 — Marking and type of contained anonymous parts

*#1078 Q2, Q3.*

- **3a `PrimaryPartType`.** Under (3): `PartStructure` (as `composite-parts` line 70). Under (4):
  the component type. Proposed: say so explicitly on the new page and delimit *hybrid* (one part,
  several characteristics) from *composite* (one part, several contained components) at
  `component-description` line 56.
- **3b TC-0004.** Proposed: add a documented exception — a `PartVersion` described only by
  specifications that are not its primary one is a *partial description*, permitted per
  `description-of-parts`; TC-0004 becomes a warning, or is scoped to `PartMaster` documents that
  claim completeness.
- **3c `PartUsage` inside a part master description.** Proposed: guideline convention — such a
  `PartUsage` denotes a fully determined component without own part number; no
  `realizedPartUsage` is expected. Widen the `PartUsage` class documentation accordingly. No new
  `PartNumberType` literal unless the group prefers the `PartVersion` route.

### Decision 4 — T-parts and control-information inheritance

*#1158 Q3, A9.* Should a component occurrence shared by several modules, or by none, be listed in
the `inBillOfMaterial` of the modules that need it — all, one, none?

Proposed: **all** modules that require it list it (the BOM of each module is then truthful, and
D-I applies); an occurrence in no module carries its own `ConfigurationConstraint`. Needs
confirmation because it affects quantity semantics (`OccurrenceOrUsage.quantity`) when a shared
occurrence is counted once per module.

### Decision 5 — Representation of the Gesamtbordnetz

*#1158 Q1, Q2, Q8.*

- **5a Terminology.** Confirm *Leitungsstrang* = `Harness` (150 %) and that no additional level
  between module and harness is intended. (Blocks everything below.)
- **5b Reading.** Proposed: document (1) flat set as the default; (2)/(3) as the representation
  when the network has its own identity (drawing/part number) — with D-M making them cheap.
- **5c `PartStructureContentType` literal.** Proposed: add one (working name `VehicleNetwork`:
  *"complete set of wiring harnesses of a vehicle; the BOM consists of `Harness` / `Variant`
  parts, not of components"*), only if 5b admits (2). Independently: document on the class that
  process-specific values are permitted by the standard schema but not by the strict one.
- **5d `DocumentType` literal.** `VehicleNetworkDescription` — proposed **not yet**: a
  `BaselineSpecification` already answers "which harness versions belong together" and
  `HarnessCoupling` covers the network-level coupling document; a new literal needs content
  neither provides. Revisit if 5b admits (2) and a bracket document is wanted. `NetworkArchitecture`
  must be documented at the same time to avoid confusion.

### Decision 6 — Merge behaviour and container scoping

*#1158 Q6.* When a Bordnetz is merged into one `DocumentVersion` (D-K):

- Proposed: containers are **kept per harness** inside the shared document (one `COMPONENTS` per
  harness), and D-G is scoped "one container per layer **per harness**". This preserves
  traceability, keeps `harness` line 345 ("per harness") meaningful, and still satisfies D-K.
- The case is written as the second worked example of the #1160 R6 semantic-merge carve-out in
  `general-structure`, alongside `system-schematic`.

### Decision 7 — Cardinality of `HarnessDescription` per `PartVersion`

*#1158 Q5, #1160 R5.* May two `HarnessDescription` `DocumentVersion`s describe the same harness
`PartVersion` (e.g. a 3D contribution and an electrical contribution)?

Proposed: **yes, as partial contributions before a merge** (#1160 R5), with exactly one of them —
the one owning the BOM — carrying the `PartStructureSpecification` (TC-0003 stays). After the
merge there is one `DocumentVersion` (TC-0005 stays). Written once, in `digital-change-tracking`,
and referenced from `product-definition/_index.md`.

### Decision 8 — Cross-organisational equivalence (split out)

*#1078 Q6.* "Monolithic for the OEM, a structure for the manufacturer." `ItemEquivalence` exists,
accepts differing attributes per scope, and is `ItemVersion[2..*]`, so it can relate a
`ConnectorHousing` `PartVersion` to a `PartStructure` `PartVersion` — but nothing says this is
intended, and there is no implementation guideline for `ItemEquivalence` at all.

Proposed: **split into its own issue**; it needs its own page under `pdm-information` and is not
blocking anything above.

### Decision 9 — Housekeeping that needs no discussion, only a go

- Front matter `classes:` on `general/instantiation` (`null`), `product-definition/harness`
  (empty), `composite-parts`, `component-description`, `digital-change-tracking`,
  `interface-behaviour`, `product-definition/_index.md` (`null`) — per `cross-references.md`.
- `harness` KBL mapping: add `<Content>Harness</Content>` (lines 330–335); relabel BOM mermaid
  edges (204/238/255).
- Model typo *"CompositionSpecificiation"*.
- `vec-wiki` skill `glossary.md`: `Wire` → `WireElement` / `WireSpecification`.
- #1078 comment "Possibly duplicated issues" — name and close them before drafting.

---

## 7. Consolidated Action Plan

One entry per page. **Blocked by** names the decision(s) that must be taken first; entries without
a blocker can start now. Line references are in the three source analyses.

| Page | Status | Action | Blocked by |
|---|---|---|---|
| `general/instantiation` | **affected (central)** | Replace completeness `shall` with the Decision 1 rule; absence = "no statement"; `relref` `general/xml-xsd` tightening; cross-ref `component-instances#instantiation-with-roles`; populate `classes:` | 1 |
| `product-definition/composite-parts` | **affected (all three issues)** | Line 120 → Decision 1a; line 186 → 1c, remove the "unifies handling" sentence; add the layer rule (container = `CompositionSpecification` **or** `PartUsageSpecification`) with the control-info ⇒ occurrence ⇒ container reasoning; extend harness level beyond modules incl. `PartUsage` bracket; add the "described but atomic" construction; add a `PartUsage` subcomponent example; give the mechanism for neutral modules (D-J); Bordnetz section; `classes:` | 1, 2, 5 |
| **New** `product-definition/catalogue-parts` | **new** | Decision table across the four mechanisms; catalogue-connector worked example (which specs the contacts need for crimp/cavity checkers); E/E-component-with-pigtail example showing per-layer views; consumption by `relref` to #1160 R3 | 1, 2, 3 |
| `product-definition/harness` | **affected** | Line 310 → 1c; line 258 → `relref` the general layer rule; line 345 scope "per harness"; `<Content>Harness</Content>`; mermaid labels; `COMPONENTS`/`MODULES` stated as a mapping recommendation; `classes:` | 1, 6 |
| `product-definition/component-instances` | **minor** | Cite `#instantiation-with-roles` as the precedent; add the anonymous-`PartUsage` carve-out at `#shared-specifications` | 3c |
| `product-definition/component-description` | **minor** | Delimit hybrid vs. composite at line 56; "can be recognised with `DocumentType`" → "is normally marked with" (#1160); cite `#content-requirements` from `general/instantiation`; add `DocumentType` to `classes:` | 3a |
| `product-definition/_index.md` | **minor** | Soften "all information" (line 44); add D-E definition; state one-`HarnessDescription`-per-harness and the file-cardinality `relref`; per-`PartVersion` answer by `relref`; populate `classes:` | 7 |
| `key-concepts/general-structure` | **affected** | #1160 R1/R2/R6/R7 edits; generalise the structure-preservation `SHALL` and add the semantic-merge carve-out with **two** worked examples (`system-schematic`, Bordnetz); `### Harness Description` under `## Types of Documents` written as typical scope with optionality | 6 |
| `key-concepts/digital-change-tracking` | **affected** | #1160 R5 target-dataset section; Decision 7 answer; `classes: [DocumentVersion]` | 7 |
| `general/interface-behaviour` | **affected** | #1160 R3 "Navigating Information in a VEC" with the four recipes; extend `classes:` | — |
| `ee-components/fuses`, `ee-components/relays` | **affected** | "all structure elements underneath will be instantiated" → context-relevant elements | 1 |
| `elog-layers/coupling-devices` | **minor** | Line 68 "containment has semantic meaning" → align with D-B | — |
| `compliance-tests` | **re-check** | TC-0004 exception per 3b; TC-0003/0005/0009 unchanged; consider a `subComponent ⊆ inBillOfMaterial` test if 1c is adopted | 1, 3 |
| `component-types/accessories`, `component-types/connectors`, `product-definition/coupling`, `general/partitioning-sizing-packaging`, `general/xml-xsd`, `elog-layers/system-schematic` | no change | Cited / `relref`'d from the above | — |
| `pdm-information` | adjacent | `ItemEquivalence` guideline if Decision 8 is pursued | 8 |
| `vec-wiki` skill `glossary.md` | housekeeping | `Wire` → `WireElement` / `WireSpecification` | — |

---

## 8. Model (Documentation) Changes

| Element | Change | Blocked by |
|---|---|---|
| `DocumentType` literals | Document `WiringDescription`, `InstallationDescription`, `ManufacturingDescription` (#1160 §4 has draft text), `NetworkArchitecture`, `SystemSchematic`, `ChangeDescription`; sharpen `GeometryModel*`; add "not a specialisation hierarchy" to the class | — |
| `DocumentType` — `VehicleNetworkDescription` | Only if Decision 5d reverses the proposal | 5 |
| `PartStructureContentType` — class doc | State that the listed literals are the standardised set; process values pass the standard schema, fail the strict one | — |
| `PartStructureContentType` — literal | Network-level literal | 5b/5c |
| `PartStructureSpecification.content` | Document that `content` classifies the described part's aggregation level and implies completeness (10/100/150 %) and permitted BOM element types | — |
| `instantiation-approaches` | Align the "shall be maintained consistently" sentence with Decision 1c | 1 |
| `assemblies-modules-and-harness-configurations` | Promote the "atomic part" note to a proper paragraph with the catalogue-part example, or scope it | 2 |
| `CompositionSpecification` | Sharpen the antenna-cable example: superset-of-BOM (150 %) vs. no-BOM (catalogue part); fix typo | 2 |
| `PartUsage` | Widen "yet not possible to define a concrete part number" | 3c |
| `PartNumberType` | Literal for "real but not separately orderable" — only if 3c takes the `PartVersion` route | 3c |
| `CavityReference` et al. | "Explicitly unused" marking — only if 1b is rejected | 1b |
| `ItemEquivalence` | State whether differently decomposed parts may be equivalent | 8 |

---

## 9. Proposed Sequence

1. **Session 1 — Decisions 1, 2, 3, 9.** These are the already-decided directions (D-L, D-M)
   needing only their concrete form. They unblock `general/instantiation`, `composite-parts`
   (Theme I parts), fuses/relays, and the new catalogue-parts page.
2. **Session 2 — Decisions 5, 6, 4, 7.** The Bordnetz thread. Start with 5a (terminology); 5b
   determines whether 5c/5d are needed at all.
3. **Decision 8** split into its own issue; not on the critical path.
4. **Execution** as one branch touching `composite-parts`, `general/instantiation` and
   `general-structure` once, with the #1160 page actions folded in — not three PRs.
