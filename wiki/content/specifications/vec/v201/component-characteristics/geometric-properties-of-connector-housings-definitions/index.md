---
title: Geometric Properties of Connector Housings (Definitions)
toc: false
type: specs
layout: diagram
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Diagram
classes:
menu:
  VEC-2.0.1:    
    parent: component-characteristics
    identifier: component-characteristics/geometric-properties-of-connector-housings-definitions
    weight: 1005008 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1005008
---
{{< svgfigure src="geometric-properties-of-connector-housings-definitions.png" width="3573" height="1583" caption="Geometric Properties of Connector Housings (Definitions)" numbered="true" >}}
{{< / svgfigure >}}
<p> The following section contains all relevant definitions that are required for the corresponding model elements in the VEC.      </p>      <p> The geometric properties of connector housings are closely related to the <i>LocalGeometrySpecification</i>, described in the section &quot;Coordinate Systems of Components&quot;. All coordinates and values are defined within the same coordinate system. All geometric properties that do not apply exclusively to connector housings are defined there (e.g. <i>BoundingBox</i>, <i>PlacementPoints</i> /&#160;<i>SegmentConnectionPoints</i>).      </p>      <p> The 3D model and coordinate system of a connector housing is defined as follows:      </p>      <ul>       <li> The origin of the plug is in the plane of the electrical contact surface in the centre of the hole of the cavity/pin with the smallest alphanumeric identifier (e.g. cavity/pin 1 or A1).        </li>       <li> The Y-axis is in the plane of the electrical contact surface and points towards the centre of the cavity/pin with the next higher alphanumeric identifier (e.g. cavity/pin 2 or A2). For single-pole connector housings, in the direction of the coding, if present.        </li>       <li> The Z-axis is normal to the plane of the electrical contact surface and points into the housing for femal connectors and to outside for male connectors (the connector in the illustration above is a femal connector). So for female connectors, the Z-axis points in the opposite direction of the plugging direction. For male connectors it points in direction of the plugging direction.        </li>       <li> The X-axis is the vector product of Y&#160;and Z.        </li>     </ul>     <p> For cavities there are two relevant positions in the connector:      </p>      <ul>       <li> The position in the electrical contact surface (highlighted in blue), and        </li>       <li> The position in the entrance surface during the insertion process (highlighted in yellow).        </li>     </ul>     <p> The rotation of the cavity within the connector will be defined as the angle between the Y-axis and the primary locking in the cavity.      </p>      <p> &#160;      </p>      <p> &#160;      </p>      <p> &#160;      </p>      <p> &#160;      </p>