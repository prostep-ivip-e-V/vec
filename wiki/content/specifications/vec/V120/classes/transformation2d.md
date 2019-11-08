---
title: Transformation2D
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
| [CartesianPoint2D]({{< relref "cartesianpoint2d.md" >}}) | origin | 1 | 0..* | References the CartesianPoint2D that is the origin of the Transformation2D.   |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [OccurrenceOrUsageViewItem2D]({{< relref "occurrenceorusageviewitem2d.md" >}}) | 1 | orientation | 0..1 | Specifies the orientation of the view item.  |
