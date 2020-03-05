---
title: Component_box_occurrence
toc: false
type: specs
date: "2015-03-16"
draft: false
specification: KBL
version: 2.4
documentType: "Recommendation"
elementType: Class
classes:
  - Component_box_occurrence
menu_name: kbl-2.4
---


## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 3_Part_structure |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Changed_element]({{< relref "changed_element.md" >}})<br/> [Connection_or_occurrence]({{< relref "connection_or_occurrence.md" >}})<br/> [Reference_element]({{< relref "reference_element.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** | [Specified_component_box_occurrence]({{< relref "specified_component_box_occurrence.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Id | [String]({{< relref "string.md" >}}) | 1 |  | [Component_box_occurrence]({{< relref "component_box_occurrence.md" >}}) |
|Alias_id | [Alias_identification]({{< relref "alias_identification.md" >}}) | 0..* |  | [Component_box_occurrence]({{< relref "component_box_occurrence.md" >}}) |
|Description | [String]({{< relref "string.md" >}}) | 0..1 |  | [Component_box_occurrence]({{< relref "component_box_occurrence.md" >}}) |
|Localized_description | [Localized_string]({{< relref "localized_string.md" >}}) | 0..* |  | [Component_box_occurrence]({{< relref "component_box_occurrence.md" >}}) |
|Placement | [Transformation]({{< relref "transformation.md" >}}) | 0..1 |  | [Component_box_occurrence]({{< relref "component_box_occurrence.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Installation_instruction]({{< relref "installation_instruction.md" >}}) | Installation_information | 0..* | 1 |  |
| [Component_box_connector_occurrence]({{< relref "component_box_connector_occurrence.md" >}}) | Component_box_connectors | 0..* | 1 |  |
| [Contact_point]({{< relref "contact_point.md" >}}) | Contact_points | 0..* | 1 |  |
| [Component_box]({{< relref "component_box.md" >}}) | Part | 1 | 0..* |  |
| [Component_slot_occurrence]({{< relref "component_slot_occurrence.md" >}}) | Component_slots | 0..* | 1 |  |
| [Reference_element]({{< relref "reference_element.md" >}}) | Reference_element | 0..* | 0..* |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Specified_component_box_occurrence]({{< relref "specified_component_box_occurrence.md" >}}) | 0..* | Related_occurrence | 1 |  |
| [Modular_slot_occurrence]({{< relref "modular_slot_occurrence.md" >}}) | 0..* | Used_insets | 0..* |  |
