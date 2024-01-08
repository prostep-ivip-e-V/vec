---
title: Usage Node
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
  - Project
  - OccurrenceOrUsage
  - TopologyNode
  - NetworkNode
  - ComponentNode
  - UsageNodeType
  - UsageNodeSpecification
  - UsageNode
menu:
  VEC-2.1.0:    
    parent: key-concepts
    identifier: key-concepts/usage-node
    weight: 1001005 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1001005
---
{{< svgfigure src="usage-node.png" width="1100" height="573" caption="Usage Node" numbered="true" >}}
  {{< svglink relref="../../classes/project.md" x="861.0" y="106.0" width="217.0" height="118.0" >}}
  {{< svglink relref="../../classes/occurrenceorusage.md" x="392.0" y="421.0" width="217.0" height="91.0" >}}
  {{< svglink relref="../../classes/topologynode.md" x="651.0" y="330.0" width="226.0" height="103.0" >}}
  {{< svglink relref="../../classes/networknode.md" x="224.0" y="302.0" width="229.0" height="103.0" >}}
  {{< svglink relref="../../classes/componentnode.md" x="105.0" y="456.0" width="255.0" height="103.0" >}}
  {{< svglink relref="../../classes/usagenodetype.md" x="7.0" y="36.0" width="105.0" height="262.0" >}}
  {{< svglink relref="../../classes/usagenodespecification.md" x="350.0" y="15.0" width="274.0" height="43.0" >}}
  {{< svglink relref="../../classes/usagenode.md" x="224.0" y="127.0" width="470.0" height="98.0" >}}
{{< / svgfigure >}}
<p> A <i>UsageNode</i> represents a position in an abstract vehicle, but it does not imply a certain location in space. For example, the &quot;Head Light Left&quot;. <i>UsageNodes</i> belong to the master data and they are defined on some companywide level. They can be used to enforce consistent naming over different projects and different development streams (e.g. between Geometry and Electrologics).      </p>      <p> A <i>UsageNode</i> can be realized by different elements in the VEC (e.g. <i>NetworkNode, OccurrenceOrUsage, TopologyNode, ComponentNode</i>).      </p>