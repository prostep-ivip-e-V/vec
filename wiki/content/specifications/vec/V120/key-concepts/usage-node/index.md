---
title: Usage Node
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu:
  vec120:
    identifier: key-concepts/usage-node    
    parent: key-concepts
    weight: 1001007 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1001007
---
{{< svgfigure src="usage-node.png" width="889" height="773" caption="Usage Node" numbered="true" >}}
  {{< svglink relref="../classes/project.md" x="658.0" y="329.0" width="217.0" height="118.0" >}}
  {{< svglink relref="../classes/occurrenceorusage.md" x="301.0" y="207.0" width="217.0" height="91.0" >}}
  {{< svglink relref="../classes/topologynode.md" x="428.0" y="69.0" width="226.0" height="103.0" >}}
  {{< svglink relref="../classes/networknode.md" x="28.0" y="210.0" width="229.0" height="103.0" >}}
  {{< svglink relref="../classes/componentnode.md" x="126.0" y="42.0" width="255.0" height="103.0" >}}
  {{< svglink relref="../classes/usagenodetype.md" x="126.0" y="497.0" width="105.0" height="262.0" >}}
  {{< svglink relref="../classes/usagenodespecification.md" x="301.0" y="518.0" width="274.0" height="43.0" >}}
  {{< svglink relref="../classes/usagenode.md" x="105.0" y="357.0" width="470.0" height="98.0" >}}
{{< / svgfigure >}}
<html>   <head>     </head>   <body>     <p> A <i>UsageNode</i> represents a position in an abstract vehicle. For example the &quot;Head Light Left&quot;. <i>UsageNodes</i> belong to the master data and they are defined on some companywide level. They can be used to enforce consistent naming over different projects and different development streams (e.g. between Geometry and Electrologic).     </p>      <p> A <i>UsageNode</i> can be realized by different elements in the VEC (e.g. <i>NetworkNode, OccurrenceOrUsage, TopologyNode, ComponentNode</i>).      </p>    </body> </html> 
