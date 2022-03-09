---
title: Connection View Specification
toc: false
type: specs
layout: diagram
date: "2022-03-09"
draft: false
specification: VEC
version: 2.0.0
documentType: "Recommendation"
elementType: Diagram
classes:
  - Transformation2D
  - ConnectionNodeViewItem
  - CartesianPoint2D
  - ComponentPortViewItemSide
  - ComponentPortViewItem
  - Specification
  - ComponentConnector
  - ComponentPort
  - ComponentNode
  - ConnectionViewSpecification
  - ConnectionSpecification
menu:
  VEC-2.0.0:    
    parent: connectivity
    identifier: connectivity/connection-view-specification
    weight: 1010005 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1010005
---
{{< svgfigure src="connection-view-specification.png" width="1234" height="692" caption="Connection View Specification" numbered="true" >}}
  {{< svglink relref="../../classes/transformation2d.md" x="219.0" y="260.0" width="107.0" height="91.0" >}}
  {{< svglink relref="../../classes/connectionnodeviewitem.md" x="499.0" y="267.0" width="152.0" height="67.0" >}}
  {{< svglink relref="../../classes/cartesianpoint2d.md" x="37.0" y="246.0" width="127.0" height="169.0" >}}
  {{< svglink relref="../../classes/componentportviewitemside.md" x="863.0" y="113.0" width="173.0" height="106.0" >}}
  {{< svglink relref="../../classes/componentportviewitem.md" x="891.0" y="274.0" width="209.0" height="67.0" >}}
  {{< svglink relref="../../classes/specification.md" x="268.0" y="15.0" width="217.0" height="67.0" >}}
  {{< svglink relref="../../classes/componentconnector.md" x="667.0" y="491.0" width="217.0" height="67.0" >}}
  {{< svglink relref="../../classes/componentport.md" x="1003.0" y="484.0" width="217.0" height="79.0" >}}
  {{< svglink relref="../../classes/componentnode.md" x="275.0" y="491.0" width="255.0" height="103.0" >}}
  {{< svglink relref="../../classes/connectionviewspecification.md" x="37.0" y="120.0" width="715.0" height="34.0" >}}
  {{< svglink relref="../../classes/connectionspecification.md" x="279.0" y="635.0" width="750.0" height="43.0" >}}
{{< / svgfigure >}}
<p> The <i>ConnectionViewSpecification</i> supports the exchange of a basic layout for a <i>ConnectionSpecification</i>. The objective is not a pixel perfect representation of a schematic diagram in the VEC (with label positions, font sizes etc.) Such use cases are supported via the external mapping with other standards like SVG. However, a reasonable arrangement of the <i>ComponentNodes</i> on a diagram sheet greatly improves the understanding and can not (easily) be found by an automatic algorithm.&#160;Therefore, a basic layout has value in the context of data exchange and is in scope of the VEC.      </p>      <p> A <i>ConnectionViewSpecification</i> represents the layout of a schematic diagram /&#160;sheet. The layout is defined with <i>ComponentNodeViewItems</i>, each representing a <i>Component</i><i>Node.</i> A <i>ConnectionViewSpecification</i> does not have to represent the complete content of a <i>ConnectionSpecification.</i> It is perfectly valid to split the layout of a <i>ConnectionSpecification </i>into multiple <i>ConnectionViewSpecifications</i>, one for each view (e.g. sheet) and each layouting a subset of a <i>ConnectionSpecification.</i> It is also valid to have multiple <i>Component</i><i>NodeViewItems</i> for a <i>Component</i><i>Node</i>.      </p>      <p> The <i>Component</i><i>NodeViewItem</i> contains <i>Component</i><i>PortViewItems</i> for each <i>Component</i><i>Port</i> displayed on this <i>Component</i><i>NodeViewItem.&#160;</i>This can be a subset of all <i>Component</i><i>Ports </i>of the corresponding <i>Component</i><i>Node. </i>      </p>      <p> For <i>Connections</i> there are no explicit view items defined. The representation and routing path of a <i>Connection</i><i> </i>is not conisidered as basic layout information. All <i>Connections</i> that are connected to a displayed <i>Component</i><i>Port</i> are considered to be display on the diagram represented by <i>ConnectionViewSpecification</i><i>.</i>      </p>      <p> <i>&#160;</i>      </p>      <p> &#160;      </p>