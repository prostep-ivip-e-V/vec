---
title: 3D Curves
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu:
  vec120:
    identifier: topology-and-geometry/3d-curves    
    parent: topology-and-geometry
    weight: 1005006 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1005006
---
{{< svgfigure src="3d-curves.png" width="681" height="542" caption="3D Curves" numbered="true" >}}
  {{< svglink relref="../../classes/curve3d.md" x="379.0" y="259.0" width="81.0" height="34.0" >}}
  {{< svglink relref="../../classes/cartesianpoint3d.md" x="43.0" y="441.0" width="102.0" height="79.0" >}}
  {{< svglink relref="../../classes/nurbscurve.md" x="358.0" y="329.0" width="107.0" height="67.0" >}}
  {{< svglink relref="../../classes/nurbscontrolpoint.md" x="351.0" y="462.0" width="142.0" height="55.0" >}}
  {{< svglink relref="../../classes/geometrysegment3d.md" x="288.0" y="133.0" width="253.0" height="67.0" >}}
  {{< svglink relref="../../classes/buildingblockspecification3d.md" x="15.0" y="7.0" width="652.0" height="43.0" >}}
{{< / svgfigure >}}
<html>   <head>     </head>   <body>     <p> The centerline of a <i>GeometrySegment3D</i> is defined by one or more <i>Curve3D</i>. This abstract class is designed to be an extension point for different curve implementations. At the moment the only curve implementation that is supported by the VEC&#160;are <i>NURBSCurves. </i>The details are described in the documentation of the individual classes.      </p>      <p> &#160;      </p>  </body> </html>
