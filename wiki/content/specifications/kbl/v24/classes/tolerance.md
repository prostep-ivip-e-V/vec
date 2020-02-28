---
title: Tolerance
toc: false
type: specs
date: "2015-03-16"
draft: false
specification: KBL
version: 2.4
documentType: "Recommendation"
elementType: Class
classes:
  - Tolerance
menu_name: kbl-2.4
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
| [Default_dimension_specification]({{< relref "default_dimension_specification.md" >}}) | 1 | Tolerance_indication | 0..1 | <p> The Tolerance_indication, which defines the values of the tolerance (e.g. +-5mm).      </p> |
