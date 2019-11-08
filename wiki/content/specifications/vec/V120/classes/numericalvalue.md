---
title: NumericalValue
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html><body><p>A quantity expressed with a numerical value and a unit. </p></body></html>
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
|valueComponent | [Double]({{< relref "double.md" >}}) | 1 | <html><body><p>Specifies the value of the numerical value. </p></body></html> | [NumericalValue]({{< relref "numericalvalue.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Tolerance]({{< relref "tolerance.md" >}}) | tolerance | 0..1 | 0..1 | Specifies the tolerance for the dimension.   |
