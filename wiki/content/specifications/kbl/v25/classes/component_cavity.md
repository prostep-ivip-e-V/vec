---
title: Component_cavity
toc: false
type: specs
date: "2018-07-04"
draft: false
specification: KBL
version: 2.5
documentType: "Recommendation"
elementType: Class
classes:
  - Component_cavity
menu_name: kbl-2.5
---
A slot in the Component_box where a Component can be mounted.

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 2_Parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Cavity_number | [String]({{< relref "string.md" >}}) | 1 |  | [Component_cavity]({{< relref "component_cavity.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Component_slot]({{< relref "component_slot.md" >}}) | 1 | Component_cavities | 0..* |  |
| [Component_box_connection]({{< relref "component_box_connection.md" >}}) | 0..* | Component_cavities | 0..* |  |
| [Component_cavity_occurrence]({{< relref "component_cavity_occurrence.md" >}}) | 0..* | Part | 1 |  |
