---
title: Transformation3D
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html><body><p>A Transformation is a geometric transformation and specifies a transformation matrix.  </p></body></html>
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
|a11 | [Double]({{< relref "double.md" >}}) | 1 |  | [Transformation3D]({{< relref "transformation3d.md" >}}) |
|a12 | [Double]({{< relref "double.md" >}}) | 1 |  | [Transformation3D]({{< relref "transformation3d.md" >}}) |
|a13 | [Double]({{< relref "double.md" >}}) | 1 |  | [Transformation3D]({{< relref "transformation3d.md" >}}) |
|a21 | [Double]({{< relref "double.md" >}}) | 1 |  | [Transformation3D]({{< relref "transformation3d.md" >}}) |
|a22 | [Double]({{< relref "double.md" >}}) | 1 |  | [Transformation3D]({{< relref "transformation3d.md" >}}) |
|a23 | [Double]({{< relref "double.md" >}}) | 1 |  | [Transformation3D]({{< relref "transformation3d.md" >}}) |
|a31 | [Double]({{< relref "double.md" >}}) | 1 |  | [Transformation3D]({{< relref "transformation3d.md" >}}) |
|a32 | [Double]({{< relref "double.md" >}}) | 1 |  | [Transformation3D]({{< relref "transformation3d.md" >}}) |
|a33 | [Double]({{< relref "double.md" >}}) | 1 |  | [Transformation3D]({{< relref "transformation3d.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [CartesianPoint3D]({{< relref "cartesianpoint3d.md" >}}) | origin | 1 | 0..* | Specifies the coordinates of the translation.  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [OccurrenceOrUsageViewItem3D]({{< relref "occurrenceorusageviewitem3d.md" >}}) | 0..1 | orientation | 0..1 | Specifies the orientation of the view item.  |
| [BuildingBlockPositioning3D]({{< relref "buildingblockpositioning3d.md" >}}) | 0..1 | positioning | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies the positioning of the building block in the harness geometry.      </p>    </body> </html>  |
