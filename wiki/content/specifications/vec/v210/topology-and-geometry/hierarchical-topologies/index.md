---
title: Hierarchical Topologies
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
  - NodeMapping
  - NodeLocation
  - Path
  - SegmentMapping
  - TopologySpecification
  - Location
  - SegmentLocation
  - TopologyMappingSpecification
  - Specification
  - TopologyNode
  - TopologySegment
menu:
  VEC-2.1.0:    
    parent: topology-and-geometry
    identifier: topology-and-geometry/hierarchical-topologies
    weight: 1009003 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1009003
---
{{< svgfigure src="hierarchical-topologies.png" width="945" height="707" caption="Hierarchical Topologies" numbered="true" >}}
  {{< svglink relref="../../classes/nodemapping.md" x="833.0" y="609.0" width="83.0" height="83.0" >}}
  {{< svglink relref="../../classes/nodelocation.md" x="427.0" y="497.0" width="89.0" height="34.0" >}}
  {{< svglink relref="../../classes/path.md" x="714.0" y="336.0" width="89.0" height="34.0" >}}
  {{< svglink relref="../../classes/segmentmapping.md" x="735.0" y="259.0" width="105.0" height="34.0" >}}
  {{< svglink relref="../../classes/topologyspecification.md" x="301.0" y="126.0" width="129.0" height="78.0" >}}
  {{< svglink relref="../../classes/location.md" x="462.0" y="581.0" width="129.0" height="67.0" >}}
  {{< svglink relref="../../classes/segmentlocation.md" x="532.0" y="476.0" width="142.0" height="67.0" >}}
  {{< svglink relref="../../classes/topologymappingspecification.md" x="714.0" y="126.0" width="176.0" height="78.0" >}}
  {{< svglink relref="../../classes/specification.md" x="462.0" y="21.0" width="217.0" height="67.0" >}}
  {{< svglink relref="../../classes/topologynode.md" x="98.0" y="490.0" width="226.0" height="103.0" >}}
  {{< svglink relref="../../classes/topologysegment.md" x="364.0" y="259.0" width="226.0" height="91.0" >}}
{{< / svgfigure >}}
<p> Hierarchical topologies are a versatile concept to create harness topologies that have an advanced structural design. For historical reasons, the semantics defined by the VEC&#160;for topologies are quite strict and simple, yet sufficient for most cases of traditional wiring harnesses. However, with the advent of modern wiring harness requirements, more advanced concepts are needed for certain applications.      </p>      <p> In a regular topology, all wires are routed equally &quot;inside&quot;&#160;through a <i>TopologySegment.</i> All wires end at a <i>TopologyNode, </i>there are no connectors or splices positioned within a <i>TopologySegment.</i> All protections, fixings, tapings etc. are placed &quot;around&quot; the wires in a definable order.      </p>      <p> With the integration of new technologies (e.g. high voltage, high data rate bus systems) and the improvements of design processes (e.g. integrated 3D design process with traceability and round-trip capabilities) more complex designs must be expressed in a concise, digital evaluable way. Examples for such use cases are:      </p>      <ul>       <li> Structured harness bundles (e.g. specific wires in a bundle taped together).        </li>       <li> Segments of splices folded into a main bundle in a specific way.        </li>       <li> Reuse of shared parts (e.g. assemblies, right /&#160;left back door)        </li>       <li> Refinement of a topology in the design process (e.g. splice positioning after the &quot;geometry design&quot;.        </li>     </ul>     <p> To address these requirements, the VEC&#160;introduced the concept of hierarchical topologies. In the top left corner of the diagram a simplified illustration shall serve as small example to make the concept more understandable.      </p>      <p> A <i>TopologyMappingSpecification</i> is used to associate an &quot;inner&quot;&#160;topology with an outer topology. In the illustration the &quot;outer&quot; topology is displayed with grey segments and orange nodes. The two &quot;inner&quot; topologies are displayed with blue &amp;&#160;green segments and red nodes.      </p>      <p> A <i>NodeMapping</i> is used to define how the nodes of the inner topology relate to the outer topology. An inner node can be either placed exactly on /&#160;in an outer node or somewhere within a segment. For the definition of the position of the inner node, the concept of locations is reused.      </p>      <p> A <i>SegmentMapping</i> is used to define how the segments of the inner topology relate to the outer topology. An inner segment can run through multiple segments or to stay in a single one. In any case, <u>all</u> outer <i>TopologySegments</i> to which it relates are referenced by a <i>Path</i>.      </p>      <p> Some additional restrictions apply on the mapping:      </p>      <ul>       <li> The representation of the inner /&#160;outer relationship with a <i>TopologyMappingSpecification</i> allows the creation of n:m relationships between topologies. However, it is forbidden to create &quot;circular&quot; mappings. If n:m mappings are created, it must be ensured that those mappings shall not exist at same time, or in other words they must be the result of product variance or reuse in different variants.        </li>       <li> &quot;Cross Topology assignment of Components&quot;&#160;is forbidden. That means wires are routed strictly in the elements of a single <i>TopologySpecification</i> and other components are placed strictly on a single <i>TopologySpecification.</i>        </li>       <li> If a <i>TopologySpecification </i>is mapped as an inner topology, all its elements shall be mapped.        </li>       <li> A creating system is responsible that the constraints of the topologies are maintained (e.g. that length constraints between inner and outer topologies are satisfied.        </li>     </ul>     <p> <i><b>Note:</b> This concept was introduced newly with VEC Version 1.2.0. As there are currently no known systems that implement such a concept further detailing of its usage will be done in the Implementation Guidelines accompanying implementations as they occur.</i>      </p>      <p> &#160;      </p>