---
title: CartesianPoint2D
toc: false
type: specs
date: "2023-03-24"
draft: false
specification: VEC
version: 2.0.2
documentType: "Recommendation"
elementType: Class
classes:
  - CartesianPoint2D
menu_name: vec-2.0.2
---
<p> A CartesianPoint2D is a point that is defined by its coordinates in a rectangular two-dimensional Cartesian coordinate system.      </p>

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
|x| [Double]({{< relref "double.md" >}}) | 1 | <p> Specifies the value of x-coordinate of the Cartesian point. The unit of this value is the baseUnit of containing BuildingBlockSpecification2D.      </p> | [CartesianPoint2D]({{< relref "cartesianpoint2d.md" >}}) |
|y| [Double]({{< relref "double.md" >}}) | 1 | <p> Specifies the value of y-coordinate of the Cartesian point. The unit of this value is the baseUnit of containing BuildingBlockSpecification2D.      </p> | [CartesianPoint2D]({{< relref "cartesianpoint2d.md" >}}) |


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
        <td>cartesianPoint</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "buildingblockspecification2d.md" >}}">BuildingBlockSpecification2D</a></td>
        <td>0..1</td>
        <td><p> Specifies the CartesianPoint2Ds that are used in the BuildingBlockSpecification2D.      </p></td>
    </tr>
    <tr>
        <td>cartesianPoint</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "connectionviewspecification.md" >}}">ConnectionViewSpecification</a></td>
        <td>0..1</td>
        <td>Specifies all the <i>CartesianPoint2Ds</i> that are used within the <i>ConnectionViewSpecification</i><i>.</i></td>
    </tr>
    <tr>
        <td>cartesianPoint</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "geometrynode2d.md" >}}">GeometryNode2D</a></td>
        <td>0..*</td>
        <td>References the CartesianPoint2D where the GeometryNode2D is located.</td>
    </tr>
    <tr>
        <td>cartesianPoint</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "netviewspecification.md" >}}">NetViewSpecification</a></td>
        <td>0..1</td>
        <td>Specifies all the <i>CartesianPoint2Ds</i> that are used within the <i>NetViewSpecification.</i></td>
    </tr>
    <tr>
        <td>centerPoint</td>
        <td>0..1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "buildingblockpositioning2d.md" >}}">BuildingBlockPositioning2D</a></td>
        <td>0..1</td>
        <td>Specifies the center point of the BuildingBlock in the coordinate system of the harness drawing.</td>
    </tr>
    <tr>
        <td>controlPoint</td>
        <td>0..*</td>
        <td>N</td>
        <td>N</td>
        <td>Y</td>
        <td><a href="{{< relref "pathsegment.md" >}}">PathSegment</a></td>
        <td>0..*</td>
        <td>The ordered list of control points through which the PathSegment goes.</td>
    </tr>
    <tr>
        <td>origin</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "transformation2d.md" >}}">Transformation2D</a></td>
        <td>0..*</td>
        <td>References the CartesianPoint2D that is the origin of the Transformation2D.</td>
    </tr>
    </tbody>
</table>



