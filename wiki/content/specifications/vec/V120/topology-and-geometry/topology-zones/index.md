---
title: Topology Zones
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu:
  vec120:
    identifier: topology-and-geometry/topology-zones    
    parent: topology-and-geometry
    weight: 1005002 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1005002
---
{{< svgfigure src="topology-zones.png" width="755" height="763" caption="Topology Zones" numbered="true" >}}
  {{< svglink relref="../classes/zonecoverage.md" x="309.0" y="421.0" width="89.0" height="34.0" >}}
  {{< svglink relref="../classes/nodelocation.md" x="96.0" y="165.0" width="89.0" height="43.0" >}}
  {{< svglink relref="../classes/zoneassignment.md" x="302.0" y="505.0" width="104.0" height="34.0" >}}
  {{< svglink relref="../classes/anchortype.md" x="302.0" y="164.0" width="117.0" height="86.0" >}}
  {{< svglink relref="../classes/location.md" x="288.0" y="297.0" width="129.0" height="67.0" >}}
  {{< svglink relref="../classes/segmentlocation.md" x="479.0" y="165.0" width="142.0" height="67.0" >}}
  {{< svglink relref="../classes/topologyzonespecification.md" x="281.0" y="715.0" width="157.0" height="34.0" >}}
  {{< svglink relref="../classes/topologyzonetype.md" x="15.0" y="582.0" width="194.0" height="82.0" >}}
  {{< svglink relref="../classes/topologynode.md" x="95.0" y="15.0" width="226.0" height="103.0" >}}
  {{< svglink relref="../classes/topologysegment.md" x="395.0" y="17.0" width="226.0" height="91.0" >}}
  {{< svglink relref="../classes/topologyzone.md" x="246.0" y="582.0" width="302.0" height="103.0" >}}
{{< / svgfigure >}}
<html>   <head>     </head>   <body>     <p> A <i>TopologyZoneSpecification</i> is a container to define <i>TopologyZones.</i> A <i>TopologyZone</i> is a way to define areas on that share a set properties (e.g. environmental influence).      </p>      <p> To define the <i>TopologyZone </i>unambiguously an assignment of the topology elements to their zones is necessary. <i>TopologyNodes</i> are only connecting points for <i>TopologySegments</i> or for the placement of components and do not have any own extent in space. Therefore <i>ZoneAssignments </i>are only possible for <i>T</i><i>opologySegments</i>.      </p>      <p> For more details, see the description of the relevant classes.      </p>  </body> </html>
