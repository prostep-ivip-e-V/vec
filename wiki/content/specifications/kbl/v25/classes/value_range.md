---
title: Value_range
toc: false
type: specs
date: "2018-07-04"
draft: false
specification: KBL
version: 2.5
documentType: "Recommendation"
elementType: Class
classes:
  - Value_range
menu_name: kbl-2.5
---
<p>A Value_range is a pair of numerical values representing the range in which the value shall lie.</p>
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
|Minimum | [Double]({{< relref "double.md" >}}) | 1 | <p>The minimum specifies the minimum acceptable value that is constrained by the Value_range.</p> | [Value_range]({{< relref "value_range.md" >}}) |
|Maximum | [Double]({{< relref "double.md" >}}) | 1 | <p>The maximum specifies the maximum acceptable value that is constrained by the Value_range.</p> | [Value_range]({{< relref "value_range.md" >}}) |

