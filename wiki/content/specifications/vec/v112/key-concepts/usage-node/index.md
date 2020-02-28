---
title: Usage Node
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
  - UsageNodeType
  - Project
  - ComponentNode
  - OccurrenceOrUsage
  - NetworkNode
  - TopologyNode
  - UsageNodeSpecification
  - UsageNode
menu:
  VEC-1.1.2:    
    parent: key-concepts
    identifier: key-concepts/usage-node
    weight: 1001006 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1001006
---
{{< svgfigure src="usage-node.png" width="889" height="642" caption="Usage Node" numbered="true" >}}
  {{< svglink relref="../../classes/usagenodetype.md" x="126.0" y="490.0" width="105.0" height="138.0" >}}
  {{< svglink relref="../../classes/project.md" x="658.0" y="322.0" width="217.0" height="118.0" >}}
  {{< svglink relref="../../classes/componentnode.md" x="182.0" y="42.0" width="217.0" height="91.0" >}}
  {{< svglink relref="../../classes/occurrenceorusage.md" x="301.0" y="200.0" width="217.0" height="91.0" >}}
  {{< svglink relref="../../classes/networknode.md" x="28.0" y="203.0" width="217.0" height="91.0" >}}
  {{< svglink relref="../../classes/topologynode.md" x="428.0" y="62.0" width="226.0" height="103.0" >}}
  {{< svglink relref="../../classes/usagenodespecification.md" x="301.0" y="511.0" width="274.0" height="43.0" >}}
  {{< svglink relref="../../classes/usagenode.md" x="105.0" y="350.0" width="470.0" height="98.0" >}}
{{< / svgfigure >}}
<p> A <i>UsageNode</i> represents a position in an abstract vehicle. For example the &quot;Head Light Left&quot;. <i>UsageNodes</i> belong to the master data and they are defined on some companywide level. They can be used to enforce consistent naming over different projects and different development streams (e.g. between Geometry and Electrologic).     </p>      <p> A <i>UsageNode</i> can be realized by different elements in the VEC (e.g. <i>NetworkNode, OccurrenceOrUsage, TopologyNode, ComponentNode</i>).      </p>