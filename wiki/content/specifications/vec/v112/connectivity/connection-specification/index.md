---
title: Connection Specification
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
  - SignalDirection
  - ConnectionEnd
  - NetworkPort
  - Net
  - NetGroup
  - NetworkNode
  - ConnectionGroup
  - ComponentNode
  - ComponentPort
  - Connection
  - NetSpecification
  - ConnectionSpecification
menu:
  VEC-1.1.2:    
    parent: connectivity
    identifier: connectivity/connection-specification
    weight: 1006003 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1006003
---
{{< svgfigure src="connection-specification.png" width="814" height="821" caption="Connection Specification" numbered="true" >}}
  {{< svglink relref="../../classes/signaldirection.md" x="448.0" y="210.0" width="112.0" height="99.0" >}}
  {{< svglink relref="../../classes/connectionend.md" x="151.0" y="479.0" width="198.0" height="91.0" >}}
  {{< svglink relref="../../classes/networkport.md" x="103.0" y="232.0" width="217.0" height="79.0" >}}
  {{< svglink relref="../../classes/net.md" x="286.0" y="95.0" width="217.0" height="67.0" >}}
  {{< svglink relref="../../classes/netgroup.md" x="553.0" y="95.0" width="217.0" height="79.0" >}}
  {{< svglink relref="../../classes/networknode.md" x="29.0" y="95.0" width="217.0" height="91.0" >}}
  {{< svglink relref="../../classes/connectiongroup.md" x="498.0" y="479.0" width="217.0" height="91.0" >}}
  {{< svglink relref="../../classes/componentnode.md" x="31.0" y="620.0" width="217.0" height="91.0" >}}
  {{< svglink relref="../../classes/componentport.md" x="100.0" y="354.0" width="217.0" height="79.0" >}}
  {{< svglink relref="../../classes/connection.md" x="305.0" y="626.0" width="217.0" height="79.0" >}}
  {{< svglink relref="../../classes/netspecification.md" x="28.0" y="15.0" width="743.0" height="43.0" >}}
  {{< svglink relref="../../classes/connectionspecification.md" x="35.0" y="764.0" width="750.0" height="43.0" >}}
{{< / svgfigure >}}
<p> A <i>ConnectionSpecification</i> is intended to contain the logical information that is usually included on an electrical system connection plan. It can either stand alone or detail the information of a <i>NetSpecification</i>. A <i>ConnectionSpecification</i> is a container for various <i>ComponentNodes</i>, <i>Connections</i> and <i>ConnectionGroups</i>. A <i>ConnectionSpecification</i> is used, if requirements for realization of the concrete network topology should be specified&#160;(e.g. should a <i>Net</i> with three <i>NetworkPorts </i>be realized with one connection using insulation displacement technology or with three individual connections and a splice).     </p>      <p> Note: Logical information means a <i>ConnectionSpecification</i> doesn’t contain layout information. Layout information can be exchanged by other formats like SVG, PDF or DXF.     </p>      <p> A <i>ComponentNode</i> is a representative for an element in the electric system, e.g. an actuator, a sensor, an ECUs. In this way it is quite similar to a <i>NetworkNode</i> and may even reference the corresponding <i>NetworkNode</i> in this case. However, in contrast to a <i>NetworkNode</i> a <i>Component­Node</i> is more likely to be used as a representative of an inliner or a splice. Moreover, a <i>ComponentNode</i> can define <i>childNodes</i> in order to describe its internal structure.     </p>      <p> Note: If inliners are introduced in a <i>ConnectionSpecification</i> which is intended to be a refinement of a <i>NetSpecification</i> the affected <i>Nets</i> will be divided into several <i>Connections</i>.     </p>      <p> A <i>ComponentNode</i> can specify various <i>ComponentPorts</i>. Each <i>ComponentPort </i>can reference its corresponding <i>NetworkPort</i> (if it has one).     </p>      <p> Note: There may be use cases for a <i>ComponentNode</i> referencing a certain <i>NetworkNode</i> and at the same time specifying more <i>ComponentPorts</i> than the referenced <i>NetworkNode</i> specifies <i>NetworkPorts</i>. An example might be the intent to specify configuration dependent <i>Connections</i> in combination with the wish that the relevant <i>Connections</i> them self, do not have to reference <i>VariantConditions</i>.     </p>      <p> A <i>Connection</i> specifies an ordered set of two or more <i>ConnectionEnds</i> in which each references a certain <i>ComponentPort</i>. Specifying more than two <i>ConnectionEnds </i>means that the realization uses insulation displacement technology and the realizing wire must be routed in the defined order of the <i>ConnectionEnds</i>.     </p>      <p> A <i>ConnectionGroup</i> references two or more <i>Connections</i> expressing the physical realization of the referenced <i>Connection</i> shall be somehow grouped e.g. twisted. For complex structures a <i>ConnectionGroup</i> can specify subgroups. Finally, a <i>ConnectionGroup</i> can reference a <i>NetGroup</i> in order to express a refinement-relationship.      </p>