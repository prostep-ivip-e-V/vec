﻿---
title: Default Dimensions
toc: false
type: specs
layout: diagram
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Diagram
classes:
  - DefaultDimensionSpecification
  - Tolerance
  - DefaultDimensionType
  - Specification
  - DefaultDimension
menu:
  VEC-2.0.1:    
    parent: topology-and-geometry
    identifier: topology-and-geometry/default-dimensions
    weight: 1009010 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1009010
---
{{< svgfigure src="default-dimensions.png" width="467" height="425" caption="Default Dimensions" numbered="true" >}}
  {{< svglink relref="../../classes/defaultdimensionspecification.md" x="26.0" y="127.0" width="194.0" height="43.0" >}}
  {{< svglink relref="../../classes/tolerance.md" x="26.0" y="344.0" width="194.0" height="67.0" >}}
  {{< svglink relref="../../classes/defaultdimensiontype.md" x="259.0" y="218.0" width="194.0" height="106.0" >}}
  {{< svglink relref="../../classes/specification.md" x="15.0" y="15.0" width="217.0" height="67.0" >}}
  {{< svglink relref="../../classes/defaultdimension.md" x="21.0" y="218.0" width="217.0" height="67.0" >}}
{{< / svgfigure >}}
<i>DefaultDimension</i> can be used to define standard tolerances that apply to certain elements. Typically they are represented in a document or a drawing as a table (e.g. for wires with length &lt; x; tolerance a, x &lt; length &lt; y; tolerance b and so on).