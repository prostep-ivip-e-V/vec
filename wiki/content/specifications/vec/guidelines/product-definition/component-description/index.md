---
title: "Component Description"
#linktitle: Link in Sidemenu
type: specs
# Table of Content on the right side. Only useful for large pages.
toc: true
authors: [becker]
tags: ["Gripping", "Automation", "Handling"]
categories: []
date: 2022-09-12
draft: false
review: false
classes:
  - PrimaryPartType
  - PartOrUsageRelatedSpecification
  - PartVersion
  - GeneralTechnicalPartSpecification
  - GrippingFeature

history:
  - date: 2022-09-12T00:00:00Z
    description: "Clarification of the Minimum Content of DocumentVersions for Part Master Data."
    issue: "KBLFRM-931"
  - date: 2026-09-22T00:00:00Z
    description: "Added gripping features for handling automation."
    ghIssue: "1163"

menu:
  vec-guidelines:
    # Toplevel element. For sub sections the identifier of the subsection
    parent: product-definition
    weight: 100

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 100
---
{{% callout note %}}
Before reading these implementation guidelines, it is highly recommended to read the "{{< vec-diagram "general-component-data/description-of-parts" >}}" section in the VEC Online Model Description.
{{% /callout %}}

This section explains the concepts for the representation of part master data and component specifications in the VEC. For a general explanation of the terms, see the parent section [Product Definition]({{< relref ".." >}}). If you search information about specific component types e.g. wires, connectors etc. see [Component Types]({{< relref "../../component-types" >}})

{{< figure src="component-characteristics.jpg" title="Aspects of a Component Description" numbered="true" lightbox="true">}}

Due to the various supported use cases, the VEC's concept for component specifications is designed modular. The figure above contains the most relevant elements 

_Note: The picture is for illustration purpose only and is taken from a current VEC version at the time of writing. The classes, attributes etc. might have changed in the mean time._ 

The unique identification of a component is its {{< vec-class PartVersion >}}. It is serves as an identifier and contains only additional PDM information like {{< vec-class Approval >}},{{< vec-class Creation >}} or {{< vec-class ChangeDescription >}}. The actual description of the properties of a component is done via {{< vec-class PartOrUsageRelatedSpecification >}}s, whereby each specification covers only a certain aspect of the component. A holistic description of a component is a combination of multiple specifications, but no more than one of a specific specification type at a time. Those specifications can be divided into two groups:

1. **General Component Data**: Specifications in this group describe general properties of components that are applicable to all or at least a large group of components. For example:

    - {{< vec-class GeneralTechnicalPartSpecification>}} for common properties like
      weight or material for *all* component types.
    - {{< vec-class PlaceableElementSpecification >}} for components that have an explicitly defined
      position in the harness topology lik wire protections, connectors or fixings.
    - {{< vec-class LocalGeometrySpecification >}} for information about the
      component's geometry model, e.g. the bounding box, transformations, segment
      connection points.
 
2. **Component Characteristics**: Specifications in this group describe properties that are very specific for a certain component type, e.g. {{< vec-class WireSpecification >}} for wires or {{< vec-class ConnectorHousingSpecification >}} for connectors. In most cases, a part can be clearly assigned to one of these categories. However, there can be cases of "hybrid" components that fall into more than one category. In this case, the {{< vec-class PrimaryPartType >}} defines the primary character of the components. A detailed description can be found here: "{{< vec-diagram "general-component-data/description-of-parts" >}}".


## Unclassified / Custom Component Types 

The VEC natively supports a wide range of component types and attributes for them. Nevertheless, this list is probably not exhaustive when considering which component types could potentially appear in the BOM of a wire harness and could also be added by future developments.

Currently, the list of directly supported types is derived from the specific requirements of the VEC and is focused on those components that have a specific relationship with other components in the harness (e.g. wires/connectors) and whose attributes play a strong role in the selection processes during development.

However, following its principle of openness and extendability, the VEC provides a possibility to add such components, that are not specifically supported by it, in a defined way as user/process defined components. The necessary elements to do this are:

1. The {{< vec-class PrimaryPartType >}} to use is `Other`.
2. "General Component Data" can be added with corresponding specifications analogous to a regular component (see above).
3. The "Component Characteristics" is expressed by an instance of {{< vec-class PartOrUsageRelatedSpecification >}} itself (no subclass). 
4. The concrete type of the component (for regular components expressed by the _PrimaryPartType_), is defined in the {{< vec-class PartOrUsageRelatedSpecification >}}._SpecialPartType_-Attribute.
5. Specific attributes of the "new" type (not available via "General Component Data") can be added as {{< vec-class CustomProperty >}} to the {{< vec-class PartOrUsageRelatedSpecification >}}.
6. Instancing is done via a {{< vec-class SpecificRole >}} (see chapter "{{< vec-diagram "instances-of-components/instances-of-undefined-components">}}" in the Specification for Details).

An example in XML of such a custom component can be found in the [XML Listings](#xml-listings) section at the end of this page.


## Gripping Features

{{% callout note %}}
This section applies to VEC 2.3 and later. The class `GrippingFeature` and the attribute
{{< vec-class GeneralTechnicalPartSpecification >}}._SupportedGrippingFeatures_ were introduced
with version 2.3.
{{% /callout %}}

The handling of components in an automated assembly process (e.g. by a robotic gripper) requires that the gripper can engage the component reliably. Standards such as DIN 72036 therefore require components - connector housings in the first place, but grommets, covers or fixings just as well - to provide standardized geometries for the form-fitting gripping during handling and mating processes.

Since this is a property of _any_ component and not of a specific component type, it is part of the "General Component Data" and described with the _SupportedGrippingFeatures_ of the {{< vec-class GeneralTechnicalPartSpecification >}}. A `GrippingFeature` is identified by a _Key_, whose meaning is defined by a _ReferenceSystem_ - the same pattern that is used for {{< vec-class Material >}} or {{< vec-class Color >}} (see [Physical Properties]({{< relref "../../key-concepts/physical-properties#reference-systems" >}})).

{{% callout note %}}
In contrast to {{< vec-class Material >}} or {{< vec-class Color >}}, the values of
_SupportedGrippingFeatures_ are **not** alternative representations of one and the same value.
They are the set of features the component actually provides. A component may therefore declare
several entries for the same _ReferenceSystem_, as long as their _Key_ values differ. The combination
of _ReferenceSystem_ and _Key_ must be unique.
{{% /callout %}}

It can be assumed that two components declaring the same _Key_ in the same _ReferenceSystem_ can be handled by the same gripper. This is what makes the information usable for a variance analysis: counting the distinct _ReferenceSystem_ / _Key_ combinations over all components of a harness yields the number of different grippers a production line has to provide.

If a component supports no standardized gripping geometry at all, the attribute is simply absent. There is no dedicated "no gripping feature" value - an empty list is not distinguishable from "not specified", which is the regular VEC behaviour for optional information (see [Content Requirements](#content-requirements)).

### Reference Systems for Gripping Features

The _ReferenceSystem_ is a free string, so the same standard can be written down in different ways. For the variance analysis described above to work across suppliers, the spelling has to be agreed upon. The following values should be used:

| Reference System | Value of _ReferenceSystem_ |
|---|---|
| DIN 72036 | `DIN 72036` |
| A company specific system | The company name, consistent with its usage for {{< vec-class Color >}} and {{< vec-class Material >}} (e.g. `ACME Inc.`) |

### XML Listing

The listing below shows a connector housing that supports two different gripping features of the same reference system and one company specific feature. The gripping features are located in the {{< vec-class GeneralTechnicalPartSpecification >}}, the connector specific data in the {{< vec-class ConnectorHousingSpecification >}}. Both describe the same {{< vec-class PartVersion >}}.

```xml
<DocumentVersion id="id_00001">
    <DocumentType>PartMaster</DocumentType>
    <ReferencedPart>id_part_4711</ReferencedPart>
    <Specification xsi:type="vec:GeneralTechnicalPartSpecification" id="id_gtps_1">
        <Identification>GTPS_4711</Identification>
        <DescribedPart>id_part_4711</DescribedPart>
        <SupportedGrippingFeatures id="id_gf_1">
            <Key>AR-1</Key>
            <ReferenceSystem>DIN 72036</ReferenceSystem>
            <Description>
                <LanguageCode>en</LanguageCode>
                <Value>Automation rib, type 1</Value>
            </Description>
        </SupportedGrippingFeatures>
        <SupportedGrippingFeatures id="id_gf_2">
            <Key>AR-3</Key>
            <ReferenceSystem>DIN 72036</ReferenceSystem>
        </SupportedGrippingFeatures>
        <SupportedGrippingFeatures id="id_gf_3">
            <Key>GRP-A</Key>
            <ReferenceSystem>ACME Inc.</ReferenceSystem>
        </SupportedGrippingFeatures>
    </Specification>
    <Specification xsi:type="vec:ConnectorHousingSpecification" id="id_chs_1">
        <Identification>CHS_4711</Identification>
        <DescribedPart>id_part_4711</DescribedPart>
    </Specification>
</DocumentVersion>
```


## `PartMaster` - DocumentVersions

{{< figure src="part-master-document.svg" class="float-right" title="Part Master Documents" numbered="true" lightbox="true" width="400">}}

A part master document describes the properties of a component or a group of
components (a {{< vec-class partversion >}} or a set of
{{< vec-class partversion >}}s). It can be recognised with the {{< vec-class DocumentType >}} = `PartMaster`. A schematic illustration can be found in the figure on the right side. It contains some general purpose specifications (highlighted in light blue) and component characteristics (highlighted in strong green), in most cases one. Those specifications are not mandatory and only necessary if the corresponding information aspect is relevant in the use case and can be provided. 

Additionally, the document _could_ contain auxillary specifications that are
required for a complete component description (in the illustration the
{{< vec-class CavitySpecification >}} and {{< vec-class SlotSpecification >}} highlighted in light green). 

The emphasis here is on "could", as this is a quite common case,
but a process-specific interpretation of component definitions. For example, if  the cavity system is
described and released together with the connector (in the same document), it
makes sense that the corresponding specification is included in the same
{{< vec-class DocumentVersion >}}. However, if the cavity system is defined and released
independently, i.e. in a separate document, and used by multiple connectors, it
would be appropriate to place it in its own {{< vec-class DocumentVersion >}}
and reuse the information in the document of the connectors (see [Reuse of
Documents]({{< relref "../../key-concepts/general-structure#combination-and-reuse-of-documents" >}})).

### Content Requirements

In an omniscient view of the world, it would be possible to formulate logical constraints and minimum requirements for the content of a `PartMaster`-Document, such as mandatory content or a logical relationship between the {{< vec-class PrimaryPartType >}} and the types of descriptive specifications that have to be used. For example, it could be stated that each component should have a {{< vec-class GeneralTechnicalPartSpecification >}} and one {{< vec-class PartOrUsageRelatedSpecification >}} corresponding to its type (e.g. a {{< vec-class ConnectorHousingSpecification >}} when the _PrimaryPartType_ = `ConnectorHousing`).

However, a given VEC file can only be a fragment of this complete picture. The availability of information in a VEC depends on the specific use case, the process, the point in the process, the degree of maturity of the tooling, "need to know" and IP-protection policies and many more. Therefore, even if there are logical constraint, they are not enforced in the VEC.

## XML Listings
The listing below contains an example of the general structure of a `PartMaster` VEC, additionally it does not contain a regular VEC component, but also illustrates the usage of "Custom Component Types". 
```xml
<vec:VecContent id="id_00000" xmlns:vec="http://www.prostep.org/ecad-if/2011/vec">
    <VecVersion>2.0.1</VecVersion>
    <GeneratingSystemName>VEC Samples</GeneratingSystemName>
    <DateOfCreation>2022-10-07T00:00:00</DateOfCreation>
    <GeneratingSystemVersion>0.0.1</GeneratingSystemVersion>
    <DocumentVersion id="id_00001">
        <CompanyName>prostep ivip</CompanyName>
        <DocumentNumber>D-213454-143-31</DocumentNumber>
        <DocumentType>PartMaster</DocumentType>
        <DocumentVersion>1</DocumentVersion>
        <ReferencedPart>id_00007</ReferencedPart>
        <Specification xsi:type="vec:GeneralTechnicalPartSpecification" id="id_00002" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
            <Identification>P-213454-143-30</Identification>
            <DescribedPart>id_00007</DescribedPart>
            <ColorInformation id="id_00003">
                <Key>RD</Key>
                <ReferenceSystem>IEC 60757</ReferenceSystem>
            </ColorInformation>
        </Specification>
        <Specification xsi:type="vec:PartOrUsageRelatedSpecification" id="id_00004" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
            <CustomProperty xsi:type="vec:NumericalValueProperty" id="id_00005">
                <PropertyType>power</PropertyType>
                <Value id="id_00006">
                    <UnitComponent>id_00008</UnitComponent>
                    <ValueComponent>1.21</ValueComponent>
                </Value>
            </CustomProperty>
            <Identification>P-213454-143-30</Identification>
            <SpecialPartType>FluxCapacitor</SpecialPartType>
            <DescribedPart>id_00007</DescribedPart>
        </Specification>
    </DocumentVersion>
    <PartVersion id="id_00007">
        <CompanyName>prostep ivip</CompanyName>
        <PartNumber>P-213454-143-30</PartNumber>
        <PartVersion>1</PartVersion>
        <PrimaryPartType>Other</PrimaryPartType>
    </PartVersion>
    <Unit xsi:type="vec:SIUnit" id="id_00008" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
        <SiUnitName>Watt</SiUnitName>
        <SiPrefix>Giga</SiPrefix>
    </Unit>
</vec:VecContent>
```
