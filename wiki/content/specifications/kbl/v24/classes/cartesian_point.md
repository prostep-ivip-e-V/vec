---
title: Cartesian_point
toc: false
type: specs
date: "2015-03-16"
draft: false
specification: KBL
version: 2.4
documentType: "Recommendation"
elementType: Class
classes:
  - Cartesian_point
menu_name: kbl-2.4
---
<p>A Cartesian_point is a point that is defined by its coordinates in a rectangular Cartesian coordinate system.</p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 6_Foundation |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Coordinates | [Double]({{< relref "double.md" >}}) | 2..3 | <p>The coordinates specify the coordinates of the Cartesian_point. The third coordinate will not exist in the case of a two-dimensional point.</p> | [Cartesian_point]({{< relref "cartesian_point.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [KBL_container]({{< relref "kbl_container.md" >}}) | 1 | Cartesian_point | 0..* |  |
| [Node]({{< relref "node.md" >}}) | 0..* | Cartesian_point | 1 |  |
| [Transformation]({{< relref "transformation.md" >}}) | 0..* | Cartesian_point | 1 |  |
| [B_spline_curve]({{< relref "b_spline_curve.md" >}}) | 0..* | Control_points | 2..* |  |
