---
title: Net Specification
toc: false
type: specs
layout: diagram
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Diagram
classes:
  - SignalDirection
  - NetworkPort
  - Net
  - NetGroup
  - NetworkNode
  - NetSpecification
  - Signal
  - SignalSpecification
menu:
  VEC-1.1.1:    
    parent: connectivity
    identifier: connectivity/net-specification
    weight: 1006002 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1006002
---
{{< svgfigure src="net-specification.png" width="667" height="625" caption="Net Specification" numbered="true" >}}
  {{< svglink relref="../../classes/signaldirection.md" x="258.0" y="105.0" width="112.0" height="99.0" >}}
  {{< svglink relref="../../classes/networkport.md" x="78.0" y="260.0" width="217.0" height="79.0" >}}
  {{< svglink relref="../../classes/net.md" x="373.0" y="251.0" width="217.0" height="67.0" >}}
  {{< svglink relref="../../classes/netgroup.md" x="429.0" y="105.0" width="217.0" height="79.0" >}}
  {{< svglink relref="../../classes/networknode.md" x="20.0" y="105.0" width="217.0" height="91.0" >}}
  {{< svglink relref="../../classes/netspecification.md" x="22.0" y="15.0" width="631.0" height="43.0" >}}
  {{< svglink relref="../../classes/signal.md" x="15.0" y="407.0" width="638.0" height="127.0" >}}
  {{< svglink relref="../../classes/signalspecification.md" x="15.0" y="568.0" width="638.0" height="43.0" >}}
{{< / svgfigure >}}
<p> A <i>NetSpecification</i> is the most abstract way to describe a vehicle electrical system. It is a container for various <i>NetworkNodes</i>, <i>Nets</i> and <i>NetGroups</i>. A <i>NetSpecification </i>is used if the physical links between electrical components are specified without specifying a concrete network topology.     </p>      <p> A <i>NetworkNode</i> is a representative for an actor in the electric system, e.g. an actuator, a sensor, an ECU. It can define various <i>NetworkPorts,</i> which can be classified as a signal source (in the case that the attribute <i>signalDirection</i> has got the value <i>Out</i>) or as a signal sink (in the case that the attribute <i>signalDirection</i> has got the value <i>In</i>) or with changing behaviour (in the case that the attribute <i>signalDirection</i> has got the value <i>InOut</i>).     </p>      <p> Note: According to the definition above inliners and splices are not <i>NetworkNodes</i> and so are not represented within a <i>NetSpecification</i>.     </p>      <p> A <i>Net</i> is a representative of a connection between the referenced <i>NetworkPorts</i> and can be unambiguously related to a <i>Signal</i>.     </p>      <p> Note: A <i>Net</i> itself doesn’t define how the conducting connection has to be physically realized (e.g. if three <i>NetworkPorts</i> are interconnected, the <i>Net </i>makes no definition if this physical three point connection is realized with a splice, an insulation displacement connector or a double contact.).     </p>      <p> Note: Normally, a <i>Net</i> references at least two <i>NetworkPorts</i>. However, in the very early stages of product development it might be the case that some <i>NetworkNodes</i> with <i>NetworkPorts</i> which are source of a dedicated <i>Signal</i> are already defined – but the counterparts not. This is an example of where it can be useful to define <i>Nets</i> referencing only one <i>NetworkPort</i>.     </p>      <p> A <i>NetGroup</i> references two or more <i>Nets</i> expressing that the physical realization of the referenced <i>Nets</i> shall be somehow grouped e.g. twisted.      </p>