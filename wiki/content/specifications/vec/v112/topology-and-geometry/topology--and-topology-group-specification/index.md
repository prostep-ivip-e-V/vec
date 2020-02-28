---
title: Topology- and Topology Group Specification
toc: false
type: specs
layout: diagram
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Diagram
classes:
  - NodeType
  - SegmentForm
  - LengthClassification
  - SegmentLength
  - ValueDetermination
  - SegmentCrossSectionArea
  - TopologySegment
  - TopologyNode
  - Zone
  - TopologyGroupSpecification
  - TopologySpecification
menu:
  VEC-1.1.2:    
    parent: topology-and-geometry
    identifier: topology-and-geometry/topology--and-topology-group-specification
    weight: 1005001 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1005001
---
{{< svgfigure src="topology--and-topology-group-specification.png" width="953" height="579" caption="Topology- and Topology Group Specification" numbered="true" >}}
  {{< svglink relref="../../classes/nodetype.md" x="7.0" y="336.0" width="105.0" height="99.0" >}}
  {{< svglink relref="../../classes/segmentform.md" x="126.0" y="364.0" width="164.0" height="82.0" >}}
  {{< svglink relref="../../classes/lengthclassification.md" x="537.0" y="472.0" width="191.0" height="86.0" >}}
  {{< svglink relref="../../classes/segmentlength.md" x="534.0" y="364.0" width="198.0" height="67.0" >}}
  {{< svglink relref="../../classes/valuedetermination.md" x="304.0" y="470.0" width="215.0" height="94.0" >}}
  {{< svglink relref="../../classes/segmentcrosssectionarea.md" x="304.0" y="363.0" width="222.0" height="79.0" >}}
  {{< svglink relref="../../classes/topologysegment.md" x="325.0" y="191.0" width="226.0" height="91.0" >}}
  {{< svglink relref="../../classes/topologynode.md" x="7.0" y="191.0" width="226.0" height="103.0" >}}
  {{< svglink relref="../../classes/zone.md" x="576.0" y="190.0" width="302.0" height="103.0" >}}
  {{< svglink relref="../../classes/topologygroupspecification.md" x="7.0" y="14.0" width="869.0" height="43.0" >}}
  {{< svglink relref="../../classes/topologyspecification.md" x="7.0" y="91.0" width="869.0" height="43.0" >}}
{{< / svgfigure >}}
<p> A <i>TopologySpecification</i> is a container for various <i>TopologyNodes</i>, <i>TopologySegments</i> and <i>Zones</i>. A <i>TopologyNode</i> represents an abstract place (meaning without concrete coordinates) in the wiring harness that can be typed either as <i>EndNode</i>, <i>JunctionPoint</i> or <i>Inliner</i>.     </p>      <p> A <i>TopologySegment</i> represents a section of a connection or a wiring harness where no intermediate electrical contacts appear. In consequence, at the beginning and at the end of a <i>TopologySegment</i> the same wires go in and out. The beginning and the end are each defined by a dedicated reference to a <i>TopologyNode</i>. A <i>TopologySegment</i> can specify various <i>SegmentCrossSectionAreas</i>. These <i>SegmentCrossSectionAreas</i> are not supposed to express configuration-dependant values but different views (<i>Calculated</i>, <i>Measured</i> or <i>Estimated</i>) on the same type-dependant value whereupon the default-type is “reserved design space”. The same applies to <i>SegmentLength</i>.     </p>      <p> A <i>Zone</i> represents a certain topology section, e.g. a certain design space and can specify various <i>subZones</i>.     </p>      <p> In contrast to GEO 1.0 the VEC recognises an explicit grouping mechanism for topology. For this the VEC has introduced the class <i>TopologyGroupSpecification</i> which primary acts as a “normal” <i>TopologySpecification</i> being a container for various <i>TopologyNodes</i>, <i>TopologySegments</i> and <i>Zones</i>. However, a <i>TopologyGroupSpecification</i> can additionally reference the <i>TopologySpecifications</i> that it groups.      </p>