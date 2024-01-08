---
title: Terminal Coordinate System
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
menu:
  VEC-2.1.0:    
    parent: component-characteristics
    identifier: component-characteristics/terminal-coordinate-system
    weight: 1005005 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1005005
---
{{< svgfigure src="terminal-coordinate-system.png" width="1283" height="522" caption="Terminal Coordinate System" numbered="true" >}}
{{< / svgfigure >}}
<p> The coordinate system of a terminal defines a reference system for the definition of other values (e.g. the <i>WireReception.Rotation</i>). The definition is the following&#160;(see illustration).      </p>      <ol>       <li> The origin (0,0,0)&#160;is in the intersection point the centerline of terminal (z-axis) and the perpendicular plane through the most forward end position of the terminal in its cavity.        </li>       <li> The y-axis points in the direction of the primary locking.        </li>       <li> The x-axis is the cross product of y and z, x&#160;=&#160;y ⨯ z).        </li>     </ol>     <p> The rotation of the <i>WireReception</i> is the angle between the normal vector on base plane of the crimp area and the y-axis, which is a rotation around the z-axis (right hand rule, compare illustration).       </p>      <p> &#160;      </p>