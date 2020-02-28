---
title: Changed_element
toc: false
type: specs
date: "2018-07-04"
draft: false
specification: KBL
version: 2.5
documentType: "Recommendation"
elementType: Class
classes:
  - Changed_element
menu_name: kbl-2.5
---


## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 6_Foundation |
| **Applied Stereotype**  | [Selector]({{< relref "selector.md" >}})<br/>  |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** | [Accessory_occurrence]({{< relref "accessory_occurrence.md" >}}), [Assembly_part_occurrence]({{< relref "assembly_part_occurrence.md" >}}), [Cavity_plug_occurrence]({{< relref "cavity_plug_occurrence.md" >}}), [Cavity_seal_occurrence]({{< relref "cavity_seal_occurrence.md" >}}), [Co_pack_occurrence]({{< relref "co_pack_occurrence.md" >}}), [Component_box_occurrence]({{< relref "component_box_occurrence.md" >}}), [Component_occurrence]({{< relref "component_occurrence.md" >}}), [Connection]({{< relref "connection.md" >}}), [Connector_occurrence]({{< relref "connector_occurrence.md" >}}), [Contact_point]({{< relref "contact_point.md" >}}), [Dimension_specification]({{< relref "dimension_specification.md" >}}), [Fixing_assignment]({{< relref "fixing_assignment.md" >}}), [Fixing_occurrence]({{< relref "fixing_occurrence.md" >}}), [General_wire_occurrence]({{< relref "general_wire_occurrence.md" >}}), [Module_configuration]({{< relref "module_configuration.md" >}}), [Node]({{< relref "node.md" >}}), [Protection_area]({{< relref "protection_area.md" >}}), [Routing]({{< relref "routing.md" >}}), [Schematic_connection]({{< relref "schematic_connection.md" >}}), [Segment]({{< relref "segment.md" >}}), [Special_terminal_occurrence]({{< relref "special_terminal_occurrence.md" >}}), [Terminal_occurrence]({{< relref "terminal_occurrence.md" >}}), [Wire_protection_occurrence]({{< relref "wire_protection_occurrence.md" >}}), [Wiring_group]({{< relref "wiring_group.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Change_description]({{< relref "change_description.md" >}}) | 1 | Changed_elements | 0..* |  |
