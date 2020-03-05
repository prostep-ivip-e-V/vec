---
title: CartesianPoint3D
toc: false
type: specs
date: "2020-02-01"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - CartesianPoint3D
menu_name: vec-1.2.0
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
| [NURBSControlPoint]({{< relref "nurbscontrolpoint.md" >}}) | 0..* |  | 1 | <p> The <i>CartesionPoint3D </i>that defines the position of this <i>NURBSControlPoint.</i>&#160;      </p> |
| [BuildingBlockSpecification3D]({{< relref "buildingblockspecification3d.md" >}}) | 1 | cartesianPoint | 0..* | Specifies the CartesianPoint3Ds that are used in the BuildingBlockSpecification3D. |
| [LocalPosition]({{< relref "localposition.md" >}}) | 0..* | cartesianPoint | 1 |  |
| [LocalGeometrySpecification]({{< relref "localgeometryspecification.md" >}}) | 0..1 | cartesianPoint | 0..* | <p> All <i>CartesianPoint3Ds</i> that are used in this <i>LocalGeometrySpecification.</i> All <i>CartesianPoint3Ds</i> are defined in relation to the coordinate system of the component.      </p> |
| [GeometryNode3D]({{< relref "geometrynode3d.md" >}}) | 0..* | cartesianPoint | 1 | References the CartesianPoint3D where the GeometryNode3D is located. |
| [Transformation3D]({{< relref "transformation3d.md" >}}) | 0..* | origin | 1 | Specifies the coordinates of the translation. |
