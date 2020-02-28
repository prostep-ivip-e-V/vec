---
title: Cavity Mapping
toc: false
type: specs
layout: diagram
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Diagram
classes:
  - Mapping
  - MappingSpecification
  - CavityMapping
  - SlotMapping
  - PartVersion
menu:
  VEC-1.1.1:    
    parent: description-of-components
    identifier: description-of-components/cavity-mapping
    weight: 1003007 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1003007
---
{{< svgfigure src="cavity-mapping.png" width="518" height="462" caption="Cavity Mapping" numbered="true" >}}
  {{< svglink relref="../../classes/mapping.md" x="35.0" y="113.0" width="80.0" height="92.0" >}}
  {{< svglink relref="../../classes/mappingspecification.md" x="21.0" y="15.0" width="125.0" height="43.0" >}}
  {{< svglink relref="../../classes/cavitymapping.md" x="14.0" y="381.0" width="134.0" height="67.0" >}}
  {{< svglink relref="../../classes/slotmapping.md" x="17.0" y="260.0" width="134.0" height="67.0" >}}
  {{< svglink relref="../../classes/partversion.md" x="299.0" y="99.0" width="196.0" height="115.0" >}}
{{< / svgfigure >}}
<p> A <i>MappingSpecification </i>defines the mapping of cavities in one connector housing onto the cavities in another connector housing. In order to create a compact data structure the mapping is not done with direct references to <i>Cavities, </i>but with <i>Mapping</i> elements referencing two <i>PartVersions </i>for which the mapping is valid.     </p>      <p> The <i>Mapping</i> element contains <i>SlotMappings</i> and <i>CavityMappings </i>to define which <i>Cavity</i> of one side gets plugged into which <i>Cavity</i> of the other side.      </p>