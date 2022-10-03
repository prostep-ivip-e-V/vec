---
title: Net Specification
toc: false
type: specs
layout: diagram
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Diagram
classes:
  - SignalType
  - SignalDirection
  - SignalInformationType
  - NetworkNodeSubType
  - SignalTransmissionMediumType
  - NetworkNodeType
  - NetworkPort
  - Net
  - NetGroup
  - NetworkNode
  - SignalSubType
  - NetType
  - NetSpecification
menu:
  VEC-2.0.1:    
    parent: connectivity
    identifier: connectivity/net-specification
    weight: 1010002 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1010002
---
{{< svgfigure src="net-specification.png" width="933" height="836" caption="Net Specification" numbered="true" >}}
  {{< svglink relref="../../classes/signaltype.md" x="246.0" y="512.0" width="105.0" height="94.0" >}}
  {{< svglink relref="../../classes/signaldirection.md" x="419.0" y="105.0" width="112.0" height="99.0" >}}
  {{< svglink relref="../../classes/signalinformationtype.md" x="484.0" y="512.0" width="132.0" height="82.0" >}}
  {{< svglink relref="../../classes/networknodesubtype.md" x="15.0" y="253.0" width="138.0" height="130.0" >}}
  {{< svglink relref="../../classes/signaltransmissionmediumtype.md" x="484.0" y="603.0" width="190.0" height="142.0" >}}
  {{< svglink relref="../../classes/networknodetype.md" x="15.0" y="15.0" width="138.0" height="214.0" >}}
  {{< svglink relref="../../classes/networkport.md" x="239.0" y="260.0" width="217.0" height="79.0" >}}
  {{< svglink relref="../../classes/net.md" x="534.0" y="251.0" width="217.0" height="67.0" >}}
  {{< svglink relref="../../classes/netgroup.md" x="590.0" y="105.0" width="217.0" height="79.0" >}}
  {{< svglink relref="../../classes/networknode.md" x="181.0" y="105.0" width="229.0" height="103.0" >}}
  {{< svglink relref="../../classes/signalsubtype.md" x="365.0" y="512.0" width="105.0" height="310.0" >}}
  {{< svglink relref="../../classes/nettype.md" x="246.0" y="393.0" width="456.0" height="115.0" >}}
  {{< svglink relref="../../classes/netspecification.md" x="183.0" y="15.0" width="736.0" height="43.0" >}}
{{< / svgfigure >}}
<p> A <i>NetSpecification</i> is the most abstract way to describe a vehicle electrical system. It is a container for various <i>NetworkNodes</i>, <i>Nets</i> and <i>NetGroups</i>. A <i>NetSpecification </i>is used if the physical links between electrical components are specified without specifying a concrete network topology and a physical realization. In many processes and applications this is defined as &quot;Architectural Layer&quot;.      </p>      <p> A <i>NetworkNode</i> is a representative for an actor in the electric system, e.g. an actuator, a sensor, an ECU. It can define various <i>NetworkPorts,</i> which can be classified as a signal source (in the case that the attribute <i>signalDirection</i> has got the value <i>Out</i>) or as a signal sink (in the case that the attribute <i>signalDirection</i> has got the value <i>In</i>) or with changing behaviour (in the case that the attribute <i>signalDirection</i> has got the value <i>InOut</i>).      </p>      <p> Note: According to the definition above inliners (normally) and splices are no <i>NetworkNodes</i> and so are not represented within a <i>NetSpecification</i>. In some cases, there are architectural relevant inliners (NetworkNodeType = CouplingDevice) that represented in the architectural layer.      </p>      <p> A <i>Net</i> is a representative of an abstract link between the referenced <i>NetworkPorts</i> and can be related to a NetType.      </p>      <p> Note: A <i>Net</i> itself doesn&rsquo;t define:      </p>      <ul>       <li> How the topology of the conducting connection must be realized (e.g. if three <i>NetworkPorts</i> are interconnected, the <i>Net </i>makes no definition if this physical three-point connection is realized with a splice, an insulation displacement connector or a double contact.).        </li>       <li> How the physical connections must be realized (e.g. if a certain BUS Connection is realized by a pair of wires or four wires).        </li>     </ul>     <p> Note: Normally, a <i>Net</i> references at least two <i>NetworkPorts</i>. However, in the very early stages of product development it might be the case that some <i>NetworkNodes</i> with <i>NetworkPorts</i> which are source of a dedicated Net are already defined – but the counterparts are not. This is an example where it can be useful to define <i>Nets</i> referencing only one <i>NetworkPort</i>.      </p>