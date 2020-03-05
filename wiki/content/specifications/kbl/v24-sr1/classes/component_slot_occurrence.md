---
title: Component_slot_occurrence
toc: false
type: specs
date: "2015-03-20"
draft: false
specification: KBL
version: 2.4.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - Component_slot_occurrence
menu_name: kbl-2.4.sr1
---


## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 3_Part_structure |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Mounting_element]({{< relref "mounting_element.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Id | [String]({{< relref "string.md" >}}) | 0..1 |  | [Component_slot_occurrence]({{< relref "component_slot_occurrence.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Component_slot]({{< relref "component_slot.md" >}}) | Part | 1 | 0..* |  |
| [Component_cavity_occurrence]({{< relref "component_cavity_occurrence.md" >}}) | Component_cavities | 0..* | 1 |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Component_box_occurrence]({{< relref "component_box_occurrence.md" >}}) | 1 | Component_slots | 0..* |  |
