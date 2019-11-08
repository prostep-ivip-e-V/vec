---
title: Net Specification
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu:
  vec120:
    identifier: connectivity/net-specification    
    parent: connectivity
    weight: 1006002 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1006002
---
{{< svgfigure src="net-specification.png" width="933" height="776" caption="Net Specification" numbered="true" >}}
  {{< svglink relref="../classes/signaltype.md" x="246.0" y="512.0" width="105.0" height="94.0" >}}
  {{< svglink relref="../classes/signaldirection.md" x="419.0" y="105.0" width="112.0" height="99.0" >}}
  {{< svglink relref="../classes/signalinformationtype.md" x="484.0" y="512.0" width="132.0" height="82.0" >}}
  {{< svglink relref="../classes/networknodesubtype.md" x="15.0" y="253.0" width="138.0" height="130.0" >}}
  {{< svglink relref="../classes/networknodetype.md" x="15.0" y="15.0" width="138.0" height="214.0" >}}
  {{< svglink relref="../classes/networkport.md" x="239.0" y="260.0" width="217.0" height="79.0" >}}
  {{< svglink relref="../classes/net.md" x="534.0" y="251.0" width="217.0" height="67.0" >}}
  {{< svglink relref="../classes/netgroup.md" x="590.0" y="105.0" width="217.0" height="79.0" >}}
  {{< svglink relref="../classes/networknode.md" x="181.0" y="105.0" width="229.0" height="103.0" >}}
  {{< svglink relref="../classes/signalsubtype.md" x="365.0" y="512.0" width="105.0" height="250.0" >}}
  {{< svglink relref="../classes/nettype.md" x="246.0" y="393.0" width="456.0" height="103.0" >}}
  {{< svglink relref="../classes/netspecification.md" x="183.0" y="15.0" width="736.0" height="43.0" >}}
{{< / svgfigure >}}
<html>   <head>     </head>   <body>     <p> A <i>NetSpecification</i> is the most abstract way to describe a vehicle electrical system. It is a container for various <i>NetworkNodes</i>, <i>Nets</i> and <i>NetGroups</i>. A <i>NetSpecification </i>is used if the physical links between electrical components are specified without specifying a concrete network topology and a physical realization. In many processes and applications this is defined as &quot;Architectural Layer&quot;.     </p>      <p> A <i>NetworkNode</i> is a representative for an actor in the electric system, e.g. an actuator, a sensor, an ECU. It can define various <i>NetworkPorts,</i> which can be classified as a signal source (in the case that the attribute <i>signalDirection</i> has got the value <i>Out</i>) or as a signal sink (in the case that the attribute <i>signalDirection</i> has got the value <i>In</i>) or with changing behaviour (in the case that the attribute <i>signalDirection</i> has got the value <i>InOut</i>).     </p>      <p> Note: According to the definition above inliners (normally) and splices are no <i>NetworkNodes</i> and so are not represented within a <i>NetSpecification</i>. In some cases there are architectural relevant inliners (NetworkNodeType = CouplingDevice) that represented in the architectural layer.     </p>      <p> A <i>Net</i> is a representative of an abstract link between the referenced <i>NetworkPorts</i> and can be related to a NetType.     </p>      <p> Note: A <i>Net</i> itself doesn’t define:     </p>      <ul>       <li> How the topology of the conducting connection has to be realized (e.g. if three <i>NetworkPorts</i> are interconnected, the <i>Net </i>makes no definition if this physical three point connection is realized with a splice, an insulation displacement connector or a double contact.).       </li>       <li> How the physical connections have to be realized (e.g. if a certain BUS Connection is realized by a pair of wires or four wires).       </li>     </ul>     <p> Note: Normally, a <i>Net</i> references at least two <i>NetworkPorts</i>. However, in the very early stages of product development it might be the case that some <i>NetworkNodes</i> with <i>NetworkPorts</i> which are source of a dedicated Net are already defined – but the counterparts are not. This is an example where it can be useful to define <i>Nets</i> referencing only one <i>NetworkPort</i>.      </p>    </body> </html> 
