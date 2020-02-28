---
title: 2D-Geometry
toc: false
type: specs
layout: diagram
date: "2017-02-21"
draft: false
specification: VEC
version: 1.1.3
documentType: "Recommendation"
elementType: Diagram
classes:
  - CartesianVector
  - Transformation2D
  - CartesianVector2D
  - CartesianDimension
  - Unit
  - BuildingBlockPositioning2D
  - GeometrySegment
  - GeometryNode
  - CartesianPoint2D
  - GeometryNode2D
  - HarnessDrawingSpecification2D
  - OccurrenceOrUsageViewItem2D
  - PathSegment
  - OccurrenceOrUsage
  - TopologySegment
  - TopologyNode
  - GeometrySegment2D
  - TopologySpecification
  - BuildingBlockSpecification2D
menu:
  VEC-1.1.3:    
    parent: topology-and-geometry
    identifier: topology-and-geometry/2d-geometry
    weight: 1005002 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1005002
---
{{< svgfigure src="2d-geometry.png" width="1007" height="1002" caption="2D-Geometry" numbered="true" >}}
  {{< svglink relref="../../classes/cartesianvector.md" x="679.0" y="526.0" width="100.0" height="43.0" >}}
  {{< svglink relref="../../classes/transformation2d.md" x="429.0" y="486.0" width="107.0" height="91.0" >}}
  {{< svglink relref="../../classes/cartesianvector2d.md" x="679.0" y="631.0" width="111.0" height="67.0" >}}
  {{< svglink relref="../../classes/cartesiandimension.md" x="120.0" y="729.0" width="120.0" height="67.0" >}}
  {{< svglink relref="../../classes/unit.md" x="259.0" y="918.0" width="139.0" height="70.0" >}}
  {{< svglink relref="../../classes/buildingblockpositioning2d.md" x="696.0" y="341.0" width="157.0" height="43.0" >}}
  {{< svglink relref="../../classes/geometrysegment.md" x="420.0" y="230.0" width="162.0" height="67.0" >}}
  {{< svglink relref="../../classes/geometrynode.md" x="24.0" y="240.0" width="162.0" height="67.0" >}}
  {{< svglink relref="../../classes/cartesianpoint2d.md" x="63.0" y="421.0" width="127.0" height="169.0" >}}
  {{< svglink relref="../../classes/geometrynode2d.md" x="21.0" y="330.0" width="169.0" height="50.0" >}}
  {{< svglink relref="../../classes/harnessdrawingspecification2d.md" x="690.0" y="234.0" width="182.0" height="43.0" >}}
  {{< svglink relref="../../classes/occurrenceorusageviewitem2d.md" x="460.0" y="628.0" width="185.0" height="79.0" >}}
  {{< svglink relref="../../classes/pathsegment.md" x="428.0" y="419.0" width="186.0" height="55.0" >}}
  {{< svglink relref="../../classes/occurrenceorusage.md" x="119.0" y="614.0" width="217.0" height="91.0" >}}
  {{< svglink relref="../../classes/topologysegment.md" x="414.0" y="96.0" width="226.0" height="91.0" >}}
  {{< svglink relref="../../classes/topologynode.md" x="24.0" y="96.0" width="226.0" height="103.0" >}}
  {{< svglink relref="../../classes/geometrysegment2d.md" x="427.0" y="323.0" width="232.0" height="67.0" >}}
  {{< svglink relref="../../classes/topologyspecification.md" x="21.0" y="15.0" width="806.0" height="43.0" >}}
  {{< svglink relref="../../classes/buildingblockspecification2d.md" x="28.0" y="841.0" width="855.0" height="43.0" >}}
{{< / svgfigure >}}
<p> A <i>HarnessDrawingSpecification2D</i> represents a specific harness drawing. Each <i>HarnessDrawingSpecification2D</i> is a container for various instances of the class <i>BuildingBlockPositioning2D</i>. Each <i>BuildingBlockPositioning2D</i> determines the positioning of a certain <i>BuildingBlockSpecification2D</i> in the context of the <i>HarnessDrawingSpecification2D</i> by referencing the relevant <i>BuildingBlockSpecification2D</i> and specifying the target <i>centerPoint</i> as <i>CartesianPoint2D</i>.     </p>      <p> Note: A <i>CartesianPoint2D</i> can reference a certain <i>SheetOrChapter</i>. This can be very useful if a harness drawing document is composed out of several sheets.     </p>      <p> A <i>BuildingBlockSpecification2D</i> represents a specific subset of one or more harness drawings. Each <i>BulidingBlockSpecification2D</i> specifies its own <i>CartesianDimension</i>. Furthermore, each <i>BulidingBlockSpecification2D</i> is a container for various instances of the classes <i>GeometryNode2D</i>, <i>GeometrySegment2D</i>, <i>ContactPoint2D</i> and <i>OccurrenceOrUsageViewItem2D</i>.     </p>      <p> Each <i>GeometryNode2D</i> references a <i>CartesianPoint2D</i> which determines its graphical position within the <i>BuildingBlockSpecification2D</i>. Moreover, it can specify which <i>TopologyNode</i> it represents.     </p>      <p> Each <i>GeometrySegment2D</i> can specify an ordered set of <i>PathSegments</i> each defining a certain section of its graphical representation. Moreover, it can specify which <i>TopologySegment</i> it represents.     </p>      <p> Note: The data model does not constrain a <i>GeometryNode2D</i> respectively a <i>GeometrySegment2D</i> to reference a <i>TopologyNode</i> respectively a <i>TopologySegment</i>. This allows a VEC e.g. to transport graphical 2D-information for its own. However, for the description of lengths and dimensions as well as segment cross-section-areas and placements the VEC requires adequate references to the relevant elements in the topology.     </p>      <p> Each <i>OccurrenceOrUsageViewItem2D</i> can reference which <i>OccurrenceOrUsage</i> it represents. Furthermore, it can specify a <i>Transformation2D</i> which determines its graphical position and orientation within the <i>BuildingBlockSpecification2D.</i>      </p>