---
title: Modular_slot_occurrence
toc: false
type: specs
date: "2015-03-20"
draft: false
specification: KBL
version: 2.4.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - Modular_slot_occurrence
menu_name: kbl-2.4.sr1
---

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 2_Parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Abstract_slot_occurrence]({{< relref "abstract_slot_occurrence.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Component_box_occurrence]({{< relref "component_box_occurrence.md" >}}) | Used_insets | 0..* | 0..* |  |
| [Modular_slot]({{< relref "modular_slot.md" >}}) | Part | 1 | 0..* |  |
