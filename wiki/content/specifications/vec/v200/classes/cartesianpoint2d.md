---
title: CartesianPoint2D
toc: false
type: specs
date: "2022-03-09"
draft: false
specification: VEC
version: 2.0.0
documentType: "Recommendation"
elementType: Class
classes:
  - CartesianPoint2D
menu_name: vec-2.0.0
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
|x | [Double]({{< relref "double.md" >}}) | 1 | <p> Specifies the value of x-coordinate of the Cartesian point. The unit of this value is the baseUnit of containing BuildingBlockSpecification2D.      </p> | [CartesianPoint2D]({{< relref "cartesianpoint2d.md" >}}) |
|y | [Double]({{< relref "double.md" >}}) | 1 | <p> Specifies the value of y-coordinate of the Cartesian point. The unit of this value is the baseUnit of containing BuildingBlockSpecification2D.      </p> | [CartesianPoint2D]({{< relref "cartesianpoint2d.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [NetViewSpecification]({{< relref "netviewspecification.md" >}}) | 0..1 | cartesianPoint | 0..* | Specifies all the <i>CartesianPoint2Ds</i> that are used within the <i>NetViewSpecification.</i> |
| [BuildingBlockSpecification2D]({{< relref "buildingblockspecification2d.md" >}}) | 0..1 | cartesianPoint | 0..* | <p> Specifies the CartesianPoint2Ds that are used in the BuildingBlockSpecification2D.      </p> |
| [GeometryNode2D]({{< relref "geometrynode2d.md" >}}) | 0..* | cartesianPoint | 1 | References the CartesianPoint2D where the GeometryNode2D is located. |
| [ConnectionViewSpecification]({{< relref "connectionviewspecification.md" >}}) | 0..1 | cartesianPoint | 0..* | Specifies all the <i>CartesianPoint2Ds</i> that are used within the <i>ConnectionViewSpecification</i><i>.</i> |
| [BuildingBlockPositioning2D]({{< relref "buildingblockpositioning2d.md" >}}) | 0..1 | centerPoint | 0..1 | Specifies the center point of the BuildingBlock in the coordinate system of the harness drawing. |
| [PathSegment]({{< relref "pathsegment.md" >}}) | 0..* | controlPoint | 0..* | The ordered list of control points through which the PathSegment goes. |
| [Transformation2D]({{< relref "transformation2d.md" >}}) | 0..* | origin | 1 | References the CartesianPoint2D that is the origin of the Transformation2D. |
