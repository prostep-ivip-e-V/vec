---
title: ValueWithUnit
toc: false
type: specs
date: "2020-02-01"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - ValueWithUnit
menu_name: vec-1.2.0
---
<p>Abstract class either for a single numerical measure or a range of numerical measures with upper, lower, or upper and lower bounds. </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | physical_information |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | true |
| **Derived Classifiers** | [NumericalValue]({{< relref "numericalvalue.md" >}}), [ValueRange]({{< relref "valuerange.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Unit]({{< relref "unit.md" >}}) | unitComponent | 1 | 0..* | References the unit of the value. |
