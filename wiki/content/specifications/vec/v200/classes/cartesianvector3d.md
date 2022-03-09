---
title: CartesianVector3D
toc: false
type: specs
date: "2022-03-09"
draft: false
specification: VEC
version: 2.0.0
documentType: "Recommendation"
elementType: Class
classes:
  - CartesianVector3D
menu_name: vec-2.0.0
---
<p> A Cartesian vector in three-dimensional space.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | geo_3d |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [CartesianVector]({{< relref "cartesianvector.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|x | [Double]({{< relref "double.md" >}}) | 1 | <p> Specifies the x-coordinate in 3D space.      </p> | [CartesianVector3D]({{< relref "cartesianvector3d.md" >}}) |
|y | [Double]({{< relref "double.md" >}}) | 1 | <p> Specifies the y-coordinate in 3D space.      </p> | [CartesianVector3D]({{< relref "cartesianvector3d.md" >}}) |
|z | [Double]({{< relref "double.md" >}}) | 1 | <p> Specifies the z-coordinate in 3D space.      </p> | [CartesianVector3D]({{< relref "cartesianvector3d.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [CavityPositionDetail]({{< relref "cavitypositiondetail.md" >}}) |  | insertionVector | 0..1 | The direction in which a terminal is inserted from the <i>InsertionPosition</i> into the connector. The amount of the vector defines the length auf the cavity&#160;(The distance the terminal must travel from the <i>InsertionPostion </i>to its final position. |
