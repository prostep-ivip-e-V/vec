---
title: Mounting_element
toc: false
type: specs
date: "2015-03-16"
draft: false
specification: KBL
version: 2.4
documentType: "Recommendation"
elementType: Class
classes:
  - Mounting_element
menu_name: kbl-2.4
---
<p>A Mounting_element is an object which is associated with a Component_occurrence.</p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 3_Part_structure |
| **Applied Stereotype**  | [Selector]({{< relref "selector.md" >}})<br/>  |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** | [Cavity_occurrence]({{< relref "cavity_occurrence.md" >}}), [Component_cavity_occurrence]({{< relref "component_cavity_occurrence.md" >}}), [Component_slot_occurrence]({{< relref "component_slot_occurrence.md" >}}), [Connector_occurrence]({{< relref "connector_occurrence.md" >}}), [Slot_occurrence]({{< relref "slot_occurrence.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Component_occurrence]({{< relref "component_occurrence.md" >}}) | 0..* | Mounting | 1..* |  |
