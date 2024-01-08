---
title: Net View Specification
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
  - Transformation2D
  - NetworkPortViewItemSide
  - NetworkNodeViewItem
  - CartesianPoint2D
  - NetworkPortViewItem
  - Specification
  - NetworkPort
  - Net
  - NetworkNode
  - NetViewSpecification
  - NetSpecification
menu:
  VEC-2.1.0:    
    parent: connectivity
    identifier: connectivity/net-view-specification
    weight: 1010003 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1010003
---
{{< svgfigure src="net-view-specification.png" width="1242" height="630" caption="Net View Specification" numbered="true" >}}
  {{< svglink relref="../../classes/transformation2d.md" x="205.0" y="238.0" width="107.0" height="91.0" >}}
  {{< svglink relref="../../classes/networkportviewitemside.md" x="744.0" y="140.0" width="155.0" height="106.0" >}}
  {{< svglink relref="../../classes/networknodeviewitem.md" x="408.0" y="266.0" width="162.0" height="67.0" >}}
  {{< svglink relref="../../classes/cartesianpoint2d.md" x="23.0" y="224.0" width="127.0" height="169.0" >}}
  {{< svglink relref="../../classes/networkportviewitem.md" x="716.0" y="266.0" width="196.0" height="67.0" >}}
  {{< svglink relref="../../classes/specification.md" x="352.0" y="35.0" width="217.0" height="67.0" >}}
  {{< svglink relref="../../classes/networkport.md" x="695.0" y="427.0" width="217.0" height="91.0" >}}
  {{< svglink relref="../../classes/net.md" x="1003.0" y="427.0" width="217.0" height="67.0" >}}
  {{< svglink relref="../../classes/networknode.md" x="352.0" y="420.0" width="229.0" height="103.0" >}}
  {{< svglink relref="../../classes/netviewspecification.md" x="23.0" y="133.0" width="519.0" height="34.0" >}}
  {{< svglink relref="../../classes/netspecification.md" x="303.0" y="581.0" width="925.0" height="34.0" >}}
{{< / svgfigure >}}
<p> The <i>NetViewSpecification</i> supports the exchange of a basic layout for a <i>NetSpecification</i>. The objective is not a pixel perfect representation of a network /&#160;architecture diagram in the VEC (with label positions, font sizes etc.). Such use cases are supported via the external mapping with other standards like SVG. However, a reasonable arrangement of the <i>NetworkNodes</i> on a diagram sheet greatly improves the understanding and can not (easily) be found by an automatic algorithm.&#160;Therefore, a basic layout has value in the context of data exchange and is in scope of the VEC.      </p>      <p> A <i>NetViewSpecification</i> represents the layout of a network diagram /&#160;sheet. The layout is defined with <i>NetworkNodeViewItems</i>, each representing a <i>NetworkNode.</i> A <i>NetViewSpecification</i> does not have to represent the complete content of a <i>NetSpecification.</i> It is perfectly valid to split the layout of a <i>NetSpecification </i>into multiple <i>NetViewSpecifications</i>, one for each view (e.g. sheet) and each layouting a subset of a <i>NetSpecification.</i> It is also valid to have multiple <i>NetworkNodeViewItems</i> for a <i>NetworkNode</i>.      </p>      <p> The <i>NetworkNodeViewItem</i> contains <i>NetworkPortViewItems</i> for each <i>NetworkPort</i> displayed on this <i>NetworkNodeViewItem.&#160;</i>This can be a subset of all <i>NetwortPorts </i>of the corresponding <i>NetworkNode. </i>      </p>      <p> For <i>Nets</i> there are no explicit view items defined. The representation and routing path of a <i>Net </i>is not conisidered as basic information. All <i>Nets</i> that are connected to a displayed <i>NetworkPort</i> are considered to be display on the diagram represented by <i>NetViewSpecification.</i>      </p>      <p> <i>&#160;</i>      </p>      <p> &#160;      </p>