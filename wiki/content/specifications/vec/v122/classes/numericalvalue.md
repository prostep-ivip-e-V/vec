---
title: NumericalValue
toc: false
type: specs
date: "2022-01-18"
draft: false
specification: VEC
version: 1.2.2
documentType: "Recommendation"
elementType: Class
classes:
  - NumericalValue
menu_name: vec-1.2.2
---
<p>A quantity expressed with a numerical value and a unit. </p>

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
|valueComponent | [Double]({{< relref "double.md" >}}) | 1 | <p>Specifies the value of the numerical value. </p> | [NumericalValue]({{< relref "numericalvalue.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Tolerance]({{< relref "tolerance.md" >}}) | tolerance | 0..1 | 0..1 | Specifies the tolerance for the dimension. |
