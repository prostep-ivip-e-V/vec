﻿---
title: Routing
toc: false
type: specs
layout: diagram
date: "2017-02-21"
draft: false
specification: VEC
version: 1.1.3
documentType: "Recommendation"
elementType: Diagram
classes:
  - Path
  - WireRole
  - WireElementReference
  - Connection
  - TopologySegment
  - RoutableElement
  - Routing
  - RoutingSpecification
menu:
  VEC-1.1.3:    
    parent: topology-and-geometry
    identifier: topology-and-geometry/routing
    weight: 1005007 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1005007
---
{{< svgfigure src="routing.png" width="779" height="474" caption="Routing" numbered="true" >}}
  {{< svglink relref="../../classes/path.md" x="22.0" y="230.0" width="89.0" height="43.0" >}}
  {{< svglink relref="../../classes/wirerole.md" x="593.0" y="417.0" width="169.0" height="43.0" >}}
  {{< svglink relref="../../classes/wireelementreference.md" x="592.0" y="295.0" width="169.0" height="55.0" >}}
  {{< svglink relref="../../classes/connection.md" x="268.0" y="298.0" width="217.0" height="79.0" >}}
  {{< svglink relref="../../classes/topologysegment.md" x="18.0" y="351.0" width="226.0" height="91.0" >}}
  {{< svglink relref="../../classes/routableelement.md" x="273.0" y="225.0" width="484.0" height="43.0" >}}
  {{< svglink relref="../../classes/routing.md" x="21.0" y="106.0" width="736.0" height="79.0" >}}
  {{< svglink relref="../../classes/routingspecification.md" x="21.0" y="15.0" width="736.0" height="43.0" >}}
{{< / svgfigure >}}
<p> A <i>RoutingSpecification</i> is a container for various <i>Routings</i>. Each <i>Routing</i> specifies a dedicated <i>Path</i> as an ordered list of <i>TopologySegments</i> through which the referenced <i>RoutableElement</i> is routed. A <i>RoutableElement</i> can either be a <i>Connection</i> or a <i>WireElement </i>(which can alternatively belong to a <i>PartUsage</i> or a <i>PartOccurrence</i>).      </p>      <p> In addition, a <i>Routing</i> can reference some segments on the <i>Path</i> as <i>mandatorySegments. </i>This can be helpful in cases where otherwise a simple redefinition respectively recalculation would not consider these segments.      </p>