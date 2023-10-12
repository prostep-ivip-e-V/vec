---
title: Locations
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
  - Path
  - NodeLocation
  - AnchorType
  - Location
  - SegmentLocation
  - TopologySegment
  - TopologyNode
  - TopologySpecification
menu:
  VEC-2.1.0:    
    parent: topology-and-geometry
    identifier: topology-and-geometry/locations
    weight: 1009008 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1009008
---
{{< svgfigure src="locations.png" width="734" height="467" caption="Locations" numbered="true" >}}
  {{< svglink relref="../../classes/path.md" x="630.0" y="253.0" width="89.0" height="43.0" >}}
  {{< svglink relref="../../classes/nodelocation.md" x="67.0" y="254.0" width="89.0" height="43.0" >}}
  {{< svglink relref="../../classes/anchortype.md" x="273.0" y="253.0" width="117.0" height="86.0" >}}
  {{< svglink relref="../../classes/location.md" x="259.0" y="386.0" width="129.0" height="67.0" >}}
  {{< svglink relref="../../classes/segmentlocation.md" x="450.0" y="254.0" width="142.0" height="67.0" >}}
  {{< svglink relref="../../classes/topologysegment.md" x="366.0" y="106.0" width="226.0" height="91.0" >}}
  {{< svglink relref="../../classes/topologynode.md" x="66.0" y="104.0" width="226.0" height="103.0" >}}
  {{< svglink relref="../../classes/topologyspecification.md" x="63.0" y="15.0" width="638.0" height="43.0" >}}
{{< / svgfigure >}}
<p> In order to describe a wiring harness, the abstract information of a topology must be enhanced with information about the concrete positions of components in the topology. For purposes of clarity the explanation of this concept is split into two diagrams. This diagram explains how <i>Locations</i> are defined onto the <i>Topology</i>. The next diagram shows how these locations can be used to define <i>Placements </i>of components and <i>Dimensions</i>.     </p>      <p> The VEC defines two types of <i>Locations</i>: <i>NodeLocations</i> and <i>SegmentLocations</i>. A <i>NodeLocation</i> references one <i>TopologyNode</i>. A <i>SegmentLocation</i> defines a single point on a <i>TopologySegment</i> located between its <i>startNode</i> and <i>endNode</i>. To achieve this, a <i>SegmentLocation</i> references the relevant <i>TopologySegment </i>and specifies as anchor the start- or end node as well as the offset from that anchor.     </p>      <p> Note: In contrast to KBL 2.3 and GEO the VEC locations on segments are expressed by anchor and offset and not through relative measurements. This enables ease of handling in case of segment-length changes.      </p>