---
title: Transformation3D
toc: false
type: specs
date: "2021-10-18"
draft: false
specification: VEC
version: 1.2.1
documentType: "Recommendation"
elementType: Class
classes:
  - Transformation3D
menu_name: vec-1.2.1
---
<p>A Transformation is a geometric transformation and specifies a transformation matrix.  </p>

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
| [CartesianPoint3D]({{< relref "cartesianpoint3d.md" >}}) | origin | 1 | 0..* | Specifies the coordinates of the translation. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [LocalGeometrySpecification]({{< relref "localgeometryspecification.md" >}}) | 0..1 | boundingBoxPositioning | 0..1 | <p> The transformation that defines the positioning of the bounding box in coordinate system of the component.      </p> |
| [OccurrenceOrUsageViewItem3D]({{< relref "occurrenceorusageviewitem3d.md" >}}) | 0..1 | orientation | 0..1 | Specifies the orientation of the view item. |
| [BuildingBlockPositioning3D]({{< relref "buildingblockpositioning3d.md" >}}) | 0..1 | positioning | 0..1 | <p> Specifies the positioning of the building block in the harness geometry.      </p> |
