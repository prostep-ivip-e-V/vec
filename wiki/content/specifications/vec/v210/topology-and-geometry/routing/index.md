---
title: Routing
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
  - Path
  - WireRole
  - Connection
  - TopologySegment
  - WireElementReference
  - RoutableElement
  - Routing
  - RoutingSpecification
menu:
  VEC-2.1.0:    
    parent: topology-and-geometry
    identifier: topology-and-geometry/routing
    weight: 1009011 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1009011
---
{{< svgfigure src="routing.png" width="841" height="530" caption="Routing" numbered="true" >}}
  {{< svglink relref="../../classes/path.md" x="20.0" y="239.0" width="89.0" height="43.0" >}}
  {{< svglink relref="../../classes/wirerole.md" x="590.0" y="473.0" width="169.0" height="43.0" >}}
  {{< svglink relref="../../classes/connection.md" x="265.0" y="298.0" width="217.0" height="79.0" >}}
  {{< svglink relref="../../classes/topologysegment.md" x="15.0" y="351.0" width="226.0" height="91.0" >}}
  {{< svglink relref="../../classes/wireelementreference.md" x="589.0" y="295.0" width="238.0" height="115.0" >}}
  {{< svglink relref="../../classes/routableelement.md" x="270.0" y="225.0" width="484.0" height="43.0" >}}
  {{< svglink relref="../../classes/routing.md" x="18.0" y="106.0" width="736.0" height="79.0" >}}
  {{< svglink relref="../../classes/routingspecification.md" x="18.0" y="15.0" width="736.0" height="43.0" >}}
{{< / svgfigure >}}
<p> A <i>RoutingSpecification</i> is a container for various <i>Routings</i>. Each <i>Routing</i> specifies a dedicated <i>Path</i> as an ordered list of <i>TopologySegments</i> through which the referenced <i>RoutableElement</i> is routed. A <i>RoutableElement</i> can either be a <i>Connection</i> or a <i>WireElement </i>(which can alternatively belong to a <i>PartUsage</i> or a <i>PartOccurrence</i>).      </p>      <p> In addition, a <i>Routing</i> can reference some segments on the <i>Path</i> as <i>mandatorySegments. </i>This can be helpful in cases where otherwise a simple redefinition respectively recalculation would not consider these segments.      </p>