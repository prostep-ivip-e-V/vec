---
title: "Catalogue Parts with Inner Structure"
linktitle: "Catalogue Parts"
type: specs
toc: true
authors: [becker]
categories: []
date: 2026-10-09
lastmod: 2026-10-12
draft: false
review: true

history:
  - date: 2026-10-09
    description: "Implementation Guideline for Catalogue Parts with Inner Structure"
    ghIssue: "1192"

classes:
  - PartVersion
  - PartStructureSpecification
  - PartOccurrence
  - PartUsage
  - CompositionSpecification
  - PartUsageSpecification
  - PartRelation
  - ModularSlot
  - PrimaryPartType
  - ConnectorHousingSpecification
  - TerminalSpecification
  - ItemEquivalence

menu:
  vec-guidelines:
    parent: product-definition
    weight: 350

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 350
---
{{< gh-review "1192" >}}

Many components are ordered under a single catalogue part number, but physically contain further
components: a connector delivered with pre-inserted contacts and seals, a shielded connector with
its shield clamp, or an E/E component delivered with a pigtail ending in a connector. When they
are delivered as part of the catalogue part, the contained components are not ordered separately.
Some of them may nevertheless have a part number of their own (e.g. a standard contact that is
also available on its own), others have none (e.g. a seal that only exists as part of the
connector). In both cases, design tools and rule checkers need their design relevant properties
(e.g. contact type and size, crimp ranges, cavity system, mating capability, geometry). This
guideline describes how such parts are represented in the VEC.

## Choosing the Construction

Whether a component that comes together with another component is part of it or not is decided
by one criterion: **is the contained component included in the catalogue part number?**

| Situation | Construction | Guideline |
|---|---|---|
| The component is included in the catalogue part number (delivered with it, not ordered separately), regardless of whether it has a part number of its own | Position in the bill of material of the catalogue part: {{< vec-class PartStructureSpecification >}} with `Content = Assembly` | this page, [Composite Parts]({{< relref "../composite-parts" >}}) |
| The component is not included in the part number and has to be ordered separately (e.g. caps, locks, clips) | {{< vec-class PartRelation >}} | [Accessories]({{< relref "../../component-types/accessories" >}}) |
| Special case of the above: selectable inserts of a modular connector | {{< vec-class PartRelation >}} with {{< vec-class ModularSlot >}} | [Connectors – Modular Connector]({{< relref "../../component-types/connectors#modular-connector" >}}) |

A catalogue part with inner structure is therefore modelled as an assembly that contains its
components, and **not** as a connector or E/E component "that has a bill of material". A
bill of material means that the part is _built from_ its contents, and none of the contents is
"leading" — which content is relevant depends on the use case.

Note that the container of occurrences ({{< vec-class CompositionSpecification >}} /
{{< vec-class PartUsageSpecification >}}) does not define the bill of material. Occurrences that
are only required for the description (e.g. an auxiliary occurrence for processing calculations)
are contained in the container, but not in the bill of material (see [Composite Parts – Part
Master Data]({{< relref "../composite-parts#part-master-data" >}})).

## Part Master Data of a Catalogue Part

- **PartVersion:** The catalogue part is a {{< vec-class PartVersion >}}, normally with
  `PrimaryPartType = PartStructure`. The {{< vec-class PrimaryPartType >}} of a component type
  (e.g. `ConnectorHousing`) may only be used if the part in its assembled state has the
  properties of that type as a whole (see [Component Description – Hybrid and Composite
  Components]({{< relref "../component-description#hybrid-and-composite-components" >}})).
  A part that has a topology of its own (e.g. a pigtail) is always a `PartStructure`.
- **Bill of material:** A {{< vec-class PartStructureSpecification >}} with `Content = Assembly`
  references the contained components as `InBillOfMaterial`.
- **Contained components:** The contained components are instances, as for any other composite
  part (see [Instances of Components]({{< relref "../component-instances" >}})). Which kind of
  instance is used depends on whether the component has a part number of its own:

| | Contained component with a part number | Contained component without a part number |
|---|---|---|
| Instance | {{< vec-class PartOccurrence >}} | {{< vec-class PartUsage >}} |
| Container | {{< vec-class CompositionSpecification >}} | {{< vec-class PartUsageSpecification >}} |
| Properties of the component | Part master data of its own {{< vec-class PartVersion >}}, referenced via `Part`. The part master data can be contained in a separate {{< vec-class DocumentVersion >}} of the same VEC. | Specifications referenced directly via `PartOrUsageRelatedSpecification`, normally contained in the {{< vec-class DocumentVersion >}} of the catalogue part. |
| Example | a standard contact that is also available on its own | the seals of the connector |

Both kinds can be combined in the bill of material of the same catalogue part. A
{{< vec-class PartUsage >}} in the bill of material of a catalogue part is sufficient from the
point of view of a process that uses the catalogue part; no realization by a
{{< vec-class PartOccurrence >}} is expected (see [Instances of Components – PartUsages without
Realization]({{< relref "../component-instances#partusages-without-realization" >}})).

### Level of Detail

The level of detail can range from a pure bill of material to a well defined "mini harness"
(see [Composite Parts – Assemblies]({{< relref "../composite-parts#assemblies" >}})). A
{{< vec-class PartStructureSpecification >}} may be delivered without any further specification
about the contents. The specifications of the contents that are needed by rule checkers (e.g. a
{{< vec-class TerminalSpecification >}} with crimp ranges, the {{< vec-class CavitySpecification >}}s,
the mating capability) are the _typical_ content, not a required one. This applies to the part
master data of contained components with a part number as well: a VEC may contain only the
part of it that is relevant for the use case.

## Example: Connector with Pre-inserted Contacts

A connector delivered with pre-inserted contacts and seals under one catalogue part number can be
represented in two ways. Both have a {{< vec-class PartStructureSpecification >}} for the
contents; they differ in the {{< vec-class PrimaryPartType >}} of the catalogue part and in the
specification that describes the connector properties. In both representations, the contents
can be {{< vec-class PartOccurrence >}}s, {{< vec-class PartUsage >}}s or a combination of both,
as described above.

| | Representation A: `PartStructure` | Representation B: `ConnectorHousing` |
|---|---|---|
| Use when | the connector properties are those of the contained housing, and the part is described by its contents | the part **as a whole in its assembled state** has connector properties of its own that differ from its contents (e.g. a 40-cavity connector assembled from two 20-cavity contact carriers) |
| `PrimaryPartType` of the catalogue part | `PartStructure` | `ConnectorHousing` |
| Connector properties | {{< vec-class ConnectorHousingSpecification >}} of the contained housing | {{< vec-class ConnectorHousingSpecification >}} describing the catalogue part itself |
| Contents | {{< vec-class PartStructureSpecification >}} referencing the housing, contacts and seals | {{< vec-class PartStructureSpecification >}} referencing the contact carriers, contacts, seals, backshell, … |

In both cases, the contacts are described by a {{< vec-class TerminalSpecification >}}, as
required by crimp and cavity rule checkers: for a contact with a part number in the part master
data of its {{< vec-class PartVersion >}}, for a contact without a part number directly at its
{{< vec-class PartUsage >}}.

### Representation A: PartStructure

In this example, the contacts are standard contacts with a part number of their own
({{< vec-class PartOccurrence >}}s), while the housing and the seals have no part number of
their own ({{< vec-class PartUsage >}}s).

```xml
<DocumentVersion id="dv_1">
  <CompanyName>Supplier Corp.</CompanyName>
  <DocumentNumber>CON-4711</DocumentNumber>
  <DocumentType>PartMaster</DocumentType>
  <DocumentVersion>A</DocumentVersion>
  <ReferencedPart>pv_1</ReferencedPart>
  <Specification xsi:type="vec:PartStructureSpecification" id="pss_1">
    <Identification>BOM</Identification>
    <DescribedPart>pv_1</DescribedPart>
    <Content>Assembly</Content>
    <InBillOfMaterial>pu_housing po_contact_1 po_contact_2 pu_seal_1 pu_seal_2</InBillOfMaterial>
  </Specification>
  <!-- contained components without a part number of their own -->
  <Specification xsi:type="vec:PartUsageSpecification" id="pus_1">
    <Identification>CONTENTS-WITHOUT-PN</Identification>
    <PartUsage id="pu_housing">
      <Identification>HOUSING</Identification>
      <PrimaryPartUsageType>ConnectorHousing</PrimaryPartUsageType>
      <PartOrUsageRelatedSpecification>chs_1</PartOrUsageRelatedSpecification>
    </PartUsage>
    <PartUsage id="pu_seal_1">
      <Identification>SEAL-1</Identification>
      <PrimaryPartUsageType>CavitySeal</PrimaryPartUsageType>
    </PartUsage>
    ...
  </Specification>
  <!-- contained components with a part number of their own -->
  <Specification xsi:type="vec:CompositionSpecification" id="cs_1">
    <Identification>CONTENTS-WITH-PN</Identification>
    <Component id="po_contact_1">
      <Identification>CONTACT-1</Identification>
      <Part>pv_contact</Part>
    </Component>
    <Component id="po_contact_2">
      <Identification>CONTACT-2</Identification>
      <Part>pv_contact</Part>
    </Component>
  </Specification>
  <Specification xsi:type="vec:ConnectorHousingSpecification" id="chs_1">
    <Identification>CHS-HOUSING</Identification>
    ...
  </Specification>
</DocumentVersion>
<!-- part master data of the contact -->
<DocumentVersion id="dv_contact">
  <CompanyName>Supplier Corp.</CompanyName>
  <DocumentNumber>TRM-0815</DocumentNumber>
  <DocumentType>PartMaster</DocumentType>
  <DocumentVersion>B</DocumentVersion>
  <ReferencedPart>pv_contact</ReferencedPart>
  <Specification xsi:type="vec:TerminalSpecification" id="ts_contact">
    <Identification>TS-TRM-0815</Identification>
    <DescribedPart>pv_contact</DescribedPart>
    ...
  </Specification>
</DocumentVersion>
...
<PartVersion id="pv_1">
  <CompanyName>Supplier Corp.</CompanyName>
  <PartNumber>CON-4711</PartNumber>
  <PartVersion>A</PartVersion>
  <PrimaryPartType>PartStructure</PrimaryPartType>
</PartVersion>
<PartVersion id="pv_contact">
  <CompanyName>Supplier Corp.</CompanyName>
  <PartNumber>TRM-0815</PartNumber>
  <PartVersion>B</PartVersion>
  <PrimaryPartType>PluggableTerminal</PrimaryPartType>
</PartVersion>
```

### Representation B: ConnectorHousing

In this example, all contents have no part number of their own ({{< vec-class PartUsage >}}s).

```xml
<DocumentVersion id="dv_2">
  <CompanyName>Supplier Corp.</CompanyName>
  <DocumentNumber>CON-4712</DocumentNumber>
  <DocumentType>PartMaster</DocumentType>
  <DocumentVersion>A</DocumentVersion>
  <ReferencedPart>pv_2</ReferencedPart>
  <!-- the connector properties of the assembled part (40 cavities) -->
  <Specification xsi:type="vec:ConnectorHousingSpecification" id="chs_40">
    <Identification>CHS-CON-4712</Identification>
    <DescribedPart>pv_2</DescribedPart>
    ...
  </Specification>
  <Specification xsi:type="vec:PartStructureSpecification" id="pss_2">
    <Identification>BOM</Identification>
    <DescribedPart>pv_2</DescribedPart>
    <Content>Assembly</Content>
    <InBillOfMaterial>pu_carrier_1 pu_carrier_2 pu_backshell pu_lever ...</InBillOfMaterial>
  </Specification>
  <Specification xsi:type="vec:PartUsageSpecification" id="pus_2">
    <Identification>CONTENTS</Identification>
    <PartUsage id="pu_carrier_1">
      <Identification>CARRIER-1</Identification>
      <PrimaryPartUsageType>ConnectorHousing</PrimaryPartUsageType>
      <PartOrUsageRelatedSpecification>chs_20</PartOrUsageRelatedSpecification>
    </PartUsage>
    ...
  </Specification>
  <Specification xsi:type="vec:ConnectorHousingSpecification" id="chs_20">
    <!-- the 20-cavity contact carrier, used by both carrier PartUsages -->
    <Identification>CHS-CARRIER-20</Identification>
    ...
  </Specification>
</DocumentVersion>
...
<PartVersion id="pv_2">
  <CompanyName>Supplier Corp.</CompanyName>
  <PartNumber>CON-4712</PartNumber>
  <PartVersion>A</PartVersion>
  <PrimaryPartType>ConnectorHousing</PrimaryPartType>
</PartVersion>
```

In both representations, the assignment of the contacts to the cavities can be defined in the
same {{< vec-class DocumentVersion >}} (e.g. with a {{< vec-class ContactingSpecification >}}),
if required.

## Example: E/E Component with Pigtail

An E/E component that is delivered with wires ending in a harness side connector is a
`PartStructure` with a topology of its own. Its bill of material contains the E/E component, the
wires and the connector, each as a {{< vec-class PartOccurrence >}} or a
{{< vec-class PartUsage >}}, depending on whether it has a part number of its own. Different
consumers use different parts of this description:

- **System schematic:** the {{< vec-class EEComponentSpecification >}} and its pins.
- **Wiring:** the harness side connector and its mating capability.
- **3D / topology:** the placeable elements and the bundle segment of the pigtail.

When the part is used in a harness, only the subcomponents about which the harness makes a
statement are instantiated (e.g. the harness side connector, to define its coupling; see
[Instantiation of Model Structures]({{< relref "../../general/instantiation" >}})).

## Consuming Catalogue Parts

A receiving system selects the occurrences and specifications relevant for its use case by
navigating the model (see [Navigating Information in a VEC]({{< relref "../../general/interface-behaviour#navigating-information-in-a-vec" >}})):
for a {{< vec-class PartOccurrence >}} via its `Part` to the part master data of the contained
component, for a {{< vec-class PartUsage >}} directly via its specifications. Different editors
or process partners may see and deliver different slices of the same catalogue part; this is the
normal case and not an inconsistency.

## Different Views of the Same Part

A part can be monolithic from the point of view of one organisation (e.g. a connector for the
OEM) and an assembly from the point of view of another (e.g. the manufacturer). This can be
expressed in two ways, depending on process and methodology:

1. Different {{< vec-class PartVersion >}}s (e.g. the OEM and the manufacturer part number), each
   described by its own specifications, related by an {{< vec-class ItemEquivalence >}}.
2. A single {{< vec-class PartVersion >}} described by specifications in different
   {{< vec-class DocumentVersion >}}s, each containing the view of one process partner. A
   reading system resolves the relevant specification via the containing
   {{< vec-class DocumentVersion >}} (see [Navigating Information in a VEC]({{< relref "../../general/interface-behaviour#navigating-information-in-a-vec" >}})).

The details are subject of a separate issue.
