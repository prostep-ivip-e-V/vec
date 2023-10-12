---
title: CartesianDimension
toc: false
type: specs
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - CartesianDimension
menu_name: vec-2.1.0
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
|height| [Double]({{< relref "double.md" >}}) | 1 | <p>Specifies the height of the object. The unit of this value is the baseUnit of containing BuildingBlockSpecification2D. </p> | [CartesianDimension]({{< relref "cartesiandimension.md" >}}) |
|width| [Double]({{< relref "double.md" >}}) | 1 | <p> Specifies the width of the object. The unit of this value is the baseUnit of containing BuildingBlockSpecification2D.      </p> | [CartesianDimension]({{< relref "cartesiandimension.md" >}}) |


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
        <td>boundingBox</td>
        <td>1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "buildingblockspecification2d.md" >}}">BuildingBlockSpecification2D</a></td>
        <td>0..1</td>
        <td>Specifies the size of the area described by the BuildingBlockSpecification2D in Cartesian dimensions.</td>
    </tr>
    </tbody>
</table>



