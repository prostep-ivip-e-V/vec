---
title: Transformation2D
toc: false
type: specs
date: "2022-03-09"
draft: false
specification: VEC
version: 2.0.0
documentType: "Recommendation"
elementType: Class
classes:
  - Transformation2D
menu_name: vec-2.0.0
---
<p>A Transformation is a geometric transformation and specifies a transformation matrix.  </p>

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
|a11 | [Double]({{< relref "double.md" >}}) | 1 |  | [Transformation2D]({{< relref "transformation2d.md" >}}) |
|a12 | [Double]({{< relref "double.md" >}}) | 1 |  | [Transformation2D]({{< relref "transformation2d.md" >}}) |
|a21 | [Double]({{< relref "double.md" >}}) | 1 |  | [Transformation2D]({{< relref "transformation2d.md" >}}) |
|a22 | [Double]({{< relref "double.md" >}}) | 1 |  | [Transformation2D]({{< relref "transformation2d.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [CartesianPoint2D]({{< relref "cartesianpoint2d.md" >}}) | origin | 1 | 0..* | References the CartesianPoint2D that is the origin of the Transformation2D. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ConnectionNodeViewItem]({{< relref "connectionnodeviewitem.md" >}}) | 1 | orientation | 0..1 | Specifies the position /&#160;placement of the <i>ConnectionNodeViewItem</i> within the layout. |
| [NetworkNodeViewItem]({{< relref "networknodeviewitem.md" >}}) | 1 | orientation | 0..1 | Specifies the position /&#160;placement of the <i>NetworkNodeViewItem</i> within the layout. |
| [OccurrenceOrUsageViewItem2D]({{< relref "occurrenceorusageviewitem2d.md" >}}) | 1 | orientation | 0..1 | Specifies the orientation of the view item. |
