---
title: "Composite Parts"
#linktitle: Link in Sidemenu
type: specs
toc: true
authors: ["steinbuechler", "becker"]
tags: ["Harness", "Module", "Assembly"]
categories: []
date: 2021-03-01
lastmod: 2019-11-28T15:11:41+01:00
draft: false
review: true

classes:
  - PartStructureSpecification
  - CompositionSpecification
  - PartUsageSpecification
  - PartStructureContentType
  - PartWithSubComponentsRole
  - PartOccurrence
  - PartUsage
  - PartVersion
  - DocumentVersion
  - VariantConfiguration
  - ConfigurationConstraint
  - ModuleList
  - PartRelation
  - ModularSlot
  - PrimaryPartType
  - ConnectorHousingSpecification
  - TerminalSpecification

history:
  - date: 2022-04-24
    description: "Improved Implementation Guideline for Assemblies, Harness & Modules"
    issue: "KBLFRM-952"
  - date: 2022-04-25
    description: "Harness & Configurations in the VEC"
    issue: "KBLFRM-1059"
  - date: 2026-10-02
    description: "Instantiation of context relevant subcomponents; composition vs. membership"
    ghIssue: "1174"
  - date: 2026-10-05
    description: "Container is not a bill of material"
    ghIssue: "1176"
  - date: 2026-10-05
    description: "BOM layers of a harness and control information; neutral modules"
    ghIssue: "1178"
  - date: 2026-10-09
    description: "Assemblies: catalogue parts with inner structure, assembly or accessory, subcomponents with and without part number, examples"
    ghIssue: "1192"


menu:
  vec-guidelines:
    parent: product-definition
    weight: 300

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 300
---
{{% callout note %}}
Before reading these implementation guidelines, it is highly recommended to read the "{{< vec-diagram "composite-part-descriptions" >}}" section and its subsections in the VEC Online Model Description first.
{{% /callout %}}

Whereas the model description defines the general concepts of multilevel composite parts and 100% and 150% variance for those parts, this implementation guideline follows a use case oriented approach and explains the correct usage of the different aspects of a VEC implementation (e.g. BOM, document structure, variance, instantiation) for different composite part scenarios. The most common ones are defined in the {{< vec-class PartStructureContentType >}} open enumeration. The `PartStructureSpecification.Content` attribute defines, which kind of part, that has a bill of material, is described by a {{<vec-class PartStructureSpecification >}} and how the described bill of material has to be interpreted in regard of variance (10%, 100%, 150%).


## Assemblies

{{< gh-review "1192" >}}

Assemblies are predefined components, that are typically defined in a central place (e.g. a component library), reused in multiple projects / harnesses and whose inner structure is relevant for the harness design or the development process. Therefore, they are not considered atomic and information about their structure, subcomponents, etc is required. Often, assemblies are defined within their own drawings and have individual part numbers. Examples could be multipart connectors, fixings, grommets or, more complicated, preassembled cables like _USB_ or _LVDS_.

A typical case are catalogue parts with inner structure: components that are ordered under a single part number, but physically contain further components, e.g. a connector delivered with pre-inserted contacts and seals, a shielded connector with its shield clamp, or an E/E component delivered with a pigtail ending in a connector. Design tools and rule checkers need the design relevant properties of the contained components (e.g. contact type and size, crimp ranges, cavity system, mating capability, geometry). Such a part is modelled as an assembly that contains its components, and **not** as a connector or E/E component "that has a bill of material". A bill of material means that the part is _built from_ its contents, and none of the contents is "leading" — which content is relevant depends on the use case.

{{< figure src="assembly-concept.svg" numbered="true" lightbox="true" title="Basic Concept of an Assembly">}}

The figure above illustrates very simplified the concept of an assembly and its usage. On the left hand side you can see the library or part master data definition of the assembly, on the right hand side you can see its usage. 

The level of detail for the mapped information of an assembly can range from a pure bill of material view to even a well defined "mini harness". A pure bill of material view is often not sufficient, especially if the specific usage of the assembly in a larger wiring harness has to be defined precisely (e.g., for preassembled cables the placement of the connectors, the routing of the cable, a.s.o.). On the other hand, a {{<vec-class PartStructureSpecification >}} may be delivered without any further specification about the contents. The specifications of the contents that are needed e.g. by rule checkers (a {{< vec-class TerminalSpecification >}} with crimp ranges, the {{< vec-class CavitySpecification >}}s, the mating capability) are the _typical_ content, not a required one.

### Assembly or Accessory?

Whether a component that comes together with another component is part of an assembly or not is decided by one criterion: **is the component included in the part number of the assembly?**

| Situation | Construction | Guideline |
|---|---|---|
| The component is included in the part number (delivered with it, not ordered separately), regardless of whether it has a part number of its own | Position in the bill of material of the assembly: {{< vec-class PartStructureSpecification >}} with `Content = Assembly` | this section |
| The component is not included in the part number and has to be ordered separately (e.g. caps, locks, clips) | {{< vec-class PartRelation >}} | [Accessories]({{< relref "../../component-types/accessories" >}}) |
| Special case of the above: selectable inserts of a modular connector | {{< vec-class PartRelation >}} with {{< vec-class ModularSlot >}} | [Connectors – Modular Connector]({{< relref "../../component-types/connectors#modular-connector" >}}) |

### Part Master Data

{{< gh-review "1176" >}}

The following figure "Assembly Definition" illustrates the basic structure of a part master data definition of an assembly. The upper half of the diagram contains the actual definition of the assembly, the lower half (highlighted in blue) contains the definition and details of the utilized subcomponents.

{{< figure src="assembly-definition.svg" numbered="true" lightbox="true" title="Assembly Definition (Part Master Data)">}}

To define an assembly a {{<vec-class DocumentVersion >}} is required to contain all necessary {{< vec-class Specification >}}s (the "Assembly Definition" highlighted in green). This {{< vec-class DocumentVersion >}} has the `DocumentType = "PartMaster"`, just the same as for any other simple component. It can contain any {{<vec-class Specification >}} required to describe the assembly (like a {{<vec-class GeneralTechnicalPartSpecification >}}).

To describe the inner structure of an assembly, instances of its subcomponents are needed (see [Instances of Components]({{< relref "../component-instances" >}})). Which kind of instance is used depends on whether the subcomponent has a part number of its own:

| | Subcomponent with a part number | Subcomponent without a part number |
|---|---|---|
| Instance | {{< vec-class PartOccurrence >}} | {{< vec-class PartUsage >}} |
| Container | {{< vec-class CompositionSpecification >}} | {{< vec-class PartUsageSpecification >}} |
| Properties of the subcomponent | Part master data of its own {{< vec-class PartVersion >}}, referenced via `Part`. The part master data can be contained in a separate {{< vec-class DocumentVersion >}} of the same VEC. | Specifications referenced directly via `PartOrUsageRelatedSpecification`, normally contained in the {{< vec-class DocumentVersion >}} of the assembly. |
| Example | a standard contact that is also available on its own | the seals of a connector |

Both kinds can be combined in the bill of material of the same assembly, each kind in its own container within the {{< vec-class DocumentVersion >}} that defines the assembly. For subcomponents with a part number, the part master data of their {{< vec-class PartVersion >}}s does not have to be complete either: a VEC may contain only the specifications that are relevant for the use case (see the level of detail described [above]({{< relref "#assemblies" >}})). A {{< vec-class PartUsage >}} in the bill of material of an assembly is sufficient from the point of view of a process that uses the assembly; no realization by a {{< vec-class PartOccurrence >}} is expected (see [Instances of Components – PartUsages without Realization]({{< relref "../component-instances#partusages-without-realization" >}})). In the figure above, {{< vec-class PartOccurrence >}}s are used, and thus a {{< vec-class CompositionSpecification >}} is used as container.

{{% callout note %}}
Both the {{< vec-class CompositionSpecification >}} and the {{< vec-class PartUsageSpecification >}} are just used as container to define instances of components. They do not make a statement about the content of an assembly. Not even implicitly by being contained in the {{<vec-class DocumentVersion >}} defining the assembly. For this reason, neither the {{< vec-class CompositionSpecification >}} nor the {{< vec-class PartUsageSpecification >}} is a {{< vec-class PartOrUsageRelatedSpecification >}}. This modelling approach enables the VEC to define for example 150% wiring harnesses or assembly families (see later in this implementation guideline).
{{% /callout %}}

Conversely, the occurrences in a container are not necessarily part of any bill of material. The occurrences required to _describe_ a product can differ from the occurrences that _constitute_ it; only the {{<vec-class PartStructureSpecification >}} declares what belongs to the bill of material. Typical examples of occurrences in a container that are not part of a bill of material are:

- **Instantiated subcomponents of an assembly:** To place or route a preassembled cable in a harness, its connectors and cores are instantiated in the harness (_Component A*_ & _Component B*_, see [Usage of an Assembly]({{< relref "#usage-of-an-assembly" >}})). These occurrences are contained in the {{< vec-class CompositionSpecification >}} of the harness, but they are not positions of the harness' bill of material: the harness contains the cable, not its connectors. Only the occurrence of the assembly itself is referenced as `InBillOfMaterial`.
- **Auxiliary occurrences for processing calculations:** A cable assembly with a connector on one side and an open end on the other side may need an auxiliary connector occurrence at the open end. It represents the connector the cable end will be terminated with later, so that the stripping length and the wire end processing can be calculated. This occurrence exists for the description only. It is contained in the {{< vec-class CompositionSpecification >}} of the assembly, but it is not part of the delivered assembly and therefore not referenced by its {{<vec-class PartStructureSpecification >}}.

The same rule, read from the other side: a {{<vec-class PartVersion >}} without its own {{<vec-class PartStructureSpecification >}} is regarded as one atomic part from a bill of material perspective, even if its part master {{<vec-class DocumentVersion >}} contains a {{< vec-class CompositionSpecification >}} with several occurrences (see {{< vec-diagram "composite-part-descriptions/assemblies-modules-and-harness-configurations" >}}). This is a safeguard against deriving a bill of material from a container. It is **not** a way to describe the inner structure of a part without a bill of material: components that are physically contained in the delivered part belong in its {{<vec-class PartStructureSpecification >}}.

The content of the assembly is defined explicitly with a {{<vec-class PartStructureSpecification >}} that references the instances contained in the assembly as `InBillOfMaterial` and referencing the {{<vec-class PartVersion >}} of the assembly as `DescribedPart`. In other words, the {{<vec-class PartStructureSpecification >}} represents the bill of material (BOM) of the assembly (or any other composite part in the VEC). The  {{<vec-class PartStructureSpecification >}} defines `Content="Assembly"` and the {{<vec-class PartVersion >}} of the assembly normally has a `PrimaryPartType = "PartStructure"`. The {{< vec-class PrimaryPartType >}} of a component type (e.g. `ConnectorHousing`) may only be used if the assembly in its assembled state has the properties of that type as a whole; an assembly with a topology of its own is always a `PartStructure` (see [Component Description – Hybrid and Composite Components]({{< relref "../component-description#hybrid-and-composite-components" >}}) and the [examples]({{< relref "#examples" >}}) below).

If any information about the subcomponents or their relationships should be defined in a more detailed way (e.g. the contacting of a preassembled cable) appropriate {{< vec-class Specification >}}s can be added to the {{<vec-class DocumentVersion >}} of the assembly as needed (indicated in the figure with the `ContactingSpecification`). An assembly can even define its own topology ({{<vec-class TopologySpecification >}}) or schematic ({{<vec-class ConnectionSpecification >}}).


#### XML Example

```xml
<DocumentVersion id="id_1002_0">
    <CompanyName>Example Corp.</CompanyName>
    <DocumentNumber>N.1</DocumentNumber>
    <DocumentType>PartMaster</DocumentType>
    <DocumentVersion>A</DocumentVersion>
    <ReferencedPart>id_1001_0</ReferencedPart>
    <Specification id="id_2000_0" xsi:type="vec:PartStructureSpecification">
        <Identification>P1</Identification>
        <DescribedPart>id_1001_0</DescribedPart>
        <Content>Assembly</Content>
        <InBillOfMaterial>id_2000_2 id_2000_3</InBillOfMaterial>
    </Specification>
    <Specification id="id_2000_1" xsi:type="vec:CompositionSpecification">
        <Identification>C1</Identification>
        <Component id="id_2000_2">
            <Identification>A</Identification>
            <Part>id_1001_1</Part>
            ...
        </Component>
        <Component id="id_2000_3">
            <Identification>B</Identification>
            <Part>id_1001_2</Part>
            ...
        </Component>
    </Specification>
</DocumentVersion>
...
<PartVersion id="id_1001_0">
    <Description id="id_A1" xsi:type="vec:LocalizedString">
        <LanguageCode>En</LanguageCode>
        <Value>Composite Part A1</Value>
    </Description>
    <CompanyName>Example Corp.</CompanyName>
    <PartNumber>N.1</PartNumber>
    <PartVersion>A</PartVersion>
    <PrimaryPartType>PartStructure</PrimaryPartType>
</PartVersion>
```
### Usage of an Assembly

{{< gh-review "1174" >}}

An assembly is normally used in a context different from its definition, e.g., the assembly is defined in a master data library and used in a wiring harness. The following figure "Assembly Instantiation" illustrates this scenario.

{{< figure src="assembly-instantiation.svg" numbered="true" lightbox="true" title="Assembly Instantiation">}}

The instantiation of an assembly is normally done in a separate {{<vec-class DocumentVersion >}} (e.g. the definition of a harness, highlighted in magenta in the figure above). The assembly itself is instantiated with a {{<vec-class PartOccurrence >}} and a {{<vec-class PartWithSubComponentsRole >}}, which is the corresponding {{<vec-class Role>}} for a {{<vec-class PartStructureSpecification>}}. Subcomponents of the assembly (referenced by the {{<vec-class PartStructureSpecification>}}) are instantiated in the using context if the context makes a statement about them (_Component A*_ & _Component B*_, see [Instantiation of Model Structures]({{< relref "../../general/instantiation" >}})). By default, those are clones of their part master data definitions. To preserve traceability between the occurrences of the part master definition and the occurrences in the using context, each instantiated occurrence shall reference its corresponding part master data occurrence as `InstanciatedOccurrence`. In order to identify their affiliation to a particular assembly instance, the {{<vec-class PartWithSubComponentsRole >}} shall reference them as `SubComponent`. Consequently, the `InstanciatedOccurrence`s of the `SubComponent`s are a subset of the `InBillOfMaterial` of the assembly's {{<vec-class PartStructureSpecification>}}.

If the using context does not state anything about the subcomponents (e.g. in a pure bill of material view), no subcomponent is instantiated and the `SubComponent` association remains empty.

Instantiating subcomponents in the using context makes it possible to redefine properties of the occurrences in the usage and to define the actual usage precisely. Typical reasons for instantiating a subcomponent are:

- **Redefinition of identifier and descriptions and associations:** Connectors and cores of a predefined cable will have generic names and identifiers in the assembly definition. When used in a vehicle, connectors will fullfil a specific function, so identifiers for connectors will be derived from {{<vec-class UsageNode>}}s; descriptions will be function specific (e.g., "Infotainment USB Port Center Console") and cores will realize system schematic connections of the vehicle. Furthermore, the same cable could be used multiple times in the same vehicle for different functions.
- **Redefinition of technical properties:** Technical properties of an assembly might change in a specific usage. E.g., a predefined cable (contacted only on one side) comes in a specific length. During the harness assembly it might be cut down to the required length.
- **Placement & routing of the assembly in the usage:** To define the actual usage, e.g., placement of connectors, routing of wire, a.s.o. occurrences are required. Since an assembly could be used multiple times in different locations and usages in a harness, those occurrences could not be the same occurrences used in the {{<vec-class CompositionSpecification >}} of part master data definition.

#### XML representation

The following XML snippet shows the occurrences of the example in the {{<vec-class CompositionSpecification >}}.

```xml
<Component id="id_2001_2">
    <Identification>Assembly-Instance</Identification>
    <Role xsi:type="vec:PartWithSubComponentsRole" id="pwscr_1">
        <PartStructureSpecification>id_2000_0</PartStructureSpecification>
        <SubComponent>id_2001_3 id_2001_4</SubComponent>
    </Role>
    <Part>id_1001_0</Part>
</Component>

<Component id="id_2001_3" xsi:type="vec:PartOccurrence">
    <Identification>A*</Identification>
    <Role ...>
        ...
    </Role>
    <InstanciatedOccurrence>id_2000_2</InstanciatedOccurrence>
    <Part>id_1001_1</Part>
</Component>

<Component id="id_2001_4" xsi:type="vec:PartOccurrence">
    <Identification>B*</Identification>
    <Role ...>
        ...
    </Role>
    <InstanciatedOccurrence>id_2000_3</InstanciatedOccurrence>
    <Part>id_1001_2</Part>
</Component>
```

### Examples

#### Connector with Pre-inserted Contacts

A connector delivered with pre-inserted contacts and seals under one part number can be represented in two ways. Both have a {{< vec-class PartStructureSpecification >}} for the contents; they differ in the {{< vec-class PrimaryPartType >}} of the assembly and in the specification that describes the connector properties. In both representations, the contents can be {{< vec-class PartOccurrence >}}s, {{< vec-class PartUsage >}}s or a combination of both (see [Part Master Data]({{< relref "#part-master-data" >}})).

| | Representation A: `PartStructure` | Representation B: `ConnectorHousing` |
|---|---|---|
| Use when | the connector properties are those of the contained housing, and the part is described by its contents | the part **as a whole in its assembled state** has connector properties of its own that differ from its contents (e.g. a 40-cavity connector assembled from two 20-cavity contact carriers) |
| `PrimaryPartType` of the assembly | `PartStructure` | `ConnectorHousing` |
| Connector properties | {{< vec-class ConnectorHousingSpecification >}} of the contained housing | {{< vec-class ConnectorHousingSpecification >}} describing the assembly itself |
| Contents | {{< vec-class PartStructureSpecification >}} referencing the housing, contacts and seals | {{< vec-class PartStructureSpecification >}} referencing the contact carriers, contacts, seals, backshell, … |

In both cases, the contacts are described by a {{< vec-class TerminalSpecification >}}, as required by crimp and cavity rule checkers: for a contact with a part number in the part master data of its {{< vec-class PartVersion >}}, for a contact without a part number directly at its {{< vec-class PartUsage >}}. The assignment of the contacts to the cavities can be defined in the same {{< vec-class DocumentVersion >}} (e.g. with a {{< vec-class ContactingSpecification >}}), if required.

**Representation A: PartStructure.** In this example, the contacts are standard contacts with a part number of their own ({{< vec-class PartOccurrence >}}s), while the housing and the seals have no part number of their own ({{< vec-class PartUsage >}}s).

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

**Representation B: ConnectorHousing.** In this example, all contents have no part number of their own ({{< vec-class PartUsage >}}s).

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

#### E/E Component with Pigtail

An E/E component that is delivered with wires ending in a harness side connector is a `PartStructure` with a topology of its own. Its bill of material contains the E/E component, the wires and the connector, each as a {{< vec-class PartOccurrence >}} or a {{< vec-class PartUsage >}}, depending on whether it has a part number of its own. Different consumers use different parts of this description:

- **System schematic:** the {{< vec-class EEComponentSpecification >}} and its pins.
- **Wiring:** the harness side connector and its mating capability.
- **3D / topology:** the placeable elements and the bundle segment of the pigtail.

A receiving system selects the occurrences and specifications relevant for its use case by navigating the model (see [Navigating Information in a VEC]({{< relref "../../general/interface-behaviour#navigating-information-in-a-vec" >}})). Different editors or process partners may see and deliver different slices of the same assembly; this is the normal case and not an inconsistency. When the assembly is used in a harness, only the subcomponents about which the harness makes a statement are instantiated, e.g. the harness side connector to define its coupling (see [Usage of an Assembly]({{< relref "#usage-of-an-assembly" >}})).

## Harness & Modules

From a high level perspective, a harness is just a "very complicated" assembly. The two major differences are:
- a harness is designed with variance in mind. In most cases it is a 150% definition containing either modules for a customer specific harness or a set of predefined variants.
- It is designed for a very specific use case (e.g., a vehicle) and its reuse in the process is very limited, in contrast to an assembly.

{{< figure src="harness-concept.svg" numbered="true" lightbox="true" title="Basic Concept of a Harness">}}

The figure above illustrates the concept of a harness in a very simplified way. A harness definition has several layers. The base layer consists of a set of component instances and their relationships, for example connectors, wires, terminals or even assemblies. The component instances in the base layer are used to define the function / appearance of the harness (e.g., contacting and routing of wires, placement of components) in all possible variants (150%). The other layers are used to manage the variance and to achieve a configurable product. The concepts (and the names) in these layers sometimes differ slightly in the various processes. However, from a data structural point of view, those differences are marginal.

For a customer specific harness, the next level defines _Modules_. A module represents a handle for a specific subset of component instances in a 150% harness. The strategies for modularization of a harness are manifold and quite process specific, but they are always influenced by the variant structure and the logistic concept of the product. However, modules do have in common, that they just represent a set of components that should be controlled individually in the configurable product. In this respect, modules are logistical units rather than real parts. A module itself is normally free of variance and does not represent a functional subset on its own, in other words, it is just a 10% set of components and not 100%. This means that only the correct combination of multiple modules creates a functional harness that can be found in a actual vehicle. The harness definition itself consists of all modules (150%). For a specific vehicle configuration, a subset of all modules is picked. The combination of those modules creates a specific variant (100%).

Not all harnesses are designed as customer specific harnesses. For less complex harnesses (e.g., the doors) or for the sake of a simpler order and manufacturing logistic, a set of preconfigured harness variants[^1] is often used. Two approaches exist for this:

1. In the first approach the variants are defined as a set of components ("Variant X" in the figure, the dashed arrow stands for the references to all components required for "Variant X"). So they are basically defined in the same way as a module, with the difference that each variant represents an actual harness (100%) by itself. 
2. In the second approach, the components are grouped into modules (in this context often named "options"), just as with the customer specific harness. The specific harness variants are then defined as subsets of the modules / options ("Variant Y" in the figure). 

### Details

{{< gh-review "1174" >}}

{{< gh-review "1178" >}}

The following figure shows the basic structure of a harness definition in the VEC. It has to be read from left to right.

{{< figure src="harness-definition.svg" numbered="true" lightbox="true" title="Harness Definition">}}

The harness definition starts on the left hand side with the `COMPONENTS` {{<vec-class CompositionSpecification >}}. It contains all component occurrences that are required for the harness (or its definition). If the harness contains components without a specific {{<vec-class PartVersion >}}, the use of {{<vec-class PartUsage >}}s is also valid. The illustration contains only the hierarchical structure of a harness definition. A complete definition will include a wide variety of additional {{<vec-class Specification>}}s that allow the detailed definition of the harness based on the occurrences (e.g. {{<vec-class TopologySpecification >}}, {{<vec-class PlacementSpecification >}}, {{<vec-class RoutingSpecification >}}, {{<vec-class ContactingSpecification >}}).

Based on these part occurrences, each module (_Module A_ & _Module B_) has a {{<vec-class PartStructureSpecification >}} (highlighted in yellow), that describes its {{<vec-class PartVersion>}}. This is completely analogous to the representation of assemblies. However, a harness (or a variant) is not created with _Module PartVersions_ but with {{<vec-class PartOccurrence>}}s of modules. For a clear structuring of the containments in VEC document the module occurrences (highlighted in orange) are placed in a second {{<vec-class CompositionSpecification >}}, the `MODULES` in the middle of the illustration. Each module's {{<vec-class PartOccurrence>}} has a {{<vec-class PartWithSubComponentsRole >}}, just as described above for the instantiation of assemblies. However, modules are normally defined _in place_ (see {{<vec-diagram "composite-part-descriptions/instantiation-approaches">}}): the definition of the module coincides with its only usage. The {{<vec-class PartOccurrence>}}s referenced as `InBillOfMaterial` by the module's {{<vec-class PartStructureSpecification >}} are already the occurrences in the using context. They are not cloned and there is no `InstanciatedOccurrence` reference.

The `SubComponent` association of a {{<vec-class PartWithSubComponentsRole >}} is intended for subcomponents that are instantiated in a using context (see [Usage of an Assembly]({{< relref "#usage-of-an-assembly" >}})). As the composition of an in-place module is completely defined by its {{<vec-class PartStructureSpecification >}} and nothing is instantiated, the {{<vec-class PartWithSubComponentsRole >}} of an in-place module should not reference `SubComponent`s. Reading systems shall nevertheless accept such references (e.g. in data created according to earlier versions of this guideline); if present, they shall be a subset of the `InBillOfMaterial` of the {{<vec-class PartStructureSpecification >}}.

Finally (on the right side), the harness (150%) or a specific variant (100%) is defined as "bill of modules" with a {{<vec-class PartStructureSpecification >}} referencing all module occurrences that belong to the harness.

Even if this represention of a harness in the VEC appears to be somewhat more extensive at the first glance than, for example, in the KBL, it does have some advantages:

1. The VEC has a general concept for a multilevel bill of material with support of variance. The number of levels (components, assemblies, modules, harness) is arbitrary. It is also possible to create an orthogonal structuring, e.g., for production BOMs vs. logistic BOMs.
1. The {{<vec-class PartOccurrence>}} separates context specific information (e.g,. variant configurations) from part master data. If a harness is reused and a module has different context information (e.g. different variant configurations in different vehicles) then, this is possible without recreating a module. 
1. Reusing shared modules in different harnesses is supported as well. A module that is used in several harnesses ("neutral module") is defined with the library approach, like an assembly: its {{<vec-class PartStructureSpecification >}} and its container are defined in its own part master {{<vec-class DocumentVersion >}}, and it is instantiated in each using harness as described in [Usage of an Assembly]({{< relref "#usage-of-an-assembly" >}}).

#### Layers and Control Information

Within a harness description, each aggregation level of the bill of material (e.g. components, modules, harness / variants) defines its own container for its instances: a {{<vec-class CompositionSpecification >}} for {{<vec-class PartOccurrence>}}s or a {{<vec-class PartUsageSpecification >}} for {{<vec-class PartUsage>}}s. The reason for this is the following chain:

1. Variant control information ({{<vec-class VariantConfiguration >}} and {{<vec-class ConfigurationConstraint >}}, see [Variant Management]({{< relref "../harness#variant-management-logistic-control-information" >}})) is assigned to instances, not to part master data.
1. Therefore, each composite part that carries control information has to be instantiated.
1. Each instance requires a container.

For a customer specific harness (KSK) or a staged harness (Stufenleitungssatz), the bill of material therefore does not end at the module level: the module occurrences are required to carry the logistic control information, and the harness (or variant) references them in its bill of material. If an element of a level has a part number, it is represented by a {{<vec-class PartVersion>}} and instantiated with a {{<vec-class PartOccurrence>}}. Otherwise, a {{<vec-class PartUsage>}} is used.

Occurrences that belong to a composite part without variance (e.g. an assembly or a module) are controlled via that composite part and do not need their own control information. A composite part with a 150% bill of material (e.g. a harness consisting of modules) requires additional control information for its contents (e.g. for its modules). Occurrences that do not belong to any module carry their own control information. Completion scopes (_Komplettierungsumfänge_) can be expressed with a {{<vec-class ModuleList >}}.

#### Composition and Membership

A reading system can ask two different questions about a composite part, which are answered by different navigation directions:

- **What does the composite part consist of?** (_composition_) The composition is always defined by the {{<vec-class PartStructureSpecification >}} (`InBillOfMaterial`) of the composite part. It is reached from any instance of the composite part via `PartWithSubComponentsRole.PartStructureSpecification`. The instantiated subcomponents in a using context are not the place to look for the complete composition, since only the subcomponents relevant for the context are instantiated.
- **Which composite part does an occurrence belong to?** (_membership_) Coming from an occurrence in the using context (e.g. from a routing, a contacting or a placement), a reading system finds the composite part by navigating the references in inverse direction:
  - For in-place modules, via the {{<vec-class PartStructureSpecification >}}s that reference the occurrence as `InBillOfMaterial`.
  - For instantiated library parts, via the {{<vec-class PartWithSubComponentsRole >}} that references the instantiated occurrence as `SubComponent`. This is the only reference that assigns an instantiated subcomponent to a specific instance of the assembly, if the assembly is used several times in the same context. The `InstanciatedOccurrence` only identifies the origin in the part master definition.

[^1]: Stufenkabelbaum
