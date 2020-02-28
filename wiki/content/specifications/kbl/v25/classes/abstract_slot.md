---
title: Abstract_slot
toc: false
type: specs
date: "2018-07-04"
draft: false
specification: KBL
version: 2.5
documentType: "Recommendation"
elementType: Class
classes:
  - Abstract_slot
menu_name: kbl-2.5
---
An abstract slot, which is either a Slot or a Modular_slot.
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 2_Parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | true |
| **Derived Classifiers** | [Modular_slot]({{< relref "modular_slot.md" >}}), [Slot]({{< relref "slot.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Component_box_connector]({{< relref "component_box_connector.md" >}}) | 1 | Integrated_slots | 0..* |  |
