---
title: Simple External Mapping
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
menu:
  VEC-1.1.1:    
    parent: vec-examples/external-mapping/simple-external-mapping
    identifier: vec-examples/external-mapping/simple-external-mapping/simple-external-mapping
    weight: 1001001001 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1001001001
---
{{< svgfigure src="simple-external-mapping.png" width="823" height="437" caption="Simple External Mapping" numbered="true" >}}
{{< / svgfigure >}}
<p> The Diagram shows a simple example for the usage of the external mapping mechanism. The elements highlighted in yellow represent the actual information described by this VEC instance. The elements highlighted in blue are defining the concrete mapping and the <i>DocumentVersion</i> highlighted in green represents the link to the mapped document (in this case a SVG-symbol).     </p>      <p> The <i>ExternalMapping</i> element in this example defines that a representation of the referenced <i>ConnectorHousingSpecification</i> can be found in the SVG-symbol under the key “ID_27101123”.     </p>      <p> The actual content data of the VEC-file (highlighted in yellow) and the mapping information is separated into two different <i>DocumentVersion</i> elements. This means even though both information are contained in the same VEC-file, from the perspective of a versioning mechanism they are clearly separated.      </p>