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
  - PartStructureContentType
  - PartWithSubComponentsRole

history:
  - date: 2022-04-24
    description: "Improved Implementation Guideline for Assemblies, Harness & Modules"
    issue: "KBLFRM-952"
  - date: 2022-04-25
    description: "Harness & Configurations in the VEC"
    issue: "KBLFRM-1059"


menu:
  vec-guidelines:
    identifier: composite-parts
    weight: 17000

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 17000
---
{{< review "KBLFRM-952" >}}

{{% callout note %}}
Before reading these implementation guidelines, it is highly recommended to read the "{{< vec-diagram "composite-part-descriptions" >}}" section and its subsections in the VEC Online Model Description first.
{{% /callout %}}

Whereas the model description defines the general concepts of multilevel composite parts and 100% and 150% variance for those parts, this implementation guideline follows a use case oriented approach and explains the correct usage of the different aspects of a VEC implementation (e.g. BOM, document structure, variance, instantiation) for different composite part scenarios. The most common ones are defined in the {{< vec-class PartStructureContentType >}}) open enumeration. The `PartStructureSpecification.Content` attribute defines, which kind of part, that has a bill of material, is described by a {{<vec-class PartStructureSpecification >}} and how the described bill of material has to be interpreted in regard of variance (10%, 100%, 150%).


## Assemblies

Assemblies are predefined components, that are typically defined in a central place (e.g. a component library), reused in multiple projects / harnesses and whose inner structure is relevant for the harness design or the development process. Therefore, they are not considered atomic and information about their structure, subcomponents, etc is required. Often, assemblies are defined within their own drawings and have individual part numbers. Examples could be multipart connectors, fixings, grommets or, more complicated, preassembled cables like _USB_ or _LVDS_.

{{< figure src="assembly-concept.svg" numbered="true" lightbox="true" title="Basic Concept of an Assembly">}}

The figure above illustrates very simplified the concept of an assembly and its usage. On the left hand side you can see the library or part master data definition of the assembly, on the right hand side you can see its usage. 

 The level of detail for the mapped information of an assembly can range from a pure bill of material view to even a well defined "mini harness". A pure bill of material view is often not sufficient, especially if the specific usage of the assembly in a larger wiring harness has to be defined precisely (e.g., for preassembled cables the placement of the connectors, the routing of the cable, a.s.o.).

### Part Master Data

The following figure "Assembly Definition" illustrates the basic structure of a part master data definition of an assembly. The upper half of the diagram contains the actual definition of the assembly, the lower half (highlighted in blue) contains the definition and details of the utilized subcomponents.

{{< figure src="assembly-definition.svg" numbered="true" lightbox="true" title="Assembly Definition (Part Master Data)">}}

To define an assembly a {{<vec-class DocumentVersion >}} is required to contain all necessary {{< vec-class Specification >}}s (the "Assembly Definition" highlighted in green). This {{< vec-class DocumentVersion >}} has the `DocumentType = "PartMaster"`, just the same as for any other simple component. It can contain any {{<vec-class Specification >}} required to describe the assembly (like a {{<vec-class GeneralTechnicalPartSpecification >}}).

To describe the inner structure of an assembly, instances of its subcomponents are needed. The instances of the subcomponents can be defined either with {{< vec-class PartOccurrence >}}s or {{< vec-class PartUsage >}}s, depending on whether the information about specific parts / part numbers of the subcomponents is required / available, or if the subcomponents are just needed as reference elements to define the concrete usage of the assembly in a harness. 

To define the instances of the subcomponents a container specification is required within the {{< vec-class DocumentVersion >}} that defines the assembly. This is either a {{< vec-class CompositionSpecification >}} or a {{< vec-class PartUsageSpecification >}}, depending on the type of instances used for the assembly. In case of the example {{< vec-class PartOccurrence >}}s are used, and thus a {{< vec-class CompositionSpecification >}} is used as container.

{{% callout note %}}
Both the {{< vec-class CompositionSpecification >}} and the {{< vec-class PartUsageSpecification >}} are just used as container to define instances of components. They do not make a statement about the content of an assembly. Not even implicitly by being contained in the {{<vec-class DocumentVersion >}} defining the assembly. For this reason, neither the {{< vec-class CompositionSpecification >}} nor the {{< vec-class PartUsageSpecification >}} is a {{< vec-class PartOrUsageRelatedSpecification >}}. This modelling approach enables the VEC to define for example 150% wiring harnesses or assembly families (see later in this implementation guideline).
{{% /callout %}}

The content of the assembly is defined explicitly with a {{<vec-class PartStructureSpecification >}} that references the instances contained in the assembly as `InBillOfMaterial` and referencing the {{<vec-class PartVersion >}} of the assembly as `DescribedPart`. In other words, the {{<vec-class PartStructureSpecification >}} represents the bill of material (BOM) of the assembly (or any other composite part in the VEC). The  {{<vec-class PartStructureSpecification >}} defines `Content="Assembly"` and the {{<vec-class PartVersion >}} of the assembly has a `PrimaryPartType = "PartStructure"`.

If any information about the subcomponents or their relationships should be defined in a more detailed way (e.g. the contacting of a preassembled cable) appropriate {{< vec-class Specification >}}s can be added to the {{<vec-class DocumentVersion >}} of the assembly as needed (indicated in the figure with the `ContactingSpecification`). An assembly can even define its own topology ({{<vec-class TopologySpecification >}}) or schematic ({{<vec-class ConnectionSpecification >}}).


#### XML Example

```xml
<PartVersion id="id_1001_0">
    <Description id="id_A1" xsi:type="vec:LocalizedString">
        <LanguageCode>En</LanguageCode>
        <Value>Composite Part A1</Value>
    </Description>
    <CompanyName>Example Corp.</CompanyName>
    <PartNumber>N.1</PartNumber>
    <PrimaryPartType>PartStructure</PrimaryPartType>
</PartVersion>
...
<DocumentVersion id="id_1002_0">
    <CompanyName>Example Corp.</CompanyName>
    <DocumentNumber>N.1</DocumentNumber>
    <DocumentType>PartMaster</DocumentType>
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
```
### Usage of an Assembly

An assembly is normally used in a context different from its definition, e.g., the assembly is defined in a master data library and used in a wiring harness. The following figure "Assembly Instantiation" illustrates this scenario.

{{< figure src="assembly-instantiation.svg" numbered="true" lightbox="true" title="Assembly Instantiation">}}

The instantiation of an assembly is normally done in a separate {{<vec-class DocumentVersion >}} (e.g. the definition of a harness, highlighted in purple in the figure above). The assembly itself is instantiated with a {{<vec-class PartOccurrence >}} and a {{<vec-class PartWithSubComponentsRole >}}, which is the corresponding {{<vec-class Role>}} for a {{<vec-class PartStructureSpecification>}}. Additionally, all subcomponents (referenced by the {{<vec-class PartStructureSpecification>}}) **must be** instantiated in the using context as well (_Component A*_ & _Component B*_). By default, those are clones of their part master data definitions. To preserve traceability between occurrences from the part master definition and the occurrences in instantiation context, each instance is referencing its corresponding part master data occurrence as `InstantiatedOccurrence`. In order to identify their affiliation to a particular assembly instance the {{<vec-class PartWithSubComponentsRole >}} references all of them as `SubComponent`. 

At a first glance, this detailed approach may seem partially redundant and superfluous. However, it offers the possibility to redefine properties of the occurrences in the usage and also allows precise definition of the actual usage. Here are some examples:

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

The following figure shows the basic structure of a harness definition in the VEC. It has to be read from left to right.

{{< figure src="harness-definition.svg" numbered="true" lightbox="true" title="Basic Concept of a Harness">}}

The harness definition starts on the left hand side with the `COMPONENTS` {{<vec-class CompositionSpecification >}}. It contains all component occurrences that are required for the harness (or its definition). If the harness contains components without a specific {{<vec-class PartVersion >}}, the use of {{<vec-class PartUsage >}}s is also valid. The illustration contains only the hierarchical structure of a harness definition. A complete definition will include a wide variety of additional {{<vec-class Specification>}}s that allow the detailed definition of the harness based on the occurrences (e.g. {{<vec-class TopologySpecification >}}, {{<vec-class PlacementSpecification >}}, {{<vec-class RoutingSpecification >}}, {{<vec-class ContactingSpecification >}}).

Based on these part occurrences, each module (_Module A_ & _Module B_) has a {{<vec-class PartStructureSpecification >}} (highlighted in yellow), that describes its {{<vec-class PartVersion>}}. This is completely analogous to the representation of assemblies. However, a harness (or a variant) is not created with _Module PartVersions_ but with {{<vec-class PartOccurrence>}}s of modules. For a clear structuring of the containments in VEC document the module occurrences (highlighted in orange) are placed in a second {{<vec-class CompositionSpecification >}}, the `MODULES` in the middle of the illustration. Each module's {{<vec-class PartOccurrence>}} has a {{<vec-class PartWithSubComponentsRole >}}, just as described above to the assembly instancing. However, due to the special nature of modules in a harness definition, the {{<vec-class PartWithSubComponentsRole >}} does not reference a cloned set of {{<vec-class PartOccurrence>}}s, but the same that are used for {{<vec-class PartStructureSpecification >}}. **All** {{<vec-class PartOccurrence>}}s referenced by the corresponding {{<vec-class PartStructureSpecification >}} as `InBillOfMaterial` must also be referenced as `SubComponent` by the {{<vec-class PartWithSubComponentsRole >}}. This supposed redundancy is due to the fact that a module is in principle defined by its first (and often only) occurrence. Although redundant, it is intentionally required to fill both associations (`PartStructureSpecification -> PartOccurrence` & `PartWithSubComponentsRole -> PartOccurrence`). This unifies the handling of assemblies and modules for reading systems. 

Finally (on the right side), the harness (150%) or a specific variant (100%) is defined as "bill of modules" with a {{<vec-class PartStructureSpecification >}} referencing all module occurrences that belong to the harness.

Even if this represention of a harness in the VEC appears to be somewhat more extensive at the first glance than, for example, in the KBL, it does have some advantages:

1. The VEC has a general concept for a multilevel bill of material with support of variance. The number of levels (components, assemblies, modules, harness) is arbitrary. It is also possible to create an orthogonal structuring, e.g., for production BOMs vs. logistic BOMs.
1. The {{<vec-class PartOccurrence>}} separates context specific information (e.g,. variant configurations) from part master data. If a harness is reused and a module has different context information (e.g. different variant configurations in different vehicles) then, this is possible without recreating a module. 
1. Reusing shared modules in different harnesses is, with slight changes for the reusing context, also supported. 

[^1]: Stufenkabelbaum
