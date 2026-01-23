---
title: "Instances of Components"
#linktitle: Link in Sidemenu
type: specs
# Table of Content on the right side. Only useful for large pages.
toc: true
authors: [becker]
tags: []
categories: []
date: 2022-10-07
draft: false
review: false
classes:
  - PartUsage
  - PartOccurrence
  - CompositionSpecification
  - PartUsageSpecification

history:
  - date: 2022-10-21
    description: "Clarification of the application of PartUsages & PartOccurrences"
    issue: "KBLFRM-945"
  - date: 2022-10-21
    description: "Meaning of PartOrUsageRelatedSpecifications shared between PartUsages & PartVersion"
    issue: "KBLFRM-1038"
  - date: 2022-10-21
    description: "Dependencies of Associations between PartUsages and Roles to their Specifications"
    issue: "KBLFRM-994"
  - date: 2022-10-21
    description: "Cardinality of PartOccurrence.RealizedPartUsage"
    issue: "KBLFRM-984"
  - date: 2025-12-15
    description: "Added example for PartSubstitutionSpecification"
    ghIssue: "484"

links:
  - icon_pack: fas
    icon: file-code
    name: part-substitution.vec
    url: 'part-substitution.vec'    

menu:
  vec-guidelines:
    # Toplevel element. For sub sections the identifier of the subsection
    parent: product-definition
    weight: 200

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 200
---
{{% callout note %}}
Before reading these implementation guidelines, it is highly recommended to read the "{{< vec-diagram "instances-of-components/instantiation-of-components" >}}" section in the VEC Online Model Description.
{{% /callout %}}

This Implementation Guideline complements the Specification Chapter {{< vec-diagram "instances-of-components/instantiation-of-components" >}} with concrete examples and detailed definitions for specific use cases. _Component instantiation_ in the context of the VEC means the specific usage of a component in a defined function, location or place. _Instantiation_ implies that there is something to be instantiated, which is the type definition. This type definition is often referred to as _part master data_ or _component specification_. For example a "black connector with 12 pins" is a type definition, where as the "connector of the left head light (black with 12 pins)" is an instance.

The figure below gives a brief overview of how instantiation of components fit into the overall picture of the VEC and how this different for {{< vec-class "PartOccurrence" >}}s and {{< vec-class "PartUsage" >}}s. 

{{< figure src="instantiation-concept.svg" title="Comparison of PartUsages and PartOccurrences" numbered="true" lightbox="true">}}

On the left hand side is a part master definition (as described in [Component Description]({{< relref "../component-description" >}})). On the right hand side is a {{< vec-class DocumentVersion >}} (in this example a _HarnessDescription_) containing instances of components and additional information. 

The two instantiation approaches of the VEC are illustrated with one representative for each. The {{< vec-class PartUsage >}} "A120" and the {{< vec-class PartOccurrence >}} "A121". {{< vec-class "PartUsage" >}}s and {{< vec-class "PartOccurrence" >}}s are defined in different containers ({{< vec-class "CompositionSpecification" >}} vs. {{< vec-class "PartUsageSpecification" >}}). Both can coexist and be used at the same time in the same containing {{< vec-class DocumentVersion >}}.

On the far right hand side can be seen, that other areas in the VEC (indicated in orange on the right side) can use these instances regardless of the instantiation concept used.

## Relationship to Part Master Data

The information related to a component instance is in the VEC **always** logically divided in type definition and instance specific properties. In the VEC Type definitions are contained in {{< vec-class "Specification">}}s, instance specific properties are contained in {{< vec-class Role >}}s. 

The one major difference between the {{< vec-class "PartOccurrence" >}} and the {{< vec-class "PartUsage" >}} is the way how both are referring to their respective type definition. The {{< vec-class "PartOccurrence" >}} references its part master data specifications indirectly via a {{< vec-class PartVersion >}}. It is described by {{< vec-class PartOrUsageRelatedSpecification >}}s) and can be reused for multiple  {{< vec-class "PartOccurrence" >}}s. In contrast to this, {{< vec-class "PartUsage" >}}, references the specifications directly itself without the detour over the {{< vec-class PartVersion >}}. The {{< vec-class "PartUsage" >}} can be interpreted as a hybrid of {{< vec-class PartVersion >}} and {{< vec-class "PartOccurrence" >}} in a single entity. 

One notable difference is, the direction of the relationship with {{< vec-class PartOrUsageRelatedSpecification >}}s. The direction for the  {{< vec-class "PartUsage" >}} is inverse direction compared to {{< vec-class PartVersion >}}. A {{< vec-class PartVersion >}} is described by specifications, wheres a {{< vec-class "PartUsage" >}} references the relevant specifications. This has logical reasons in the assumed information lifecycle of the corresponding entities. A {{< vec-class PartVersion >}} is a pointer to a "real" component. Over the time, this component can be described with more information (adding specification) without changing the component itself. On the other hand, a {{< vec-class "PartUsage" >}} is defined in place by associating appropriate specifications, those specifications can be created for this individual {{< vec-class "PartUsage" >}} or being reused for multiple {{< vec-class "PartUsage" >}}. Therefore, specification could be referenced over the time by more {{< vec-class "PartUsage" >}}s without being changed.

A {{< vec-class "PartUsage" >}} shall reference all {{< vec-class PartOrUsageRelatedSpecification >}}s that provide relevant information about **itself**. This includes _general component data_ and _component characteristics_ that are relevant in the context (compare to "[Component Description]({{< relref "../component-description" >}})"). This does **not include** any specifications that are used transitively by other specifications (e.g. not the {{< vec-class ConnectorHousingSpecification >}} that defines the {{< vec-class HousingComponent >}} of an {{< vec-class EEComponentSpecification >}}, which is used for the {{< vec-class PartUsage >}}). This is illustrated in the Figure below (references between _Specifications_ & _Roles_ are omitted). 

{{< figure src="part-usage-specifications.svg" title="_PartUsage_ with its _Specifications_ and _Roles_" numbered="true" lightbox="true">}}

In the example from the beginning (figure "Comparison of PartUsages and PartOccurrences"), the {{< vec-class PartUsage >}} references the specifications from a _PartMaster_ {{< vec-class DocumentVersion >}}. However, this approach is not mandatory and the only reason here, is to keep the example as simple as possible. Depending on the context, different approaches to provide a {{< vec-class "PartUsage" >}} with specifications are possible. Reusing existing part master data (as shown in the example) is one. Putting the specifications in an independent {{< vec-class DocumentVersion >}} (e.g. a company standard or a type definition) is another one and last but not least, the specifications could also be defined in the same context as the {{< vec-class PartUsage >}}s.

## Instantiation with Roles

{{< vec-class "PartOccurrence" >}}s and {{< vec-class "PartUsage" >}}s are containing the {{< vec-class Role >}}s corresponding to their {{< vec-class "PartOrUsageRelatedSpecification" >}}s (see both figures above, references between the roles & specifications are omitted in the figures for reasons of readability). Directly under {{< vec-class "PartOccurrence" >}} or {{< vec-class "PartUsage" >}} only {{< vec-class Role >}}s shall be used, that have {{< vec-class "PartOrUsageRelatedSpecification">}}s defined directly in the corresponding part master data. Transitive dependencies (e.g. ConnectorHousingSpecification & Role in the figure above) are created in the appropriate subcontext, as defined by the VEC Model. 

Following the principle of optionality in the VEC, it is not required to create {{< vec-class Role >}}s, for all the {{< vec-class "PartOrUsageRelatedSpecification">}}s referenced in the part master data, if the corresponding aspect is not relevant in the individual context. 

 The contained {{< vec-class "Role" >}}s and their referenced {{< vec-class "PartOrUsageRelatedSpecification" >}} do not have to be exactly the same. They can be subset of those, but not a superset.


## Shared Specifications 

In the example above, the {{< vec-class "PartUsage">}} and the {{< vec-class "PartVersion">}} are using the **same** {{< vec-class "PartOrUsageRelatedSpecification">}}s. Such a reuse (or sharing) of information pieces is perfectly valid. However, it does **not** implicate, that the _PartUsage_ is an instance of the {{< vec-class PartVersion >}}. The precise meaning is, that in the final product a selected component, which is taking the place of the _PartUsage_, is required to satisfy the requirements expressed by the referenced specifications. In the example above, those requirements could be satisfied by this particular {{< vec-class PartVersion >}}, however, this might not be the only valid choice. 

When {{< vec-class "PartUsage">}}s and {{< vec-class "PartVersion">}}s share specifications, this has no deeper meaning than that it is a reuse of a block of information. In particular, the following aspects apply: 

The {{< vec-class PartUsage >}} is not required to reference all the specifications of the {{< vec-class PartVersion >}}. It can even reference contradicting specifications, for example:

- The {{< vec-class PartUsage >}} could reference only the {{< vec-class ConnectorHousingSpecification >}}, if the other properties are not a strict requirement. 
- The {{< vec-class PartUsage >}} could reference the {{< vec-class ConnectorHousingSpecification >}} of the {{< vec-class PartVersion >}}, but a different {{< vec-class GeneralTechnicalPartSpecification >}}, if for example the requirements for weight, color or robustness are different. 

The {{< vec-class PartOrUsageRelatedSpecification >}} for the {{< vec-class PartUsage >}} can describe a {{< vec-class PartVersion >}} at the same time, but they are **not required** to. That means, a {{< vec-class PartUsage >}} is free to define its own specifications, for example in its own context ({{< vec-class DocumentVersion >}}) or in a separate {{< vec-class DocumentVersion >}}.
  
## Realization of PartUsages with PartOccurrences

Although {{< vec-class PartUsage >}} and {{< vec-class PartOccurrence >}} can coexist at the same time (shown in figure 1), they represent different levels of abstraction. The coexistence is only possible, because in reality, a product definition of a harness can contain different layers of abstraction at the same time as well (e.g. some components can be defined in 150% definitions and some are only determinable in a 100% definition).

{{< figure src="realization.svg" title="Realization of PartUsages with PartOccurrences" numbered="true" lightbox="true">}}

Figure 2 presents a highly simplified situation for the sake of the concept. On the left hand side is a wiring definition with two Variants, _A_ & _B_. _A_ & _B_ have the same logical connectivity, however, variant _B_ has a slightly higher power output, resulting in a {{<vec-class PartUsage>}} (a requirement!) for variant B with a larger wire cross section area. The wiring also defines the color of the wire. However, other significant properties are left open (e.g. insulation material) for later determination. In the following design process, the other properties required for a component selection are defined (e.g. the insulation material, when the location of the wire in the vehicle is known). It is also decided, that it is more efficient to realize both variants with a single wire (satisfying both requirements at same time). Traceability is preserved in the case, with the _RealizedPartUsage_ reference from {{< vec-class PartOccurrence >}} to {{< vec-class PartUsage >}}. The fact that a {{< vec-class PartOccurrence >}} can realize the requirements of multiple {{< vec-class PartUsage >}}s at the same time is the reason that the multiplicity of this association is "0..*".

## Selection Tables / Part Substitutions


There are use cases where a specific component cannot be defined at the time of creation for a certain aspect of the product definition. This is often because harnesses are designed as 150% definitions, where some components can only be defined precisely in a 100% definition. Some examples are:
- The selection of a **ring terminal** depends on the exact number of wires and their cross-sectional area, which can often only be determined in a 100% definition. However, other requirements for the ring terminal (e.g. material, plating, size of the ring etc.) are already known in the 150% definition and can be specified.
- The selection of a **tube** depends on the exact bundle diameter, which also can often only be determined in a 100% definition. However, other requirements for the tube (e.g. material, color, wall thickness etc.) are already known in the 150% definition and can be specified.

In such cases, it is common practice to define a set or a family of possible components that satisfy the general requirements and can be selected later in the design process, when the other defining characteristics are known. This list of possible components is often referred to as a _selection table_ or _part substitution list_ and is expressed in the VEC by a {{< vec-class PartSubstitutionSpecification >}}.

For this implementation guideline, we will use the following selection table:

> **T-A100 Corrugated Pipe Selection Table**  
> | Part Number | Description               | Nominal Size | Inner &#8960; |     Outer &#8960; |
> |-------------|---------------------------|--------------|--------------:|------------------:|
> | T-0001      | Corrugated Pipe N6/10     | N6/10        | 6.3 mm        |           10.0 mm |
> | T-0002      | Corrugated Pipe N9/13     | N9/13        | 9.0 mm        |           13.6 mm |

There are two common ways to represent such a selection table in current design processes:

1. Option 1: The selection table is given a regular part number (e.g. `T-A100`) and is handled like a regular part. The actual selection of a specific component (e.g. `T-0001`) is done later in the process by the supplier. The fact that `T-A100` is a selection table is only documented in the part drawing or other textual fields.  
2. Option 2: The selection table is _not_ given a regular part number. Instead, it is referenced by a document or drawing number, and the selection table is documented in those textual fields. The actual selection is also done later in the process by the supplier.

Both approaches can be expressed explicitly in the VEC with equal quality. The main difference is that in the first approach the selection table is expressed as a regular {{< vec-class PartVersion >}} with a part number, whereas in the second approach it is expressed as a {{< vec-class PartUsage >}} without a part number.

First, the items in the selection table must be expressed in the VEC as regular components, each with a {{< vec-class PartVersion >}} and all the relevant {{< vec-class PartOrUsageRelatedSpecification >}}s. For `T-0001` the corresponding XML snippet could look like this:

```xml
  ...
  <DocumentVersion id="DocumentVersion_00001">
    <CompanyName>Acme Inc.</CompanyName>
    <DocumentNumber>DOC-T-0001</DocumentNumber>
    <DocumentType>PartMaster</DocumentType>
    <DocumentVersion>1</DocumentVersion>
    <ReferencedPart>PartVersion_00025</ReferencedPart>
    <Specification xsi:type="vec:CorrugatedPipeSpecification" id="CorrugatedPipeSpecification_00002">
      <Identification>CPS-T-0001</Identification>
      <DescribedPart>PartVersion_00025</DescribedPart>
      <InnerDiameter id="NumericalValue_00005">
        <UnitComponent>SIUnit_00028</UnitComponent>
        <ValueComponent>6.3</ValueComponent>
      </InnerDiameter>
      <NominalSize>6/10</NominalSize>
      <OuterDiameter id="NumericalValue_00006">
        <UnitComponent>SIUnit_00028</UnitComponent>
        <ValueComponent>10.0</ValueComponent>
      </OuterDiameter>
      <CorrugationHeight id="NumericalValue_00003">
        <UnitComponent>SIUnit_00028</UnitComponent>
        <ValueComponent>3.0</ValueComponent>
      </CorrugationHeight>
      <CorrugationWidth id="NumericalValue_00004">
        <UnitComponent>SIUnit_00028</UnitComponent>
        <ValueComponent>5.0</ValueComponent>
      </CorrugationWidth>
    </Specification>
  </DocumentVersion>
  ...
  <PartVersion id="PartVersion_00025">
    <CompanyName>Acme Inc.</CompanyName>
    <PartNumber>T-0001</PartNumber>
    <PartVersion>1</PartVersion>
    <PrimaryPartType>CorrugatedPipe</PrimaryPartType>
  </PartVersion>
  ...
```
Then, the selection table has to be expressed with placeholder component specifications defining the common attributes of the entries in the selection table and a {{< vec-class PartSubstitutionSpecification >}} referencing the possible components. The XML for that should look like this:

```xml
  ...
  <DocumentVersion id="DocumentVersion_00013">
    <CompanyName>Acme Inc.</CompanyName>
    <DocumentNumber>DOC-T-A100</DocumentNumber>
    <DocumentType>PartMaster</DocumentType>
    <DocumentVersion>1</DocumentVersion>
    <ReferencedPart>PartVersion_00027</ReferencedPart>
    <Specification xsi:type="vec:CorrugatedPipeSpecification" id="CorrugatedPipeSpecification_00014">
      <Identification>CPS-T-A100</Identification>
      <DescribedPart>PartVersion_00027</DescribedPart>
      <CorrugationHeight id="NumericalValue_00015">
        <UnitComponent>SIUnit_00028</UnitComponent>
        <ValueComponent>3.0</ValueComponent>
      </CorrugationHeight>
      <CorrugationWidth id="NumericalValue_00016">
        <UnitComponent>SIUnit_00028</UnitComponent>
        <ValueComponent>5.0</ValueComponent>
      </CorrugationWidth>
    </Specification>
    <Specification xsi:type="vec:PartSubstitutionSpecification" id="PartSubstitutionSpecification_00017">
      <Identification>PSS-T-A100</Identification>
      <DescribedPart>PartVersion_00027</DescribedPart>
      <AlternativePartVersions>PartVersion_00025 PartVersion_00026</AlternativePartVersions>
    </Specification>
  </DocumentVersion>
  ...
  <PartVersion id="PartVersion_00027">
    <CompanyName>Acme Inc.</CompanyName>
    <PartNumber>T-A100</PartNumber>
    <PartVersion>1</PartVersion>
    <PrimaryPartType>CorrugatedPipe</PrimaryPartType>
  </PartVersion>
  ...
```

{{% callout note %}}
In the example above, the {{< vec-class PartSubstitutionSpecification >}} and the {{< vec-class CorrugatedPipeSpecification >}} reference a {{< vec-class PartVersion >}} as `DescribedPart`. This is only relevant for Option 1, when the selection table is represented as a regular part with a part number. In Option 2, when the selection table is not represented as a regular part, the `DescribedPart` references of the {{< vec-class PartOrUsageRelatedSpecification >}}s and the `ReferencedPart` of the {{< vec-class DocumentVersion >}} can be omitted.
{{% /callout %}}

The real difference between both options is now, how the selection table is referenced in the actual product definition. In Option 1, the selection table is referenced via its regular {{< vec-class PartVersion >}}, by creating a {{< vec-class PartOccurrence >}} referencing this {{< vec-class PartVersion >}}. The XML snippet for that could look like this:

```xml
  ...
    <Specification xsi:type="vec:CompositionSpecification" id="CompositionSpecification_00019">
      <Identification>COMPONENTS</Identification>
      <Component id="PartOccurrence_00020">
        <Identification>TUBE-OCC</Identification>
        <Role xsi:type="vec:CorrugatedPipeRole" id="CorrugatedPipeRole_00021">
          <Identification>TUBE-OCC</Identification>
          <WireProtectionSpecification>CorrugatedPipeSpecification_00014</WireProtectionSpecification>
        </Role>
        <Part>PartVersion_00027</Part>
      </Component>
    </Specification>
  ...
```
In Option 2, the {{< vec-class PartSubstitutionSpecification >}} representing the selection table is referenced directly via the {{< vec-class PartUsage >}}. The XML snippet for that could look like this:

```xml
  ...
    <Specification xsi:type="vec:PartUsageSpecification" id="PartUsageSpecification_00022">
      <Identification>USAGES</Identification>
      <PartUsage id="PartUsage_00023">
        <Identification>TUBE-PU</Identification>
        <Role xsi:type="vec:CorrugatedPipeRole" id="CorrugatedPipeRole_00024">
          <Identification>TUBE-PU</Identification>
          <WireProtectionSpecification>CorrugatedPipeSpecification_00014</WireProtectionSpecification>
        </Role>
        <PrimaryPartUsageType>CorrugatedPipe</PrimaryPartUsageType>
        <PartOrUsageRelatedSpecification>CorrugatedPipeSpecification_00014 PartSubstitutionSpecification_00017</PartOrUsageRelatedSpecification>
      </PartUsage>
    </Specification>
  ...
```
The complete example can be downloaded from the [Additional Resources]({{<relref "#additional-resources">}}) at the end of this page.

