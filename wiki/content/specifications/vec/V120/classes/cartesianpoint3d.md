---
title: CartesianPoint3D
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A CartesianPoint3D is a point that is defined by its coordinates in a rectangular three-dimensional Cartesian coordinate system.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | geo_3d |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [3D Curves]({{< relref "../topology-and-geometry/3d-curves" >}})<br/> [3D-Geometry]({{< relref "../topology-and-geometry/3d-geometry" >}})<br/> [Coordinate Systems of Components]({{< relref "../description-of-components/coordinate-systems-of-components" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|x | [Double]({{< relref "double.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies the value of x-coordinate of the Cartesian point. The unit of this value is the baseUnit of containing BuildingBlockSpecification3D.      </p>    </body> </html>  | [CartesianPoint3D]({{< relref "cartesianpoint3d.md" >}}) |
|y | [Double]({{< relref "double.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies the value of y-coordinate of the Cartesian point. The unit of this value is the baseUnit of containing BuildingBlockSpecification3D.      </p>    </body> </html>  | [CartesianPoint3D]({{< relref "cartesianpoint3d.md" >}}) |
|z | [Double]({{< relref "double.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies the value of z-coordinate of the Cartesian point. The unit of this value is the baseUnit of containing BuildingBlockSpecification3D.      </p>    </body> </html>  | [CartesianPoint3D]({{< relref "cartesianpoint3d.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [NURBSControlPoint]({{< relref "nurbscontrolpoint.md" >}}) | 0..* |  | 1 | <html>   <head>     </head>   <body>     <p> The <i>CartesionPoint3D </i>that defines the position of this <i>NURBSControlPoint.</i>&#160;      </p>  </body> </html> |
| [LocalPosition]({{< relref "localposition.md" >}}) | 0..* | cartesianPoint | 1 |  |
| [GeometryNode3D]({{< relref "geometrynode3d.md" >}}) | 0..* | cartesianPoint | 1 | References the CartesianPoint3D where the GeometryNode3D is located.   |
| [LocalGeometrySpecification]({{< relref "localgeometryspecification.md" >}}) | 0..1 | cartesianPoint | 0..* | <html>   <head>     </head>   <body> All <i>CartesianPoint3Ds</i> that are used in this <i>LocalGeometrySpecification.</i> All <i>CartesianPoint3Ds</i> are defined in relation to the coordinate system of the component.</body> </html> |
| [BuildingBlockSpecification3D]({{< relref "buildingblockspecification3d.md" >}}) | 1 | cartesianPoint | 0..* | Specifies the CartesianPoint3Ds that are used in the BuildingBlockSpecification3D.  |
| [Transformation3D]({{< relref "transformation3d.md" >}}) | 0..* | origin | 1 | Specifies the coordinates of the translation.  |
