---
title: Curve3D
toc: false
type: specs
date: "2023-03-24"
draft: false
specification: VEC
version: 2.0.2
documentType: "Recommendation"
elementType: Class
classes:
  - Curve3D
menu_name: vec-2.0.2
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
        <td>curve</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>Y</td>
        <td><a href="{{< relref "geometrysegment3d.md" >}}">GeometrySegment3D</a></td>
        <td></td>
        <td><p> Specifies an ordered list of curves which describe the centerline of the segment. If a segment is described by more than one curve, the centrelines of the individual curves are aligned in the order of this association.      </p></td>
    </tr>
    </tbody>
</table>



