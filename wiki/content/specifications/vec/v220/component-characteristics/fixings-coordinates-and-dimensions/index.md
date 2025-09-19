---
title: Fixings Coordinates and Dimensions
toc: false
type: specs
layout: diagram
date: "2025-09-19"
draft: false
specification: VEC
version: 2.2.0
documentType: "Recommendation"
elementType: Diagram
classes:
menu:
  VEC-2.2.0:    
    parent: component-characteristics
    identifier: component-characteristics/fixings-coordinates-and-dimensions
    weight: 1005018 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1005018
---
{{< svgfigure src="fixings-coordinates-and-dimensions.png" width="1348" height="504" caption="Fixings Coordinates and Dimensions" numbered="true" >}}
{{< / svgfigure >}}
<p> The following section contains specifications for the definition of coordinate systems of fixings, clips, cable ties and similar (and their 3D models). These coordinate definitions form the basis for various attribute definitions and the placement of components on the wire harness (see <i>PlacementSpecification</i>) and in the 3D model (see BuildingBlockSpecification3D). For components whose geometry changes upon installation, the installed state must be used.      </p>      <p> The orientation of the coordinate system of cable ties shall be as follows:      </p>      <ul>       <li> The origin of the cable tie lies centrally at the edge of the lock on the side of the cable tie.        </li>       <li> The Y-axis is positioned in the plane of the wire harness support surface and is oriented parallel to the direction in which the wire harness passes through the cable tie.        </li>       <li> The XZ-plane intersects the wire harness.        </li>     </ul>     <p> For fixings with cable tie (including those with attached cable ties), only the fastening is represented. The cable tie itself (which varies in diameter) and its closure are omitted.      </p>      <p> The orientation of the coordinate system of fixings shall be as follows:      </p>      <ul>       <li> The origin of the component lies at the intersection of the support surface of the fixing (in the installed state) with the central axis of the locking pin, bolt holder, or hole/slot (depending on the fastening method).        </li>       <li> The Y-axis is in the plane of the support surface and oriented parallel to the direction in which the cable harness passes through the fixing.        </li>       <li> The Z-axis is perpendicular to the plane of the support surface and points in the opposite direction to the clip's mounting direction.        </li>     </ul>     <p> For fastening elements attached to an edge, the origin of the component is located at the intersection of the support surface of the component (in the installed state) with the center of the side contact surface of the component on the sheet metal.      </p>      <p> If the conditions described above cannot be met, the following priorities should be applied:      </p>      <ol>       <li> The Y-axis is oriented parallel to the direction in which the cable harness passes through the fixing and lies in the plane of a support or contact surface.        </li>       <li> The XZ plane must intersect the cable at the point where the position of the component on the segment is dimensioned (e.g., in the middle of the cable tie for cable tie holders).        </li>       <li> The YZ plane lies in the middle of the component.        </li>     </ol>     <p> Definitions were adopted from the CES&#160;guidelines.      </p>      <p> &#160;      </p>