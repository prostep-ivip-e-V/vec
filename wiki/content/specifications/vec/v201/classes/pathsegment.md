---
title: PathSegment
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - PathSegment
menu_name: vec-2.0.1
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
|curveRadius| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>The radius of the curve which describes the appearance of the path segment.  </p> | [PathSegment]({{< relref "pathsegment.md" >}}) |

## Outgoing Relations
<table>
    <thead>
        <tr>
           <th colspan="6">Other End</th>
           <th colspan="1">This End</th>
           <th colspan="1">General</th>
        </tr>
        <tr>
           <th>Role</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Agg.{{< info agg >}}</th>
           <th>Unique{{< info unique >}}</th>
           <th>Ordered{{< info ordered >}}</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>controlPoint</td>
        <td><a href="{{< relref "cartesianpoint2d.md" >}}">CartesianPoint2D</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>Y</td>
        <td>0..*</td>
        <td>The ordered list of control points through which the PathSegment goes.</td>
    </tr>
    </tbody>
</table>

##  Incoming Relations
<table>
    <thead>
        <tr>
           <th colspan="5">This End</th>
           <th colspan="2">Other End</th>
           <th colspan="1">General</th>
        </tr>
        <tr>
           <th>Role</th>
           <th>Mult.</th>
           <th>Agg.{{< info agg >}}</th>
           <th>Unique{{< info unique >}}</th>
           <th>Ordered{{< info ordered >}}</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>pathSegment</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>Y</td>
        <td><a href="{{< relref "geometrysegment2d.md" >}}">GeometrySegment2D</a></td>
        <td>1</td>
        <td>Specifies an ordered list of PathSegments that describe the appearance of the GeometrySegment2D. The appearance is described by the concatenation of the PathSegments beginning at the startNode of the GeometrySegment2D.</td>
    </tr>
    </tbody>
</table>



