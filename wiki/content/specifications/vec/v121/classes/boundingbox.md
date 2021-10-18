---
title: BoundingBox
toc: false
type: specs
date: "2021-10-18"
draft: false
specification: VEC
version: 1.2.1
documentType: "Recommendation"
elementType: Class
classes:
  - BoundingBox
menu_name: vec-1.2.1
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
|x | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Defines the extent of the bounding box in the direction of x<i> </i>(length).      </p> | [BoundingBox]({{< relref "boundingbox.md" >}}) |
|y | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Defines the extent of the bounding box in the direction of y<i> </i>(width).      </p> | [BoundingBox]({{< relref "boundingbox.md" >}}) |
|z | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Defines the extent of the bounding box in the direction of <i>z </i>(height).      </p> | [BoundingBox]({{< relref "boundingbox.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [GeneralTechnicalPartSpecification]({{< relref "generaltechnicalpartspecification.md" >}}) |  | boundingBox | 0..1 | <p> Defines the bounding box of the part.      </p> |
