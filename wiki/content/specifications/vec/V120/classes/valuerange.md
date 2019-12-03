---
title: ValueRange
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html><body><p>A pair of numerical values representing a value range. </p></body></html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | physical_information |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ValueWithUnit]({{< relref "valuewithunit.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Unit System]({{< relref "../key-concepts/unit-system" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|minimum | [Double]({{< relref "double.md" >}}) | 1 | <html><body><p>Lower bound of the value range. </p></body></html> | [ValueRange]({{< relref "valuerange.md" >}}) |
|maximum | [Double]({{< relref "double.md" >}}) | 1 | <html><body><p>Upper bound of the value range. </p></body></html> | [ValueRange]({{< relref "valuerange.md" >}}) |

