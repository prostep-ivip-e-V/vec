---
title: Cavity Mapping
toc: false
type: specs
layout: diagram
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Diagram
classes:
  - MappingSpecification
  - CavityMapping
  - SlotMapping
  - Mapping
  - PartVersion
menu:
  VEC-2.1.0:    
    parent: component-characteristics
    identifier: component-characteristics/cavity-mapping
    weight: 1005012 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1005012
---
{{< svgfigure src="cavity-mapping.png" width="534" height="462" caption="Cavity Mapping" numbered="true" >}}
  {{< svglink relref="../../classes/mappingspecification.md" x="21.0" y="15.0" width="125.0" height="43.0" >}}
  {{< svglink relref="../../classes/cavitymapping.md" x="14.0" y="381.0" width="134.0" height="67.0" >}}
  {{< svglink relref="../../classes/slotmapping.md" x="17.0" y="260.0" width="134.0" height="67.0" >}}
  {{< svglink relref="../../classes/mapping.md" x="14.0" y="120.0" width="146.0" height="67.0" >}}
  {{< svglink relref="../../classes/partversion.md" x="299.0" y="99.0" width="212.0" height="127.0" >}}
{{< / svgfigure >}}
<p> A <i>MappingSpecification </i>defines the mapping of cavities in one connector housing onto the cavities in another connector housing. In order to create a compact data structure, the mapping is not done with direct references to <i>Cavities, </i>but with <i>Mapping</i> elements referencing two <i>PartVersions </i>for which the mapping is valid.      </p>      <p> The <i>Mapping</i> element contains <i>SlotMappings</i> and <i>CavityMappings </i>to define which <i>Cavity</i> of one side gets plugged into which <i>Cavity</i> of the other side. The mappings are based on functional keys (e.g. cavity number), not technical keys like <i>ID/IDREF</i>, to ensure flexibility when partitioning the data into different VEC&#160;files.      </p>      <p> For a valid <i>Mapping, </i>the referenced <i>PartVersions </i>shall represent parts that have &quot;related&quot; <i>ConnectorHousingSpecifications </i>(e.g. connectors or E/E-components, inliner). The <i>identification-</i>Attributes in the <i>Mapping</i> class are used in cases where the &quot;related&quot; <i>ConnectorHousingSpecification</i> can not be resolved unambiguously. Most regular connectors are described directly by a single <i>ConnectorHousingSpecification.</i> In these cases, the <i>identification-</i>Attributes in the <i>Mapping </i>class can be omitted. In the case of E/E-components, it is not clear from the <i>PartVersion</i> alone against which <i>ConnectorHousingSpecification</i> the mapping is defined, as each <i>HousingComponent</i> can reference its own. In these cases, the <i>identifications </i>in the <i>Mapping </i>are used to reference the relevant <i>ConnectorHousingSpecification. </i>If the <i>Slots</i> of all relevant <i>ConnectorHousingSpecifications</i> have unique identifiers within the E/E-component, the <i>identifications </i>in the<i> Mapping </i>can be omitted.      </p>      <p> the component is only described indirectly by the <i>ConnectorHousingSpecifications </i>for each <i>HousingComponent. </i>      </p>      <p> The identificationA&#160;&amp;&#160;B of the SlotMapping /&#160;CavityMapping shall have correspondent <i>Slot.identifcation &amp;&#160;Cavity.identification</i> in the respective part master definition of the referenced <i>PartVersions. </i>      </p>      <p> <i>&#160;</i>      </p>