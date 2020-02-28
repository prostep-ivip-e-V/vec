---
title: Reference_element
toc: false
type: specs
date: "2015-03-16"
draft: false
specification: KBL
version: 2.4
documentType: "Recommendation"
elementType: Class
classes:
  - Reference_element
menu_name: kbl-2.4
---

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 3_Part_structure |
| **Applied Stereotype**  | [Selector]({{< relref "selector.md" >}})<br/>  |
| **Base Classifier**     |   |
| **Is Abstract**         | true |
| **Derived Classifiers** | [Accessory_occurrence]({{< relref "accessory_occurrence.md" >}}), [Assembly_part_occurrence]({{< relref "assembly_part_occurrence.md" >}}), [Cavity_plug_occurrence]({{< relref "cavity_plug_occurrence.md" >}}), [Cavity_seal_occurrence]({{< relref "cavity_seal_occurrence.md" >}}), [Co_pack_occurrence]({{< relref "co_pack_occurrence.md" >}}), [Component_box_occurrence]({{< relref "component_box_occurrence.md" >}}), [Component_occurrence]({{< relref "component_occurrence.md" >}}), [Connector_occurrence]({{< relref "connector_occurrence.md" >}}), [Fixing_occurrence]({{< relref "fixing_occurrence.md" >}}), [General_wire_occurrence]({{< relref "general_wire_occurrence.md" >}}), [Special_terminal_occurrence]({{< relref "special_terminal_occurrence.md" >}}), [Terminal_occurrence]({{< relref "terminal_occurrence.md" >}}), [Wire_protection_occurrence]({{< relref "wire_protection_occurrence.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Component_box_occurrence]({{< relref "component_box_occurrence.md" >}}) | 0..* | Reference_element | 0..* |  |
| [Accessory_occurrence]({{< relref "accessory_occurrence.md" >}}) | 0..* | Reference_element | 0..* |  |
| [Connector_occurrence]({{< relref "connector_occurrence.md" >}}) | 0..* | Reference_element | 0..* |  |
