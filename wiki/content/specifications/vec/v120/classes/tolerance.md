﻿---
title: Tolerance
toc: false
type: specs
date: "2020-05-11"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - Tolerance
menu_name: vec-1.2.0
---
<p>Enables the specification of value ranges which can be tolerated. </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | physical_information |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|lowerBoundary | [Double]({{< relref "double.md" >}}) | 1 | <p>Specifies the lower boundary for the tolerance. </p> | [Tolerance]({{< relref "tolerance.md" >}}) |
|upperBoundary | [Double]({{< relref "double.md" >}}) | 1 | <p>Specifies the upper boundary for the tolerance. </p> | [Tolerance]({{< relref "tolerance.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | tolerance | 0..1 | Specifies the tolerance for the dimension. |
| [Dimension]({{< relref "dimension.md" >}}) | 0..1 | tolerance | 0..1 |  |
| [DefaultDimension]({{< relref "defaultdimension.md" >}}) | 0..1 | toleranceIndication | 1 |  |
