---
title: NURBSControlPoint
toc: false
type: specs
date: "2022-01-18"
draft: false
specification: VEC
version: 1.2.2
documentType: "Recommendation"
elementType: Class
classes:
  - NURBSControlPoint
menu_name: vec-1.2.2
---
<p> Represents a control point of a <i>NURBSCurve. </i>It consists of a referenced <i>CartesianPoint3D</i> for the position and a <i>weight</i>.      </p>

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
|weight | [Double]({{< relref "double.md" >}}) | 1 | <p> &#160;The weight of the NURBSControlPoint.      </p> | [NURBSControlPoint]({{< relref "nurbscontrolpoint.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [CartesianPoint3D]({{< relref "cartesianpoint3d.md" >}}) |  | 1 | 0..* | <p> The <i>CartesionPoint3D </i>that defines the position of this <i>NURBSControlPoint.</i>&#160;      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [NURBSCurve]({{< relref "nurbscurve.md" >}}) |  | controlPoint | 0..* | <p> Defines the control points of the NURBS curve (for details see the class description of <i>NURBSCurve)</i>      </p> |
