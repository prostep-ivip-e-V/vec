---
title: Located_component
toc: false
type: specs
date: "2015-03-20"
draft: false
specification: KBL
version: 2.4.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - Located_component
menu_name: kbl-2.4.sr1
---
<p>Positionierbare Komponenten der KBL: z.B. Connector_occurrence, Accessory_occurrence, Fixing_occurrence, ... A Located_component is a component which can get a position in the topology by a node.</p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 5_Topology |
| **Applied Stereotype**  | [Selector]({{< relref "selector.md" >}})<br/>  |
| **Base Classifier**     | [Placed_element]({{< relref "placed_element.md" >}})<br/>  |
| **Is Abstract**         | true |
| **Derived Classifiers** | [Accessory_occurrence]({{< relref "accessory_occurrence.md" >}}), [Assembly_part_occurrence]({{< relref "assembly_part_occurrence.md" >}}), [Component_box_connector_occurrence]({{< relref "component_box_connector_occurrence.md" >}}), [Connector_occurrence]({{< relref "connector_occurrence.md" >}}), [Fixing_occurrence]({{< relref "fixing_occurrence.md" >}}), [Special_terminal_occurrence]({{< relref "special_terminal_occurrence.md" >}}), [Wire_protection_occurrence]({{< relref "wire_protection_occurrence.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Node]({{< relref "node.md" >}}) | 0..* | referenced_components | 0..* |  |
