---
title: Curve3D
toc: false
type: specs
date: "2020-02-01"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - Curve3D
menu_name: vec-1.2.0
---
<p> The <i>Curve3D</i> is an abstract representation of a curve, that defines the three-dimensional appearance of the centreline of a segment. The concrete type of the curve (e.g. NURBSCurve) defines the mathematical function that applies to curve and stores the required parameter set for this function in the VEC.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | geo_3d |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | true |
| **Derived Classifiers** | [NURBSCurve]({{< relref "nurbscurve.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [GeometrySegment3D]({{< relref "geometrysegment3d.md" >}}) |  | curve | 0..* | <p> Specifies an ordered list of curves which describe the centerline of the segment. If a segment is described by more than one curve, the centrelines of the individual curves are aligned in the order of this association.      </p> |
