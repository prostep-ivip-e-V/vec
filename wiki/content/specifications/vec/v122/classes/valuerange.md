﻿---
title: ValueRange
toc: false
type: specs
date: "2022-01-18"
draft: false
specification: VEC
version: 1.2.2
documentType: "Recommendation"
elementType: Class
classes:
  - ValueRange
menu_name: vec-1.2.2
---
<p>A pair of numerical values representing a value range. </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | physical_information |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ValueWithUnit]({{< relref "valuewithunit.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|minimum | [Double]({{< relref "double.md" >}}) | 1 | <p>Lower bound of the value range. </p> | [ValueRange]({{< relref "valuerange.md" >}}) |
|maximum | [Double]({{< relref "double.md" >}}) | 1 | <p>Upper bound of the value range. </p> | [ValueRange]({{< relref "valuerange.md" >}}) |

