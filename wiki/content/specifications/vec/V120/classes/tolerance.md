---
title: Tolerance
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html><body><p>Enables the specification of value ranges which can be tolerated. </p></body></html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | physical_information |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Default Dimensions]({{< relref "../topology-and-geometry/default-dimensions" >}})<br/> [Placement and Dimensions]({{< relref "../topology-and-geometry/placement-and-dimensions" >}})<br/> [Unit System]({{< relref "../key-concepts/unit-system" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|lowerBoundary | [Double]({{< relref "double.md" >}}) | 1 | <html><body><p>Specifies the lower boundary for the tolerance. </p></body></html> | [Tolerance]({{< relref "tolerance.md" >}}) |
|upperBoundary | [Double]({{< relref "double.md" >}}) | 1 | <html><body><p>Specifies the upper boundary for the tolerance. </p></body></html> | [Tolerance]({{< relref "tolerance.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | tolerance | 0..1 | Specifies the tolerance for the dimension.   |
| [Dimension]({{< relref "dimension.md" >}}) | 0..1 | tolerance | 0..1 |  |
| [DefaultDimension]({{< relref "defaultdimension.md" >}}) | 0..1 | toleranceIndication | 1 |  |
