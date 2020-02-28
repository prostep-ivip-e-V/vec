---
title: Topology and routing (3)
toc: false
type: specs
layout: diagram
date: "2015-03-20"
draft: false
specification: KBL
version: 2.4.sr1
documentType: "Recommendation"
elementType: Diagram
classes:
  - Slot_occurrence
  - Cavity_occurrence
  - Located_component
  - Node
  - Connector_occurrence
menu:
  KBL-2.4.sr1:    
    parent: presentation
    identifier: presentation/topology-and-routing-3
    weight: 1020 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1020
---
{{< svgfigure src="topology-and-routing-3.png" width="534" height="410" caption="Topology and routing (3)" numbered="true" >}}
  {{< svglink relref="../../classes/slot_occurrence.md" x="22.0" y="143.0" width="110.0" height="43.0" >}}
  {{< svglink relref="../../classes/cavity_occurrence.md" x="22.0" y="22.0" width="110.0" height="43.0" >}}
  {{< svglink relref="../../classes/located_component.md" x="372.0" y="302.0" width="123.0" height="58.0" >}}
  {{< svglink relref="../../classes/node.md" x="330.0" y="15.0" width="190.0" height="79.0" >}}
  {{< svglink relref="../../classes/connector_occurrence.md" x="15.0" y="281.0" width="232.0" height="115.0" >}}
{{< / svgfigure >}}
<p> This diagram displays the necessary information to support connectors with multiple segment connection points (since KBL2.4).     </p>      <p> A Connector_occurrence with multiple segment connection points is still placed as &quot;referenced components&quot; on Nodes. In difference to a &quot;normal&quot; Connector_occurrence it is placed on multiple Nodes (this was already possible in KBL2.3-SR1). In order to support routing algorithms an addition reference between Nodes and Cavities was introduced. This reference can be used to detail the information defined by the &quot;referenced_components&quot; association. This means, if a Connector_occurrence is placed on multiple Nodes, the Nodes can reference which cavities of this Connector_occurrence can be reached via the Node.       </p>