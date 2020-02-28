---
title: Dimension_specification
toc: false
type: specs
date: "2005-11-01"
draft: false
specification: KBL
version: 2.3.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - Dimension_specification
menu_name: kbl-2.3.sr1
---
<p>A Dimension_specification is the definition of the distance between two elements.</p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 5_Topology |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Placed_element]({{< relref "placed_element.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Tolerance]({{< relref "tolerance.md" >}}) | Tolerance_indication | 0..1 | 1 |  |
| [Placed_element]({{< relref "placed_element.md" >}}) | target | 1 | 0..* |  |
| [Placed_element]({{< relref "placed_element.md" >}}) | origin | 1 | 0..* |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [KBL_container]({{< relref "kbl_container.md" >}}) | 1 | Dimension_specification | 0..* |  |
