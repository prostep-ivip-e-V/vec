---
title: Geometric Properties of Connector Housings (Model)
toc: false
type: specs
layout: diagram
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Diagram
classes:
  - Unit
  - Cavity
  - CartesianPoint3D
  - CavityPositionDetail
  - CartesianVector3D
  - CavitySpecification
menu:
  VEC-2.1.0:    
    parent: component-characteristics
    identifier: component-characteristics/geometric-properties-of-connector-housings-model
    weight: 1005010 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1005010
---
{{< svgfigure src="geometric-properties-of-connector-housings-model.png" width="980" height="395" caption="Geometric Properties of Connector Housings (Model)" numbered="true" >}}
  {{< svglink relref="../../classes/unit.md" x="827.0" y="148.0" width="139.0" height="82.0" >}}
  {{< svglink relref="../../classes/cavity.md" x="449.0" y="29.0" width="195.0" height="92.0" >}}
  {{< svglink relref="../../classes/cartesianpoint3d.md" x="393.0" y="302.0" width="209.0" height="79.0" >}}
  {{< svglink relref="../../classes/cavitypositiondetail.md" x="449.0" y="176.0" width="220.0" height="67.0" >}}
  {{< svglink relref="../../classes/cartesianvector3d.md" x="631.0" y="302.0" width="220.0" height="79.0" >}}
  {{< svglink relref="../../classes/cavityspecification.md" x="15.0" y="15.0" width="283.0" height="163.0" >}}
{{< / svgfigure >}}
<p> The geometric properties of connector housings are closely related to the <i>LocalGeometrySpecification</i>, described in the section &quot;Coordinate Systems of Components&quot;. Positions of common elements (e.g. <i>BoundingBox, PlacementPoint /&#160;SegmentConnectionPoint</i>) are defined in a <i>LocalGeometrySpecification.</i> Within the <i>ConnectorHousingSpecification</i> only those aspects that apply exclusively to connectors are defined. All definitions &amp;&#160;conventions that are required to define these geometric properties are described in the previous section.      </p>      <p> All geometric properties of a cavity within the context of a connector are aggregated in the&#160;optional <i>CavityPositionDetail</i>.      </p>      <p> &#160;      </p>