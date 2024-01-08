---
title: Topology Zones
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
  - ZoneCoverage
  - NodeLocation
  - ZoneAssignment
  - AnchorType
  - Location
  - SegmentLocation
  - TopologyZoneSpecification
  - TopologyZoneType
  - Specification
  - TopologyNode
  - TopologySegment
  - TopologyZone
menu:
  VEC-2.1.0:    
    parent: topology-and-geometry
    identifier: topology-and-geometry/topology-zones
    weight: 1009002 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1009002
---
{{< svgfigure src="topology-zones.png" width="762" height="859" caption="Topology Zones" numbered="true" >}}
  {{< svglink relref="../../classes/zonecoverage.md" x="315.0" y="421.0" width="89.0" height="34.0" >}}
  {{< svglink relref="../../classes/nodelocation.md" x="102.0" y="165.0" width="89.0" height="43.0" >}}
  {{< svglink relref="../../classes/zoneassignment.md" x="308.0" y="505.0" width="104.0" height="34.0" >}}
  {{< svglink relref="../../classes/anchortype.md" x="308.0" y="164.0" width="117.0" height="86.0" >}}
  {{< svglink relref="../../classes/location.md" x="294.0" y="297.0" width="129.0" height="67.0" >}}
  {{< svglink relref="../../classes/segmentlocation.md" x="485.0" y="165.0" width="142.0" height="67.0" >}}
  {{< svglink relref="../../classes/topologyzonespecification.md" x="287.0" y="715.0" width="157.0" height="34.0" >}}
  {{< svglink relref="../../classes/topologyzonetype.md" x="14.0" y="582.0" width="194.0" height="82.0" >}}
  {{< svglink relref="../../classes/specification.md" x="259.0" y="778.0" width="217.0" height="67.0" >}}
  {{< svglink relref="../../classes/topologynode.md" x="101.0" y="15.0" width="226.0" height="103.0" >}}
  {{< svglink relref="../../classes/topologysegment.md" x="401.0" y="17.0" width="226.0" height="91.0" >}}
  {{< svglink relref="../../classes/topologyzone.md" x="252.0" y="582.0" width="302.0" height="103.0" >}}
{{< / svgfigure >}}
<p> A <i>TopologyZoneSpecification</i> is a container to define <i>TopologyZones.</i> A <i>TopologyZone</i> is a way to define areas on that share a set of properties (e.g. environmental influence).      </p>      <p> To define the <i>TopologyZone </i>unambiguously an assignment of the topology elements to their zones is necessary. <i>TopologyNodes</i> are only connecting points for <i>TopologySegments</i> or for the placement of components and do not have any own extent in space. Therefore, <i>ZoneAssignments </i>are only possible for <i>T</i><i>opologySegments</i>.      </p>      <p> For more details, see the description of the relevant classes.      </p>