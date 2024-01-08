---
title: Signal Graphs
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
  - OccurrenceOrUsage
  - ConfigurableElement
  - SignalGraphNode
  - SignalGraphEdge
  - SignalGraphRelationType
  - Specification
  - SignalGraphRelation
  - SignalGraph
  - SignalGraphSpecification
menu:
  VEC-2.1.0:    
    parent: connectivity
    identifier: connectivity/signal-graphs
    weight: 1010012 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1010012
---
{{< svgfigure src="signal-graphs.png" width="912" height="598" caption="Signal Graphs" numbered="true" >}}
  {{< svglink relref="../../classes/occurrenceorusage.md" x="53.0" y="113.0" width="118.0" height="34.0" >}}
  {{< svglink relref="../../classes/configurableelement.md" x="263.0" y="15.0" width="138.0" height="34.0" >}}
  {{< svglink relref="../../classes/signalgraphnode.md" x="186.0" y="526.0" width="144.0" height="55.0" >}}
  {{< svglink relref="../../classes/signalgraphedge.md" x="732.0" y="526.0" width="144.0" height="55.0" >}}
  {{< svglink relref="../../classes/signalgraphrelationtype.md" x="732.0" y="155.0" width="145.0" height="70.0" >}}
  {{< svglink relref="../../classes/specification.md" x="326.0" y="113.0" width="217.0" height="67.0" >}}
  {{< svglink relref="../../classes/signalgraphrelation.md" x="627.0" y="302.0" width="217.0" height="91.0" >}}
  {{< svglink relref="../../classes/signalgraph.md" x="284.0" y="302.0" width="232.0" height="79.0" >}}
  {{< svglink relref="../../classes/signalgraphspecification.md" x="340.0" y="211.0" width="344.0" height="34.0" >}}
{{< / svgfigure >}}
<p> A <i>SignalGraph </i>is a directed graph of elements in the vehicle network that participate in the transmission of a signal /&#160;function&#160;/&#160;power /&#160;ground etc. A <i>SignalGraph</i> is<i> </i>expected to be an unilaterally connected graph at least, meaning it contains a directed path from <i>u</i> to <i>v</i> or a directed path from <i>v</i> to <i>u</i> for every pair <i>u</i> and <i>v </i>of <i>SignalGraphNodes</i> in the <i>SignalGraph.</i>      </p>      <p> A <i>SignalGraph</i> might be the result of a complex calculation based on existing information (e.g. a power supply or grounding graph) or it might user defined (e.g. to apply specific requirements to a chain of elements). Relations between <i>SignalGraphs</i> can be expressed with a <i>SignalGraphRelation,</i> for example if one graph is the redundant implementation of another one. &#160;      </p>      <p> &#160;      </p>      <p> <i>Note: </i>The &quot;signal&quot; concept of a <i>SignalGraph </i>is much broader than that of the <i>Signal </i>class. Due to the lack of a better term, the same term was used for slightly different concepts. For example a <i>SignalGraph</i> might be used to represent all possible elements that are involved in the power supply for a specific component. This involves all elements on the way from the component to the battery. However, the electrical signal (<i>Signal</i>-class) will be named differently for the supply and distribution sides of a power distributor / fuse box.      </p>