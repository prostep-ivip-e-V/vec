---
title: "Component Description"
#linktitle: Link in Sidemenu
type: specs
# Table of Content on the right side. Only useful for large pages.
toc: true
authors: [becker]
tags: []
categories: []
date: 2022-09-12
draft: false
review: true
classes:
  - PrimaryPartType
  - PartOrUsageRelatedSpecification
  - PartVersion

history:
  - date: 2022-09-12T00:00:00Z
    description: "Clarification of the Minimum Content of DocumentVersions for Part Master Data."
    issue: "KBLFRM-931"

menu:
  vec-guidelines:
    # Toplevel element. For sub sections the identifier of the subsection
    parent: product-definition
    weight: 100

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 100
---
{{< review "multiple issues, see history for the relevant issue numbers">}}

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
