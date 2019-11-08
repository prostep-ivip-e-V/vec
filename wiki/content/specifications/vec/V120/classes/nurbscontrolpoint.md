---
title: NURBSControlPoint
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body> Represents a control point of a <i>NURBSCurve. </i>It consists of a referenced <i>CartesianPoint3D</i> for the position and a <i>weight</i>.</body> </html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | geo_3d |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |


## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|weight | [Double]({{< relref "double.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> &#160;The weight of the NURBSControlPoint.      </p>  </body> </html> | [NURBSControlPoint]({{< relref "nurbscontrolpoint.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [CartesianPoint3D]({{< relref "cartesianpoint3d.md" >}}) |  | 1 | 0..* | <html>   <head>     </head>   <body>     <p> The <i>CartesionPoint3D </i>that defines the position of this <i>NURBSControlPoint.</i>&#160;      </p>  </body> </html> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [NURBSCurve]({{< relref "nurbscurve.md" >}}) |  | controlPoint | 0..* | <html>   <head>     </head>   <body>     <p> Defines the control points of the NURBS curve (for details see the class description of <i>NURBSCurve)</i>      </p>  </body> </html> |
