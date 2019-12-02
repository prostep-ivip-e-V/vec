---
title: ValueWithUnit
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html><body><p>Abstract class either for a single numerical measure or a range of numerical measures with upper, lower, or upper and lower bounds. </p></body></html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | physical_information |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | true |
| **Derived Classifiers** | [NumericalValue]({{< relref "numericalvalue.md" >}}), [ValueRange]({{< relref "valuerange.md" >}}) |
| **Usage in Diagrams**   | [Unit System]({{< relref "../key-concepts/unit-system" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Unit]({{< relref "unit.md" >}}) | unitComponent | 1 | 0..* | References the unit of the value.   |
