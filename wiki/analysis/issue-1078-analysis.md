# Analysis of Discussion / Change Proposal — Issue #1078 "Abbildung von Katalogteilen mit innerer Struktur" (KBLFRM-1213)

---

## 0. Scope of this Analysis

Issue [#1078](https://github.com/prostep-ivip-e-V/vec/issues/1078) asks for an agreed methodology
for **catalogue parts that have an inner structure** — a part that is ordered under one catalogue
number but physically contains further components (contacts, seals, shield clamps, caps), or an
E/E component delivered with a pigtail ending in a connector. The contained components typically
have **no part number from the customer's point of view**, yet design tools and rule checkers need
their design-relevant properties (contact type and size, crimp ranges, mating capability,
geometry).

The thread contains two decisions and one open strand:

- **19.02.2025** — such parts must be modelled as an **assembly (ZSB)** containing
  `PartUsage`s / `PartOccurrence`s for the contained items, *not* as "an E/E component that has a
  bill of material". Consuming use cases filter the occurrences/specifications relevant to them.
  The decision explicitly notes the consequence: *"die bisherige Forderung nach vollständiger
  Instanziierung … kann nicht aufrecht gehalten werden"*.
- **18.03.2026 / 19.03.2026** — the **completeness requirement for instantiation must be dropped**,
  both in `product-definition/composite-parts#usage-of-an-assembly` and completely in
  `general/instantiation`. Only the instantiation of elements required for the context definition
  is necessary.
- Still open: what the `PrimaryPartType` of such a part is (*"USB-Leitung (Assembly, Leitung,
  Stecker?)"*), and the cross-organisational problem raised on 10.03.2026 — a part that looks
  monolithic to the OEM decomposes into many subparts at the manufacturer.

This analysis covers what the wiki says today, what contradicts the decisions, what has to be
written, and what is still undecided. **Sections 5 and 6 separate implementation-guideline changes
from model (documentation) changes.**

### Relationship to the other open analyses

The 19.03.2026 decision here is the **general form** of the question logged as Q4 in the
[#1158 analysis](./issue-1158-analysis.md) (must an in-place module's `PartWithSubComponentsRole`
repeat the full `inBillOfMaterial` list?). Both were decided in the same meeting, roughly
20 minutes apart, and both land on the same two pages. **They must be executed as one coordinated
edit**, otherwise the second edit will re-introduce what the first removed. #1078 owns the rule;
#1158 Q4 becomes a consequence of it rather than a separate decision.

The [#1160 analysis](./issue-1160-analysis.md) owns the statement that a receiver must navigate
the model rather than the document structure (R3) and that `DocumentVersion` scope is
process-specific (R1/R4). Both are prerequisites for the "different editors see different parts of
the assembly" concern raised on 10.03.2026 — cross-reference, do not restate.

---

## 1. What the Wiki Says Today

| Topic | Where | Substance |
|---|---|---|
| Assemblies (library approach) | `product-definition/composite-parts#assemblies` | A composite part gets a `PartVersion` with `PrimaryPartType = PartStructure`, a `PartStructureSpecification` with `Content = Assembly`, and a container (`CompositionSpecification` **or** `PartUsageSpecification`, line 64) for its subcomponent instances. |
| Complete instantiation of an assembly | `composite-parts#usage-of-an-assembly` line 120 | *"all subcomponents (referenced by the `PartStructureSpecification`) **must be** instantiated in the using context as well … By default, those are clones of their part master data definitions."* |
| Complete instantiation in general | `general/instantiation` lines 23–34 | *"these structures shall be instantiated completely … for every element in the structural definition a corresponding element in the instancing shall exist, **regardless if it is used in the respective VEC or not**"*, listing Connectors, Wires, EEComponents, CompositeParts. |
| Optionality of `Role`s | `product-definition/component-instances#instantiation-with-roles` line 85 | *"Following the principle of optionality … it is not required to create `Role`s, for all the `PartOrUsageRelatedSpecification`s referenced in the part master data, if the corresponding aspect is not relevant in the individual context."* |
| Optionality of specifications | model `general-component-data/description-of-parts` | *"It is **not** required to describe every `PartVersion` in a specific VEC file with a corresponding `PartOrUsageRelatedSpecification`, if the information is not required in the context of the VEC file."* |
| Accessories / supplementary parts | `component-types/accessories`, model `general-component-data/supplementary-parts` | `PartRelation` in a `GeneralTechnicalPartSpecification` expresses caps, locks, clips. `PartRelation` documentation: *"they are **not included with the part number** and have to [be] ordered separately."* |
| Modular connectors | `component-types/connectors#modular-connector` | Housing + inserts are **not** an assembly: they use `PartRelation` + `ModularSlot` / `ModularSlotReference`, deliberately *"only based on `PartVersion` links and ID matching … supports the distribution of part master data with one VEC file per component."* |
| Described-but-atomic parts | model `composite-part-descriptions/assemblies-modules-and-harness-configurations` | *"A `PartVersion` without a separate `PartStructureSpecification` shall be regarded as one atomic part out of a bill of material perspective even if it is referenced by a `DocumentVersion` containing a `CompositionSpecification` with several occurrences."* |
| Hybrid parts | `product-definition/component-description` line 56 | *"there can be cases of 'hybrid' components that fall into more than one category. In this case, the `PrimaryPartType` defines the primary character."* |
| Cross-company identity | model `pdm-information/item-equivalence` | `ItemEquivalence` relates `ItemVersion`s across company scopes; *"the same component might have different approved operating conditions depending on the company scope, which results in differing technical attributes."* |

---

## 2. The Decisive Finding: the Model Already Has a Fourth Option

The 19.02.2025 discussion framed the choice as **two** alternatives — "a ZSB that contains an
E/E component / connector" vs. "an E/E component that has a bill of material" — and rejected the
second on four grounds (BOM means *built from*; which of two contained connectors is "leading";
why do assemblies without a leading character exist; "leading" depends on use case).

**The model already provides a third construction that neither alternative covers**, and it is
documented on exactly the case in this issue:

> `CompositionSpecification` (class documentation): *"used to define a set of occurrences required
> to describe unambiguously the design of a composite part. **This does not have to be necessarily
> the same occurrences which are building the bill of material.** Example: A company might want to
> regard an antenna cable as one part out of a bill of material perspective. However, at the same
> time it may be useful for the company to be able to describe the contacting of the antenna cable
> within the VEC."*

> `composite-part-descriptions/assemblies-modules-and-harness-configurations`: *"A `PartVersion`
> without a separate `PartStructureSpecification` shall be regarded as **one atomic part out of a
> bill of material perspective** even if it is referenced by a `DocumentVersion` containing a
> `CompositionSpecification` with several occurrences."*

In other words: a Rosenberger-style catalogue connector can be a `PartVersion` with
`PrimaryPartType = ConnectorHousing`, a `ConnectorHousingSpecification`, **and** a
`CompositionSpecification` / `PartUsageSpecification` describing its internal contacts and seals —
with **no** `PartStructureSpecification`. It is then internally described but atomic in the BOM,
which is precisely what "the contained parts have no customer part number" means, and it does not
trigger objection #1 of the 19.02.2025 decision ("the BOM would mean the part is *built from*
these") because there is no BOM at all.

**This option is entirely absent from the implementation guidelines.** `composite-parts` mentions
`atomic` only in its inverse (line 46: assemblies are *"not considered atomic"*), and the
`CompositionSpecification`-without-`PartStructureSpecification` case is never shown. An implementer
reading only the guidelines cannot discover it.

Whether the group wants it as the recommended answer, as a permitted alternative, or explicitly
ruled out is [Q1](#q1--which-of-the-four-constructions-is-the-recommended-one). What is not
tenable is leaving a normative model statement that the guidelines never mention while the
guidelines recommend a different construction for the same case.

---

## 3. Inconsistencies Found

### F1 — The completeness requirement contradicts three other statements already, before any change

| Requires completeness | Denies completeness |
|---|---|
| `general/instantiation` lines 23–29 (`shall`, *"regardless if it is used in the respective VEC or not"*) | `component-instances#instantiation-with-roles` line 85 (*"not required to create `Role`s … if the corresponding aspect is not relevant"*) |
| `composite-parts#usage-of-an-assembly` line 120 (`must be`) | model `general-component-data/description-of-parts` (*"not required to describe every `PartVersion` … with a corresponding `PartOrUsageRelatedSpecification`"*) |
| `ee-components/fuses` line 33 and `ee-components/relays` line 39 (*"all structure elements underneath will be instantiated"*) | `general/interface-behaviour#content-of-a-vec` (a receiver *"shall be able to accept any valid VEC"* and must tolerate missing information) |

The 18.03.2026 comment identifies the first two rows; **the fuses and relays pages are the third
and are not mentioned in the thread**. They state the completeness expectation as plain fact
("all structure elements underneath will be instantiated") rather than as a rule, so they will
silently keep asserting it after `general/instantiation` is changed.

### F2 — Dropping completeness removes the "explicitly unused" signal, with no replacement

This is the cost of the decision and it should be recorded, because it is not reversible by
tooling:

- Today, `general/instantiation` guarantees a `CavityReference` exists for **every** `Cavity`.
  Therefore a `CavityReference` with no `ComponentPort` / no contacting means *"this cavity is
  deliberately empty"*.
- After the change, the absence of a `CavityReference` is ambiguous: *"cavity unused"* or
  *"cavity not modelled by this producer"*.
- There is no attribute to disambiguate. `CavityReference` has only `identification`,
  `componentPort`, `referencedCavity`, `integratedTerminalRole`. `Cavity.available` is master data
  (a property of the type), not a statement about a usage.

The same argument applies to `SlotReference`, `WireElementReference` and
`HousingComponentReference`. The guideline text must say explicitly that absence now means
"no statement", not "empty" — otherwise existing readers will silently misinterpret new files.
Processes that need the stronger guarantee can re-impose it per
`general/xml-xsd#motivation-and-objective` (XSD 1.1 assertions, schema filtering, or Schematron);
that escape hatch should be named in the same paragraph.

### F3 — `PartUsage` semantics do not fit a permanently anonymous contained part

The issue proposes `PartUsage`s for the contained contacts. The model and guidelines currently
define a `PartUsage` as an **open requirement**:

- `PartUsage` class documentation: *"in cases where it is necessary to describe a certain instance
  of a part or part group … but where it is at the same time **yet not possible** to define a
  concrete part number."*
- `component-instances#shared-specifications`: *"in the final product a selected component, which
  is taking the place of the `PartUsage`, is **required to satisfy the requirements** expressed by
  the referenced specifications."*
- `topology/requirements#partusage`: the referenced specifications *"express **requirements** …
  that must be satisfied by the `PartOccurrence` selected later in the process."*
- `component-instances#realization-of-partusages-with-partoccurrences` builds the whole traceability
  story on `realizedPartUsage`, i.e. on a later refinement step.

For a contact inside a catalogue part there is no "yet" and no later selection: the component
physically exists, is fully determined by the supplier, and will *never* acquire a customer part
number. Using `PartUsage` here is mechanically correct but semantically a different thing from
every existing `PartUsage` example in the wiki. The guideline must state explicitly that a
`PartUsage` inside a catalogue part's description denotes a **permanently anonymous real
component**, not an open requirement — or [Q3](#q3--how-is-a-permanently-anonymous-contained-part-marked)
must settle a different marking.

### F4 — Three existing mechanisms cover overlapping physical situations with no delimitation

A connector that "brings its own caps, contacts and seals" can today be modelled in at least four
ways, and nothing in the wiki says which to use when:

1. **`PartRelation` / accessories** — `component-types/accessories`. Criterion in the model:
   *"not included with the part number and have to [be] ordered separately."*
2. **`ModularSlot` / inserts** — `component-types/connectors#modular-connector`. Used where the
   inner components are selectable variants of the same housing.
3. **`PartStructureSpecification` / assembly** — `composite-parts#assemblies`. The BOM route, the
   one the 19.02.2025 decision points to.
4. **`CompositionSpecification` without `PartStructureSpecification`** — described but atomic
   (section 2).

The `PartRelation` criterion (*included in the part number or not*) is a crisp, usable dividing
line between (1) and (3)/(4) and is **only in the model documentation, never in the guidelines**.
A decision table belongs in the new guideline text.

### F5 — `PrimaryPartType` for a composite part is answered only inside the KBL mapping

The 18.03.2026 comment asks what the `PrimaryPartType` of a USB cable is. The answer exists twice,
both times in places a reader of this issue would not look:

- `composite-parts#part-master-data` line 70: *"the `PartVersion` of the assembly has a
  `PrimaryPartType = "PartStructure"`"*.
- `product-definition/harness#partversions`: KBL `Assembly_Part` / `Module` / `Harness` →
  `PartStructure`.

`PrimaryPartType` is a **ClosedEnumeration** (per `basic-datatypes/open-and-closed-enumerations`,
which names `PartVersion.primaryPartType` as its example), so exactly one value must be chosen —
there is no "Assembly *and* ConnectorHousing". The open part is the interaction with
`PrimaryPartType = PartStructure` and the "hybrid component" paragraph in
`component-description` line 56, and with compliance test **TC-0004** (*"If a `PartVersion` is
`describedBy` `PartOrUsageRelatedSpecification`s there shall be one corresponding to the
`PrimaryPartType`"*): a ZSB connector delivered with a `ConnectorHousingSpecification` but whose
`PartStructureSpecification` is not in this particular VEC slice will fail TC-0004. See
[Q2](#q2--primaryparttype-hybrid-parts-and-tc-0004).

### F6 — The cross-organisational case has a mechanism, but not for this shape

The 10.03.2026 comment describes a part that is monolithic for the OEM and decomposed for the
manufacturer. `ItemEquivalence` is the existing answer for differing identities across company
scopes, and its documentation already accepts differing technical attributes per scope. What it
does **not** obviously cover is an equivalence where the two sides have different *`PrimaryPartType`s*
(OEM: `ConnectorHousing`; manufacturer: `PartStructure`) or where one side is a single
`PartVersion` and the other a structure. `ItemEquivalence.item` is `ItemVersion[2..*]` so it is
mechanically possible, but no guideline says it is intended. There is currently **no
implementation guideline page for `ItemEquivalence` at all** — `pdm-information` covers only the
ISO 7200 title-block mapping.

### F7 — Nothing covers the E/E component with a pigtail

Searching the guidelines for pigtail / pre-assembled / `Kabelschwanz` returns only the
`composite-parts` assembly text and the KBL `Assembly_part` example ("e.g. a USB-Cable"). The
`ee-components` guideline describes E/E components purely through `HousingComponent` /
`PinComponent` and never the case where the component itself brings wires and a harness-side
connector. This is the example both the 19.02.2025 and 10.03.2026 comments use, so the tutorial
requested in the issue has no existing page to extend — see
[section 5.6](#56-new-page-catalogue-parts-with-inner-structure--affected-new).

### F8 — Front-matter `classes:` gaps on the pages that will carry the new rules

Per `cross-references.md` (*"if you write a sentence containing a normative keyword and name a
class, that class belongs in `classes:`"*):

- `general/instantiation` has `classes: null` while carrying the central `shall` of this issue and
  naming `ConnectorHousingSpecification`, `ConnectorHousingRole`, `Slot`, `SlotReference`,
  `Cavity`, `CavityReference` by shortcode. It needs all of them once rewritten.
- `product-definition/composite-parts` lists `PartStructureSpecification`,
  `CompositionSpecification`, `PartStructureContentType`, `PartWithSubComponentsRole` but not
  `PartOccurrence`, `PartUsage`, `PartUsageSpecification`, `PartVersion` or `DocumentVersion`.
  (Also noted in the #1158 analysis — one edit, not two.)
- `product-definition/component-description` lists `PrimaryPartType`,
  `PartOrUsageRelatedSpecification`, `PartVersion` but not `DocumentType`, which it uses
  normatively at line 83.

---

## 4. Open Questions Requiring a Decision

### Q1 — Which of the four constructions is the recommended one?

The 19.02.2025 decision chose the assembly route (option 3 in [F4](#f4--three-existing-mechanisms-cover-overlapping-physical-situations-with-no-delimitation))
without the "described but atomic" option (4) on the table. Before the tutorial is written:

- Is (4) the recommended representation when the contained components have no customer part
  number, with (3) reserved for the case where they do?
- Or is (3) always the answer, and (4) deprecated in practice — in which case the normative model
  sentence about atomic parts needs a scope, because it currently reads as a general rule?
- If both are permitted, the delimitation criterion has to be stated. The natural candidate is the
  one `PartRelation` already uses: **is the contained item covered by the catalogue part number?**
  — but that criterion separates (1) from (3)/(4), not (3) from (4).

Note that choosing (3) re-raises objection #2 of the 19.02.2025 decision in a new place: if the
ZSB has a `PartStructureSpecification`, what is its `PartStructureContentType`? `Assembly` (100 %,
"definition of part / component without variance, which has a bill of material") fits structurally
but describes the catalogue part as *having a BOM*, which is the reading the decision rejected for
E/E components.

### Q2 — `PrimaryPartType`, hybrid parts, and TC-0004

Given `PrimaryPartType` is closed and single-valued:

- For a ZSB connector under construction (3): is the value `PartStructure`, with the connector
  aspect carried by a contained occurrence — or `ConnectorHousing`, with the assembly aspect
  carried by an additional `PartStructureSpecification` on the same `PartVersion` (the "hybrid
  component" paragraph in `component-description` line 56 permits this)?
- Under construction (4) the value is necessarily the component type (`ConnectorHousing`,
  `EEComponent`, `Wire`), since there is no `PartStructureSpecification`.
- Either way: does **TC-0004** need a carve-out? A producer who ships only the
  `ConnectorHousingSpecification` slice of a part whose `PrimaryPartType` is `PartStructure` will
  be flagged, even though `description-of-parts` explicitly allows shipping partial descriptions.
  This is a pre-existing tension that the new guidance will make routine.
- The USB-cable question from 18.03.2026 is answered by `composite-parts` line 70
  (`PartStructure`) for construction (3); confirm and make it findable outside the KBL mapping.

### Q3 — How is a permanently anonymous contained part marked?

Per [F3](#f3--partusage-semantics-do-not-fit-a-permanently-anonymous-contained-part), a `PartUsage`
inside a catalogue part is not an open requirement. Options:

- Declare it by convention in the guideline: *inside a part master description, a `PartUsage`
  denotes a component that is fully determined but has no own part number*, and no
  `realizedPartUsage` is ever expected.
- Use a `PartVersion` with `PartNumberType = VirtualPart` (*"used for structuring or modeling
  purposes … does not refer to a physically existing component in the final product"*) — but the
  documentation says *not physically existing*, which is wrong here: the contact does exist, it is
  merely not separately identified. `PartNumberType` has no literal for "real but not separately
  ordered".
- Add a marking to the model.

This has to be decided before the tutorial, because every XML example depends on it.

### Q4 — What survives of `general/instantiation`?

The decision says the completeness requirement must be dropped *completely*. That leaves the page
with only its introductory paragraph. Decide:

- Is the page rewritten around the replacement rule (*"only the instantiation of elements required
  for the context definition is necessary"*), kept at the same URL?
- If the replacement rule is `SHOULD`/`MAY`-flavoured rather than `SHALL`, does anything in the
  VEC still *require* an instantiation element to exist? (`PartWithSubComponentsRole.partStructureSpecification`
  is `1`, `CavityReference.referencedCavity` is `1`, `WireElementReference.referencedWireElement`
  is `1` — the model enforces the *link* where an element exists, never the *existence*.)
- Is the ambiguity from [F2](#f2--dropping-completeness-removes-the-explicitly-unused-signal-with-no-replacement)
  accepted as-is, or does the group want an "explicitly empty" marking added to the model?

### Q5 — Does `composite-parts#usage-of-an-assembly` keep a weaker rule?

Line 120's `must be` is being dropped, but the paragraph that follows it (lines 122–126) justifies
the re-instantiation with three genuinely useful capabilities (redefinition of identifiers,
redefinition of technical properties, placement/routing of the assembly in its usage). Decide
whether the replacement is:

- *"subcomponents **may** be instantiated in the using context; they **must** be instantiated for
  any subcomponent whose usage-specific properties, placement, routing or contacting is defined"* —
  i.e. completeness driven by what is actually said about the subcomponent; or
- a plain `may`, leaving it entirely to the producer.

The first preserves the reason the rule existed. Note the `instanciatedOccurrence` /
`instanciatedUsage` traceability link is orthogonal and should stay `shall` where an instantiation
*does* exist (it is `0..*`, so nothing enforces it).

### Q6 — Cross-organisational equivalence of differently decomposed parts

Per [F6](#f6--the-cross-organisational-case-has-a-mechanism-but-not-for-this-shape): is
`ItemEquivalence` the intended answer for "OEM monolith ≡ manufacturer structure", and may the two
sides have different `PrimaryPartType`s? If yes, this deserves a short implementation guideline of
its own (there is none today) rather than a paragraph buried in the ZSB tutorial. If no, the
"single source of truth across dataspaces" concern from 10.03.2026 needs a different answer and
should be split into its own issue.

### Q7 — Is this issue a duplicate?

The 24.09.2025 comment says *"Possibly duplicated issues"* without naming them, and the
19.02.2025 decision references KBLFRM-1263, which is not in this repository's issue set under that
name. Before drafting, resolve which GitHub issues this consolidates, so the tutorial is written
once.

---

## 5. Implementation-Guideline Changes

### 5.1 `general/instantiation` — **affected (the central edit)**

- Replace lines 23–34 with the decided rule: *only the instantiation of elements required for the
  definition of the respective context is necessary*. Blocked on [Q4](#q4--what-survives-of-generalinstantiation)
  for modality and page shape.
- Keep the introductory paragraph (lines 17–21): the type→instance correspondence pattern
  (`ConnectorHousingSpecification` → `ConnectorHousingRole`, `Slot` → `SlotReference`,
  `Cavity` → `CavityReference`) is still true and is the page's reason to exist.
- Add the explicit consequence from [F2](#f2--dropping-completeness-removes-the-explicitly-unused-signal-with-no-replacement):
  absence of an instantiation element is **"no statement"**, not "unused". Name the process-level
  tightening route by `relref` to `general/xml-xsd#motivation-and-objective`.
- Cross-reference `component-instances#instantiation-with-roles` — the two pages now say the same
  thing from different directions and should read as one rule.
- Populate `classes:` (currently `null`) — [F8](#f8--front-matter-classes-gaps-on-the-pages-that-will-carry-the-new-rules).

### 5.2 `product-definition/composite-parts` — **affected**

- Line 120: drop `must be`; replace per [Q5](#q5--does-composite-partsusage-of-an-assembly-keep-a-weaker-rule).
  Keep lines 122–126 (the three justifications) and re-anchor them to the weaker rule, so the
  rationale is not lost with the requirement.
- Add the "described but atomic" construction from [section 2](#2-the-decisive-finding-the-model-already-has-a-fourth-option)
  as an explicit alternative, with the `CompositionSpecification` documentation and the
  "atomic part" sentence from `assemblies-modules-and-harness-configurations` as its sources.
  Blocked on [Q1](#q1--which-of-the-four-constructions-is-the-recommended-one).
- Line 62–64 already permits `PartUsage`s for subcomponents, but every figure and XML listing on
  the page uses `PartOccurrence`. Add one `PartUsage` example — it is the case this issue is about.
- Line 70 (`PrimaryPartType = "PartStructure"`) is the answer to the USB-cable question; keep it
  and link it from the new page (5.6).
- Front matter `classes:` — see [F8](#f8--front-matter-classes-gaps-on-the-pages-that-will-carry-the-new-rules).
  **Coordinate with the #1158 analysis, which edits the same page for a different reason.**

### 5.3 `ee-components/fuses` and `ee-components/relays` — **affected (not noticed in the thread)**

Both state *"all structure elements underneath will be instantiated and reference their
corresponding part master element, too"* (`fuses` line 33, `relays` line 39) as a factual
description of how instantiation works. After the change this is no longer true. Reword to "the
structure elements relevant in the context are instantiated and reference their corresponding part
master element".

### 5.4 `product-definition/component-instances` — **minor update, must be cited**

- `#instantiation-with-roles` (line 85) is the precedent text for the new rule — reuse its phrasing
  and the established term **"principle of optionality"** rather than coining new wording
  (the #1160 analysis makes the same point for a different rule).
- `#shared-specifications` and `#realization-of-partusages-with-partoccurrences` carry the
  "`PartUsage` = open requirement" semantics. Add the carve-out from
  [F3](#f3--partusage-semantics-do-not-fit-a-permanently-anonymous-contained-part) here, where the
  semantics are defined, and link it from the new page. Blocked on [Q3](#q3--how-is-a-permanently-anonymous-contained-part-marked).

### 5.5 `product-definition/component-description` — **minor update**

- Line 56 ("hybrid components … the `PrimaryPartType` defines the primary character") is what an
  implementer will reach for when deciding the ZSB connector's type. Add a sentence delimiting a
  *hybrid* part (one part, several characteristics — a connector housing that is also a fixing)
  from a *composite* part (one part, several contained components). They are different situations
  that currently read the same. Blocked on [Q2](#q2--primaryparttype-hybrid-parts-and-tc-0004).
- `#content-requirements` (lines 99–103) already argues that logical constraints exist but are not
  enforced because a VEC is a fragment. This is the strongest existing support for dropping the
  completeness requirement — cite it from `general/instantiation`.
- Add `DocumentType` to `classes:`.

### 5.6 New page: "Catalogue Parts with Inner Structure" — **affected (new)**

The issue asks for a tutorial; no existing page can absorb it (three or more top-level sections, a
decision table and several XML listings), so per `content-conventions.md` it warrants its own URL.
Proposed location `product-definition/catalogue-parts/` (sibling of `composite-parts`, weight
between `composite-parts` (300) and `coupling` (400)). Content:

1. **The problem** — catalogue part number covers contained components that the customer cannot
   order separately; design tools nevertheless need their properties.
2. **Decision table** — which of the four constructions to use, keyed on: *is the contained item
   covered by the catalogue part number?* / *does the contained item have a customer part number?*
   / *is it a selectable variant of the same housing?* Links to `component-types/accessories`,
   `component-types/connectors#modular-connector`, `composite-parts`. Blocked on
   [Q1](#q1--which-of-the-four-constructions-is-the-recommended-one).
3. **Worked example: catalogue connector** (the Rosenberger case) with XML, showing which
   specifications the contained contacts must carry so that crimp and cavity rule checkers work
   (`TerminalSpecification` incl. crimp ranges, `CavitySpecification`, `WireReceptionSpecification`).
4. **Worked example: E/E component with pigtail** ([F7](#f7--nothing-covers-the-ee-component-with-a-pigtail)),
   showing the per-layer view: system schematic sees the `EEComponentSpecification` and its pins;
   wiring sees the harness-side connector's mating capability; 3D sees the placeable elements and
   the bundle segment. This is the concrete illustration of the new partial-instantiation rule.
5. **Consumption** — a receiver filters the occurrences/specifications relevant to it. Do **not**
   restate the navigation rules; `relref` the #1160 R3 section in `general/interface-behaviour`.
6. **Cross-organisational note** — `ItemEquivalence`, or a pointer to wherever [Q6](#q6--cross-organisational-equivalence-of-differently-decomposed-parts) lands.

### 5.7 `component-types/accessories` and `component-types/connectors` — **no change, must be cited**

Both are alternatives in the decision table (5.6 item 2). `accessories` supplies the
"not included with the part number" criterion via `PartRelation`; `connectors#modular-connector`
supplies the modular-insert route and the argument that master data must stay distributable as one
VEC file per component. Neither needs editing, but both must be linked from the new page so the
delimitation is discoverable from either side.

### 5.8 `compliance-tests` — **no change now; re-check after Q2**

No existing test enforces instantiation completeness, so dropping it needs no test change. TC-0004
may need a carve-out or a documented exception for partial part descriptions — see
[Q2](#q2--primaryparttype-hybrid-parts-and-tc-0004).

### 5.9 `general/interface-behaviour` — **no change, cross-reference**

`#content-of-a-vec` (*"A receiving system shall be able to accept any valid VEC"*, *"free to
ignore the pieces of information irrelevant for its purpose"*) is the receiver-side counterpart of
the new producer-side freedom. The #1160 analysis is already adding a navigation section here;
the new page should link to it rather than duplicating receiver guidance.

### 5.10 `pdm-information` — **adjacent, possibly new content**

There is no implementation guideline for `ItemEquivalence` today. If [Q6](#q6--cross-organisational-equivalence-of-differently-decomposed-parts)
is answered positively, this page (or a new sibling) is where it belongs, not in the ZSB tutorial.

---

## 6. Model (Documentation) Changes

### 6.1 `composite-part-descriptions/assemblies-modules-and-harness-configurations` — clarify or scope the atomic-part rule

The sentence *"A `PartVersion` without a separate `PartStructureSpecification` shall be regarded as
one atomic part out of a bill of material perspective even if it is referenced by a
`DocumentVersion` containing a `CompositionSpecification` with several occurrences"* is currently
an italicised `Note` carrying a `shall`. Depending on [Q1](#q1--which-of-the-four-constructions-is-the-recommended-one)
it either becomes the model anchor for the recommended construction — in which case it should be
promoted out of the note and given the catalogue-part example — or it needs a scope so it is not
read as endorsing a construction the guidelines discourage.

### 6.2 `PartUsage` — class documentation

*"…but where it is at the same time **yet not possible** to define a concrete part number"* excludes
the permanently anonymous case by its wording. Depending on [Q3](#q3--how-is-a-permanently-anonymous-contained-part-marked),
either widen it ("not possible, or not intended, to define a concrete part number — for example a
component contained in a catalogue part that is not separately orderable") or add the marking the
group decides on.

### 6.3 `PartNumberType` — literal gap

`VirtualPart` is documented as *"does not refer to a physically existing component in the final
product"*, `RealPart` as *"a physically existing part … uniquely refers to a concrete, realizable
item"*. Neither covers *"physically existing but not separately identified / orderable"*, which is
exactly the contained contact. If [Q3](#q3--how-is-a-permanently-anonymous-contained-part-marked)
goes the `PartVersion` route, a literal is needed; `PartNumberType` is an enumeration on
`PartVersion` and would be the natural place.

### 6.4 `CompositionSpecification` — surface the antenna-cable example

The class documentation already carries the decisive example (section 2) but it is buried in a
run-on paragraph and the wording *"This does not have to be necessarily the same occurrences which
are building the bill of material"* is easy to read as being only about 150 % harnesses. Sharpen it
to name both cases: occurrences that are a *superset* of the BOM (150 % harness) and occurrences
that describe a part with *no* BOM at all (catalogue part).

### 6.5 "Explicitly unused" marking — blocked by Q4

If the group does not accept the ambiguity in [F2](#f2--dropping-completeness-removes-the-explicitly-unused-signal-with-no-replacement),
a model addition is required — e.g. a boolean on `CavityReference` / `SlotReference`, or a
convention that an instantiation element present with no further content means "explicitly unused".
The latter needs no model change but does need the completeness rule's replacement to say so.

### 6.6 `ItemEquivalence` — documentation (blocked by Q6)

If differently decomposed parts may be declared equivalent, say so in the class documentation and
in `pdm-information/item-equivalence`; today both are written around the simple part-number
translation case (OEM → Tier 1 → component supplier).

---

## 7. Summary

| Page / artefact | Status | Action |
|---|---|---|
| `general/instantiation` | **affected (central)** | Drop the completeness `shall`; replace with "only what the context requires"; state that absence means "no statement", not "unused"; name the XSD-assertion tightening route; populate `classes:` |
| `product-definition/composite-parts` | **affected** | Weaken line 120's `must be` while keeping its three justifications; add the "described but atomic" construction; add a `PartUsage` example; fix `classes:` — **coordinate with the #1158 edit to the same page** |
| `ee-components/fuses`, `ee-components/relays` | **affected** | "all structure elements underneath will be instantiated" → context-relevant elements (not noticed in the issue thread) |
| `product-definition/component-instances` | **minor update** | Supplies "principle of optionality" — cite, don't restate; add the carve-out that a `PartUsage` inside a catalogue part is not an open requirement |
| `product-definition/component-description` | **minor update** | Delimit *hybrid* from *composite* parts at line 56; cite `#content-requirements` as support for dropping completeness; add `DocumentType` to `classes:` |
| **New**: `product-definition/catalogue-parts` | **affected (new)** | The tutorial the issue asks for: decision table across the four constructions, catalogue-connector and pigtail worked examples, consumption guidance by cross-reference |
| `component-types/accessories`, `component-types/connectors` | no change | Alternatives in the decision table; supply the "not included with the part number" criterion and the modular-insert route — link from the new page |
| `general/interface-behaviour`, `general/xml-xsd` | no change | Receiver tolerance and the process-level tightening route — `relref` both |
| `compliance-tests` | no change now | No test enforces completeness; TC-0004 may need a carve-out after Q2 |
| `pdm-information` | adjacent | No `ItemEquivalence` guideline exists; candidate home if Q6 is answered positively |
| VEC model — `assemblies-modules-and-harness-configurations` | **model change** | Promote or scope the "atomic part" `shall`, depending on Q1 |
| VEC model — `PartUsage` | **model change** | Widen *"yet not possible to define a concrete part number"* for the permanently anonymous case (Q3) |
| VEC model — `PartNumberType` | **model change** | No literal for "physically existing but not separately orderable" (blocked by Q3) |
| VEC model — `CompositionSpecification` | **model change** | Sharpen the antenna-cable example so the no-BOM case is visible |
| VEC model — "explicitly unused" marking | **model change, blocked by Q4** | Only if the group rejects the ambiguity introduced by F2 |
| VEC model — `ItemEquivalence` | **model change, blocked by Q6** | Say whether differently decomposed parts may be equivalent |

**Blocking decisions**, in order: Q7 (which issues this consolidates) → Q1 (which construction is
recommended) → Q2 (`PrimaryPartType` / TC-0004) → Q3 (marking anonymous contained parts) → the
tutorial. Independently: Q4 and Q5 unblock the `general/instantiation` and `composite-parts` edits,
which are the ones already decided and can proceed first. Q6 should probably be split out as its
own issue.
