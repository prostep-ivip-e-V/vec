---
title: CartesianDimension
toc: false
type: specs
date: "2020-02-01"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - CartesianDimension
menu_name: vec-1.2.0
---
The CartesianDimension specifies the size of an object in 2D-space.
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
|height | [Double]({{< relref "double.md" >}}) | 1 | <p>Specifies the height of the object. The unit of this value is the baseUnit of containing BuildingBlockSpecification2D. </p> | [CartesianDimension]({{< relref "cartesiandimension.md" >}}) |
|width | [Double]({{< relref "double.md" >}}) | 1 | <p> Specifies the width of the object. The unit of this value is the baseUnit of containing BuildingBlockSpecification2D.      </p> | [CartesianDimension]({{< relref "cartesiandimension.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [BuildingBlockSpecification2D]({{< relref "buildingblockspecification2d.md" >}}) | 0..1 | boundingBox | 1 | Specifies the size of the area described by the BuildingBlockSpecification2D in Cartesian dimensions. |
