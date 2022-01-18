---
title: PathSegment
toc: false
type: specs
date: "2022-01-18"
draft: false
specification: VEC
version: 1.2.2
documentType: "Recommendation"
elementType: Class
classes:
  - PathSegment
menu_name: vec-1.2.2
---
<p> A PathSegment is a part of the 2D presentation of a GeometrySegment2D. The complete presentation of a GeometrySegment2D is built from an ordered list of PathSegments. Each PathSegment has an ordered list of control points through which the path goes. If no curveRadius is specified the control points are connected by a direct straight line. If a curveRadius is specified, the PathSegment can be drawn by a segment of a circle which touches all control points and has the radius specified.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | geo_2d |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|curveRadius | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>The radius of the curve which describes the appearance of the path segment.  </p> | [PathSegment]({{< relref "pathsegment.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [CartesianPoint2D]({{< relref "cartesianpoint2d.md" >}}) | controlPoint | 0..* | 0..* | The ordered list of control points through which the PathSegment goes. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [GeometrySegment2D]({{< relref "geometrysegment2d.md" >}}) | 1 | pathSegment | 0..* | Specifies an ordered list of PathSegments that describe the appearance of the GeometrySegment2D. The appearance is described by the concatenation of the PathSegments beginning at the startNode of the GeometrySegment2D. |
