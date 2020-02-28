---
title: CartesianPoint3D
toc: false
type: specs
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Class
classes:
  - CartesianPoint3D
menu_name: vec-1.1.1
---
<p> A CartesianPoint3D is a point that is defined by its coordinates in a rectangular three-dimensional Cartesian coordinate system.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | geo_3d |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|x | [Double]({{< relref "double.md" >}}) | 1 | <p> Specifies the value of x-coordinate of the Cartesian point. The unit of this value is the baseUnit of containing BuildingBlockSpecification3D.      </p> | [CartesianPoint3D]({{< relref "cartesianpoint3d.md" >}}) |
|y | [Double]({{< relref "double.md" >}}) | 1 | <p> Specifies the value of y-coordinate of the Cartesian point. The unit of this value is the baseUnit of containing BuildingBlockSpecification3D.      </p> | [CartesianPoint3D]({{< relref "cartesianpoint3d.md" >}}) |
|z | [Double]({{< relref "double.md" >}}) | 1 | <p> Specifies the value of z-coordinate of the Cartesian point. The unit of this value is the baseUnit of containing BuildingBlockSpecification3D.      </p> | [CartesianPoint3D]({{< relref "cartesianpoint3d.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [BuildingBlockSpecification3D]({{< relref "buildingblockspecification3d.md" >}}) | 1 | cartesianPoint | 0..* | Specifies the CartesianPoint3Ds that are used in the BuildingBlockSpecification3D. |
| [GeometryNode3D]({{< relref "geometrynode3d.md" >}}) | 0..* | cartesianPoint | 1 | References the CartesianPoint3D where the GeometryNode3D is located. |
| [BSplineCurve]({{< relref "bsplinecurve.md" >}}) | 0..* | controlPoint | 0..* | The list of control points for the curve. The list shall contain at least 2 elements. |
| [Transformation3D]({{< relref "transformation3d.md" >}}) | 0..* | origin | 1 | Specifies the coordinates of the translation. |
