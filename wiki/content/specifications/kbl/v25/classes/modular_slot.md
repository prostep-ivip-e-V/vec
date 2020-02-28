---
title: Modular_slot
toc: false
type: specs
date: "2018-07-04"
draft: false
specification: KBL
version: 2.5
documentType: "Recommendation"
elementType: Class
classes:
  - Modular_slot
menu_name: kbl-2.5
---
<p> A Modular_slot can hold Component_boxes as inserts in order to describe modular component boxes recursively.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 2_Parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Abstract_slot]({{< relref "abstract_slot.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Id | [String]({{< relref "string.md" >}}) | 0..1 |  | [Modular_slot]({{< relref "modular_slot.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Component_box]({{< relref "component_box.md" >}}) | Allowed_inserts | 0..* | 0..* |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Modular_slot_occurrence]({{< relref "modular_slot_occurrence.md" >}}) | 0..* | Part | 1 |  |
