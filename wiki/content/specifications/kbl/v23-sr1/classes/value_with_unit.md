---
title: Value_with_unit
toc: false
type: specs
date: "2005-11-01"
draft: false
specification: KBL
version: 2.3.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - Value_with_unit
menu_name: kbl-2.3.sr1
---
<p>A Value_with_unit is either a single numerical measure, or a range of numerical measures with upper, lower, or upper and lower bounds.</p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 6_Foundation |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | true |
| **Derived Classifiers** | [Numerical_value]({{< relref "numerical_value.md" >}}), [Value_range]({{< relref "value_range.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Unit]({{< relref "unit.md" >}}) | Unit_component | 1 | 0..* |  |
