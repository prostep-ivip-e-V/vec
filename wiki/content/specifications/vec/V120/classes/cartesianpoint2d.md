---
title: CartesianPoint2D
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A CartesianPoint2D is a point that is defined by its coordinates in a rectangular two-dimensional Cartesian coordinate system.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | geo_2d |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [2D-Geometry]({{< relref "../topology-and-geometry/2d-geometry" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|x | [Double]({{< relref "double.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies the value of x-coordinate of the Cartesian point. The unit of this value is the baseUnit of containing BuildingBlockSpecification2D.      </p>    </body> </html>  | [CartesianPoint2D]({{< relref "cartesianpoint2d.md" >}}) |
|y | [Double]({{< relref "double.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies the value of y-coordinate of the Cartesian point. The unit of this value is the baseUnit of containing BuildingBlockSpecification2D.      </p>    </body> </html>  | [CartesianPoint2D]({{< relref "cartesianpoint2d.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [BuildingBlockSpecification2D]({{< relref "buildingblockspecification2d.md" >}}) | 0..1 | cartesianPoint | 0..* | Specifies the CartesianPoint2Ds that are used in the BuildingBlockSpecification2D.  |
| [GeometryNode2D]({{< relref "geometrynode2d.md" >}}) | 0..* | cartesianPoint | 1 | References the CartesianPoint2D where the GeometryNode2D is located.   |
| [BuildingBlockPositioning2D]({{< relref "buildingblockpositioning2d.md" >}}) | 0..1 | centerPoint | 0..1 | Specifies the center point of the BuildingBlock in the coordinate system of the harness drawing.   |
| [PathSegment]({{< relref "pathsegment.md" >}}) | 0..* | controlPoint | 0..* | The ordered list of control points through which the PathSegment goes.   |
| [Transformation2D]({{< relref "transformation2d.md" >}}) | 0..* | origin | 1 | References the CartesianPoint2D that is the origin of the Transformation2D.   |
