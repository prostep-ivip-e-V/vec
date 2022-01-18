---
title: 3D-Geometry
toc: false
type: specs
layout: diagram
date: "2022-01-18"
draft: false
specification: VEC
version: 1.2.2
documentType: "Recommendation"
elementType: Diagram
classes:
  - CartesianVector
  - CartesianPoint3D
  - GeometryNode3D
  - GeometryType
  - CartesianVector3D
  - Unit
  - Transformation3D
  - BuildingBlockPositioning3D
  - GeometrySegment
  - GeometryNode
  - OccurrenceOrUsageViewItem3D
  - HarnessGeometrySpecification3D
  - OccurrenceOrUsage
  - TopologySegment
  - TopologyNode
  - GeometrySegment3D
  - TopologyZone
  - TopologySpecification
  - BuildingBlockSpecification3D
menu:
  VEC-1.2.2:    
    parent: topology-and-geometry
    identifier: topology-and-geometry/3d-geometry
    weight: 1008006 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1008006
---
{{< svgfigure src="3d-geometry.png" width="1035" height="989" caption="3D-Geometry" numbered="true" >}}
  {{< svglink relref="../../classes/cartesianvector.md" x="700.0" y="491.0" width="100.0" height="43.0" >}}
  {{< svglink relref="../../classes/cartesianpoint3d.md" x="49.0" y="441.0" width="102.0" height="79.0" >}}
  {{< svglink relref="../../classes/geometrynode3d.md" x="14.0" y="340.0" width="104.0" height="43.0" >}}
  {{< svglink relref="../../classes/geometrytype.md" x="703.0" y="332.0" width="105.0" height="86.0" >}}
  {{< svglink relref="../../classes/cartesianvector3d.md" x="700.0" y="575.0" width="111.0" height="79.0" >}}
  {{< svglink relref="../../classes/unit.md" x="307.0" y="905.0" width="139.0" height="70.0" >}}
  {{< svglink relref="../../classes/transformation3d.md" x="469.0" y="484.0" width="107.0" height="151.0" >}}
  {{< svglink relref="../../classes/buildingblockpositioning3d.md" x="622.0" y="437.0" width="157.0" height="43.0" >}}
  {{< svglink relref="../../classes/geometrysegment.md" x="367.0" y="231.0" width="162.0" height="67.0" >}}
  {{< svglink relref="../../classes/geometrynode.md" x="14.0" y="242.0" width="162.0" height="67.0" >}}
  {{< svglink relref="../../classes/occurrenceorusageviewitem3d.md" x="393.0" y="693.0" width="185.0" height="67.0" >}}
  {{< svglink relref="../../classes/harnessgeometryspecification3d.md" x="629.0" y="230.0" width="192.0" height="55.0" >}}
  {{< svglink relref="../../classes/occurrenceorusage.md" x="77.0" y="696.0" width="217.0" height="91.0" >}}
  {{< svglink relref="../../classes/topologysegment.md" x="362.0" y="96.0" width="226.0" height="91.0" >}}
  {{< svglink relref="../../classes/topologynode.md" x="14.0" y="97.0" width="226.0" height="103.0" >}}
  {{< svglink relref="../../classes/geometrysegment3d.md" x="371.0" y="323.0" width="253.0" height="67.0" >}}
  {{< svglink relref="../../classes/topologyzone.md" x="651.0" y="673.0" width="302.0" height="103.0" >}}
  {{< svglink relref="../../classes/topologyspecification.md" x="14.0" y="15.0" width="918.0" height="43.0" >}}
  {{< svglink relref="../../classes/buildingblockspecification3d.md" x="7.0" y="820.0" width="946.0" height="43.0" >}}
{{< / svgfigure >}}
<p> A <i>HarnessGeometrySpecification3D</i> represents either a 3D-model in the car coordinate system or a 3D-model in the formboard system. Each <i>HarnessGeometrySpecification3D</i> is a container for various instances of the class <i>BuildingBlockPositioning3D</i>. Each <i>BuildingBlockPositioning3D</i> determines the positioning of a specific <i>BuildingBlockSpecification3D</i> in the context of the <i>HarnessGeometrySpecification3D</i> by referencing a <i>BuildingBlockSpecification3D</i> and optionally specifying a <i>Transformation3D</i> for the case that a coordinate transformation is required.      </p>      <p> A <i>BuildingBlockSpecification3D</i> represents a specific geometrical subset normally belonging to a certain <i>Zone</i>. Each <i>BuildingBlockSpecification3D</i> is a container for various instances of the classes <i>GeometryNode3D</i>, <i>GeometrySegment3D</i>, <i>CartesianPoint3D</i> and <i>OccurrenceOrUsageViewItem3D</i>.      </p>      <p> Each <i>GeometryNode3D</i> references a <i>CartesianPoint3D</i> which determines its position within the <i>BuildingBlockSpecification3D</i>. Moreover, it can specify which <i>TopologyNode</i> it represents.      </p>      <p> Each <i>GeometrySegment3D</i> can specify an ordered set of <i>Curves</i> in order to approximate its geometry (explained in detail on the next diagram). Moreover, it can specify which <i>TopologySegment</i> it represents.      </p>      <p> Note: The data model does not constrain a <i>GeometryNode3D</i> respectively a <i>GeometrySegment3D</i> to reference a <i>TopologyNode</i> respectively a <i>TopologySegment</i>. This allows a VEC e.g. to transport 3D-information independently from a <i>TopologySpecification</i>. However, for the description of dimensions including tolerances as well as segment cross-section-areas and placements especially <i>OnWayPlacements</i> the VEC requires adequate references to the relevant elements in the topology.      </p>      <p> Each <i>OccurrenceOrUsageViewItem3D</i> can reference which <i>OccurrenceOrUsages</i> it represents. Furthermore, it can specify a <i>Transformation3D</i> which determines its position and orientation of the component's 3D model within the space of the <i>BuildingBlockSpecification3D. </i>If no <i>Transformation3D</i> is defined, the <i>OccurrenceOrUsageViewItem3D </i>is meant to be placed implicitly by its position in the topology (e.g. wire protections with an <i>OnWayPlacement</i>.      </p>