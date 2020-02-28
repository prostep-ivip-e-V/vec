---
title: Tolerance
toc: false
type: specs
date: "2005-11-01"
draft: false
specification: KBL
version: 2.3.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - Tolerance
menu_name: kbl-2.3.sr1
---
<p>A Tolerance is the specification of the allowable range for a dimension.</p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 5_Topology |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Lower_limit | [Numerical_value]({{< relref "numerical_value.md" >}}) | 0..1 | <p>The lower_limit specifies the minimum allowed value.</p> | [Tolerance]({{< relref "tolerance.md" >}}) |
|Upper_limit | [Numerical_value]({{< relref "numerical_value.md" >}}) | 0..1 | <p>The upper_limit specifies the maximum allowed value.</p> | [Tolerance]({{< relref "tolerance.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Dimension_specification]({{< relref "dimension_specification.md" >}}) | 1 | Tolerance_indication | 0..1 |  |
