---
title: Numerical_value
toc: false
type: specs
date: "2018-07-04"
draft: false
specification: KBL
version: 2.5
documentType: "Recommendation"
elementType: Class
classes:
  - Numerical_value
menu_name: kbl-2.5
---
<p>A Numerical_value is a quantity expressed with a numerical value and a unit.</p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 6_Foundation |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Value_with_unit]({{< relref "value_with_unit.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Value_component | [Double]({{< relref "double.md" >}}) | 1 | <p>The value_component specifies the quantity of the Numerical_value.</p> | [Numerical_value]({{< relref "numerical_value.md" >}}) |

