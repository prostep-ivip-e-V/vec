---
title: BoundingBox
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> The bounding box is used to define a cuboid&#160;(box) that can contain a described part completely. Therefore it is a simplified representation of the bounding volume and represents a definition of the maximum volume occupied by the part.     </p>      <p> It is valid to use the <i>BoundingBox</i> to describe the dimensions of a component, even if not all dimensions are known (e.g. only length and width). However, it must be possible to transform such a partial bounding box into a complete bounding box by adding the missing dimensions.        </p>    </body> </html> 
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
|x | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <html>   <head>     </head>   <body>   </body> </html>  | [BoundingBox]({{< relref "boundingbox.md" >}}) |
|y | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <html>   <head>     </head>   <body> Defines the extent of the bounding box in the direction of y<i> </i>(width).   </body> </html>  | [BoundingBox]({{< relref "boundingbox.md" >}}) |
|z | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <html>   <head>     </head>   <body> Defines the extent of the bounding box in the direction of <i>z </i>(height).   </body> </html>  | [BoundingBox]({{< relref "boundingbox.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [GeneralTechnicalPartSpecification]({{< relref "generaltechnicalpartspecification.md" >}}) |  | boundingBox | 0..1 | <html>   <head>     </head>   <body> Defines the bounding box of the part.   </body> </html>  |
