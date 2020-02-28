---
title: Abstract_slot_occurrence
toc: false
type: specs
date: "2015-03-20"
draft: false
specification: KBL
version: 2.4.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - Abstract_slot_occurrence
menu_name: kbl-2.4.sr1
---

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 2_Parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** | [Modular_slot_occurrence]({{< relref "modular_slot_occurrence.md" >}}), [Slot_occurrence]({{< relref "slot_occurrence.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Component_box_connector_occurrence]({{< relref "component_box_connector_occurrence.md" >}}) | 1 | Slots | 0..* |  |
