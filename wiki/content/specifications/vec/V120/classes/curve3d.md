---
title: Curve3D
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body> The <i>Curve3D</i> is an abstract representation of a curve, that defines the three dimensional appearance of the centerline of a segment. The concrete type of the curve (e.g. NURBSCurve) defines the mathematical function that applies to curve and stores the required parameter set for this function in the VEC.</body> </html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | geo_3d |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | true |
| **Derived Classifiers** | [NURBSCurve]({{< relref "nurbscurve.md" >}}) |
| **Usage in Diagrams**   | [3D Curves]({{< relref "../topology-and-geometry/3d-curves" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [GeometrySegment3D]({{< relref "geometrysegment3d.md" >}}) |  | curve | 0..* | <html>   <head>     </head>   <body>     <p> Specifies an ordered list of curves which describe the centerline of the segment. If a segment is described by more than one curve, the centerlines of the individual curves are aligned in the order of this association.      </p>  </body> </html> |
