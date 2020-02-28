---
title: Default Dimensions
toc: false
type: specs
layout: diagram
date: "2020-02-01"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Diagram
classes:
  - DefaultDimensionSpecification
  - Tolerance
  - DefaultDimension
  - Specification
menu:
  VEC-1.2.0:    
    parent: topology-and-geometry
    identifier: topology-and-geometry/default-dimensions
    weight: 1008010 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1008010
---
{{< svgfigure src="default-dimensions.png" width="246" height="425" caption="Default Dimensions" numbered="true" >}}
  {{< svglink relref="../../classes/defaultdimensionspecification.md" x="26.0" y="127.0" width="194.0" height="43.0" >}}
  {{< svglink relref="../../classes/tolerance.md" x="26.0" y="344.0" width="194.0" height="67.0" >}}
  {{< svglink relref="../../classes/defaultdimension.md" x="21.0" y="218.0" width="204.0" height="67.0" >}}
  {{< svglink relref="../../classes/specification.md" x="15.0" y="15.0" width="217.0" height="67.0" >}}
{{< / svgfigure >}}
<i>DefaultDimension</i> can be used to define standard tolerances that apply to certain elements. Typically they are represented in a document or a drawing as a table (e.g. for wires with length &lt; x; tolerance a, x &lt; length &lt; y; tolerance b and so on).