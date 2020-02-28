---
title: Component_slot
toc: false
type: specs
date: "2018-07-04"
draft: false
specification: KBL
version: 2.5
documentType: "Recommendation"
elementType: Class
classes:
  - Component_slot
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
|Id | [String]({{< relref "string.md" >}}) | 1 |  | [Component_slot]({{< relref "component_slot.md" >}}) |
|Type | [String]({{< relref "string.md" >}}) | 0..1 |  | [Component_slot]({{< relref "component_slot.md" >}}) |
|Valid_fuse_types | [Fuse_type]({{< relref "fuse_type.md" >}}) | 0..* |  | [Component_slot]({{< relref "component_slot.md" >}}) |
|Min_current | [Numerical_value]({{< relref "numerical_value.md" >}}) | 0..1 | <p> Defines the minimum current that is valid in this component slot.      </p> | [Component_slot]({{< relref "component_slot.md" >}}) |
|Max_current | [Numerical_value]({{< relref "numerical_value.md" >}}) | 0..1 | <p> Defines the maximum current that is valid in this component slot.      </p> | [Component_slot]({{< relref "component_slot.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Component_cavity]({{< relref "component_cavity.md" >}}) | Component_cavities | 0..* | 1 |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Component_box]({{< relref "component_box.md" >}}) | 1 | Component_slots | 0..* |  |
| [Component_slot_occurrence]({{< relref "component_slot_occurrence.md" >}}) | 0..* | Part | 1 |  |
