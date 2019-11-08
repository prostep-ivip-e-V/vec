---
title: PathSegment
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A PathSegment is a part of the 2D presentation of a GeometrySegment2D. The complete presentation of a GeometrySegment2D is built from an ordered list of PathSegments. Each PathSegment has an ordered list of control points through which the path goes. If no curveRadius is specified the control points are connected by a direct straight lines. If a curveRadius is specified, the PathSegment can be drawn by a segment of a circle which touches all control points and has the radius specified.      </p>    </body> </html> 
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
|curveRadius | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <html><body><p>The radius of the curve which describes the appearance of the path segment.  </p></body></html> | [PathSegment]({{< relref "pathsegment.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [CartesianPoint2D]({{< relref "cartesianpoint2d.md" >}}) | controlPoint | 0..* | 0..* | The ordered list of control points through which the PathSegment goes.   |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [GeometrySegment2D]({{< relref "geometrysegment2d.md" >}}) | 1 | pathSegment | 0..* | Specifies an ordered list of PathSegments that describe the appearance of the GeometrySegment2D. The appearance is described by the concatenation of the PathSegments beginning at the startNode of the GeometrySegment2D.  |
