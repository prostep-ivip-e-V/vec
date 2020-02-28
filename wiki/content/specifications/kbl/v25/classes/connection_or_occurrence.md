---
title: Connection_or_occurrence
toc: false
type: specs
date: "2018-07-04"
draft: false
specification: KBL
version: 2.5
documentType: "Recommendation"
elementType: Class
classes:
  - Connection_or_occurrence
menu_name: kbl-2.5
---
<p>A Connection_or_occurrence is an object that is controlled by a Module or a Harness.</p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 1_Harness |
| **Applied Stereotype**  | [Selector]({{< relref "selector.md" >}})<br/>  |
| **Base Classifier**     |   |
| **Is Abstract**         | true |
| **Derived Classifiers** | [Accessory_occurrence]({{< relref "accessory_occurrence.md" >}}), [Assembly_part_occurrence]({{< relref "assembly_part_occurrence.md" >}}), [Cavity_plug_occurrence]({{< relref "cavity_plug_occurrence.md" >}}), [Cavity_seal_occurrence]({{< relref "cavity_seal_occurrence.md" >}}), [Co_pack_occurrence]({{< relref "co_pack_occurrence.md" >}}), [Component_box_occurrence]({{< relref "component_box_occurrence.md" >}}), [Component_occurrence]({{< relref "component_occurrence.md" >}}), [Connection]({{< relref "connection.md" >}}), [Connector_occurrence]({{< relref "connector_occurrence.md" >}}), [Fixing_occurrence]({{< relref "fixing_occurrence.md" >}}), [General_wire_occurrence]({{< relref "general_wire_occurrence.md" >}}), [Special_terminal_occurrence]({{< relref "special_terminal_occurrence.md" >}}), [Terminal_occurrence]({{< relref "terminal_occurrence.md" >}}), [Wire_protection_occurrence]({{< relref "wire_protection_occurrence.md" >}}), [Wiring_group]({{< relref "wiring_group.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Assembly_part]({{< relref "assembly_part.md" >}}) | 1 | Components | 0..* |  |
| [Harness]({{< relref "harness.md" >}}) | 1 | Components | 0..* |  |
| [Module_configuration]({{< relref "module_configuration.md" >}}) | 0..* | Controlled_components | 0..* |  |
