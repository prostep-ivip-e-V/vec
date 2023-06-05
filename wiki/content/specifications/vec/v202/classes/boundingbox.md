---
title: BoundingBox
toc: false
type: specs
date: "2023-03-24"
draft: false
specification: VEC
version: 2.0.2
documentType: "Recommendation"
elementType: Class
classes:
  - BoundingBox
menu_name: vec-2.0.2
---
<p> The bounding box is used to define a cuboid&#160;(box) that can contain a described part completely. Therefore, it is a simplified representation of the bounding volume and represents a definition of the maximum volume occupied by the part.      </p>      <p> It is valid to use the <i>BoundingBox</i> to describe the dimensions of a component, even if not all dimensions are known (e.g. only length and width). However, it must be possible to transform such a partial bounding box into a complete bounding box by adding the missing dimensions.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | physical_information |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|x| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Defines the extent of the bounding box in the direction of x<i> </i>(length).      </p> | [BoundingBox]({{< relref "boundingbox.md" >}}) |
|y| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Defines the extent of the bounding box in the direction of y<i> </i>(width).      </p> | [BoundingBox]({{< relref "boundingbox.md" >}}) |
|z| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Defines the extent of the bounding box in the direction of <i>z </i>(height).      </p> | [BoundingBox]({{< relref "boundingbox.md" >}}) |


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
        <td>0..1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "generaltechnicalpartspecification.md" >}}">GeneralTechnicalPartSpecification</a></td>
        <td></td>
        <td><p> Defines the bounding box of the part.      </p></td>
    </tr>
    </tbody>
</table>



