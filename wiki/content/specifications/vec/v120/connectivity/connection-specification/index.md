---
title: Connection Specification
toc: false
type: specs
layout: diagram
date: "2020-05-11"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Diagram
classes:
  - SignalDirection
  - ConnectionGroupType
  - ComponentNodeSubType
  - ConnectionEnd
  - NetworkNodeType
  - NetworkPort
  - Net
  - NetGroup
  - ComponentPort
  - Connection
  - ComponentConnector
  - ComponentNodeType
  - NetworkNode
  - ConnectionGroup
  - ComponentNode
  - NetSpecification
  - ConnectionSpecification
menu:
  VEC-1.2.0:    
    parent: connectivity
    identifier: connectivity/connection-specification
    weight: 1009003 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1009003
---
{{< svgfigure src="connection-specification.png" width="1077" height="831" caption="Connection Specification" numbered="true" >}}
  {{< svglink relref="../../classes/signaldirection.md" x="641.0" y="217.0" width="112.0" height="99.0" >}}
  {{< svglink relref="../../classes/connectiongrouptype.md" x="925.0" y="631.0" width="138.0" height="94.0" >}}
  {{< svglink relref="../../classes/componentnodesubtype.md" x="29.0" y="687.0" width="149.0" height="130.0" >}}
  {{< svglink relref="../../classes/connectionend.md" x="501.0" y="477.0" width="198.0" height="91.0" >}}
  {{< svglink relref="../../classes/networknodetype.md" x="15.0" y="15.0" width="138.0" height="214.0" >}}
  {{< svglink relref="../../classes/networkport.md" x="296.0" y="239.0" width="217.0" height="79.0" >}}
  {{< svglink relref="../../classes/net.md" x="479.0" y="102.0" width="217.0" height="67.0" >}}
  {{< svglink relref="../../classes/netgroup.md" x="746.0" y="102.0" width="217.0" height="79.0" >}}
  {{< svglink relref="../../classes/componentport.md" x="293.0" y="361.0" width="217.0" height="79.0" >}}
  {{< svglink relref="../../classes/connection.md" x="589.0" y="631.0" width="217.0" height="79.0" >}}
  {{< svglink relref="../../classes/componentconnector.md" x="277.0" y="498.0" width="217.0" height="67.0" >}}
  {{< svglink relref="../../classes/componentnodetype.md" x="50.0" y="421.0" width="128.0" height="226.0" >}}
  {{< svglink relref="../../classes/networknode.md" x="222.0" y="102.0" width="229.0" height="103.0" >}}
  {{< svglink relref="../../classes/connectiongroup.md" x="782.0" y="486.0" width="253.0" height="91.0" >}}
  {{< svglink relref="../../classes/componentnode.md" x="224.0" y="627.0" width="255.0" height="103.0" >}}
  {{< svglink relref="../../classes/netspecification.md" x="221.0" y="22.0" width="743.0" height="43.0" >}}
  {{< svglink relref="../../classes/connectionspecification.md" x="228.0" y="771.0" width="750.0" height="43.0" >}}
{{< / svgfigure >}}
<p> A <i>ConnectionSpecification</i> is intended to contain the logical information that is usually included on an electrical system connection plan (system schematic). It can either stand alone or detail the information of a <i>NetSpecification</i>. A <i>ConnectionSpecification</i> is a container for various <i>ComponentNodes</i>, <i>Connections</i> and <i>ConnectionGroups</i>. A <i>ConnectionSpecification</i> is used, if requirements for realization of the network should be specified&#160;(e.g. should a <i>Net</i> be realized with a single or multiple connection (BUS-Systems)).      </p>      <p> Note: Logical information means a <i>ConnectionSpecification</i> doesn&rsquo;t contain layout information. Layout information can be exchanged by other formats like SVG, PDF or DXF.      </p>      <p> A <i>ComponentNode</i> is a representative for an element in the electric system, e.g. an actuator, a sensor, an ECUs. In this way it is quite similar to a <i>NetworkNode</i> and may even reference the corresponding <i>NetworkNode</i> in this case. Moreover, a <i>ComponentNode</i> can define <i>childNodes</i> in order to describe its internal structure.      </p>      <p> There is no general rule if inliners shall appear in the system schematic or not. In many cases there is a detail of the physical design of the harness (like splices). Their creation is done implicitly when an electrological design is routed into a specific topology and the routing crosses an inliner definition of the topology. In these cases, the inliner definition should not appear in the system schematic. However, there are other scenarios where the inliner definition is done on purpose and as part of the electrological design (e.g. for providing a pluggable modularity in the system).&#160;In these cases an inliner can appear in the <i>ConnectionSpecification</i>.      </p>      <p> A <i>ComponentNode</i> can specify various <i>ComponentPorts</i>. Each <i>ComponentPort </i>can reference its corresponding <i>NetworkPort</i> (if it has one).      </p>      <p> <i>Connections</i> represent the physical realization of a <i>Net </i>(without a topology). A <i>Net</i> (e.g. the BODY-CAN-BUS) can be realized by one or more physical connections (e.g. a&#160;CAN-BUS&#160;is normally realized by two physical connections (HI&#160;&amp;&#160;LOW)). The <i>Connections</i> do not define a topology of the realization. This means that a CAN <i>Connection</i> with three <i>ConnectionEnds</i> can be realized in different ways (e.g. three wires with splice, two wires with a double contact or an IDC&#160;/&#160;IDS contact).      </p>      <p> A <i>ConnectionGroup</i> references two or more <i>Connections</i> expressing the physical realization of the referenced <i>Connection</i> shall be somehow grouped e.g. twisted. For complex structures a <i>ConnectionGroup</i> can specify subgroups. Finally, a <i>ConnectionGroup</i> can reference a <i>NetGroup</i> in order to express a refinement-relationship.      </p>