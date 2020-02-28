---
title: Assembly_part_occurrence
toc: false
type: specs
date: "2015-03-20"
draft: false
specification: KBL
version: 2.4.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - Assembly_part_occurrence
menu_name: kbl-2.4.sr1
---
<p>An Assembly_part_occurrence is the occurrence of an Assembly_part in a module part list.</p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 3_Part_structure |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Changed_element]({{< relref "changed_element.md" >}})<br/> [Connection_or_occurrence]({{< relref "connection_or_occurrence.md" >}})<br/> [Located_component]({{< relref "located_component.md" >}})<br/> [Reference_element]({{< relref "reference_element.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Id | [String]({{< relref "string.md" >}}) | 1 | <p>The id specifies the identifier of the Assembly_part_occurrence.</p> | [Assembly_part_occurrence]({{< relref "assembly_part_occurrence.md" >}}) |
|Alias_id | [Alias_identification]({{< relref "alias_identification.md" >}}) | 0..* | <p>The alias_id specifies additional identifiers for the Assembly_part _occurrence.</p> | [Assembly_part_occurrence]({{< relref "assembly_part_occurrence.md" >}}) |
|Description | [String]({{< relref "string.md" >}}) | 0..1 | <p>The description specifies additional information about the ob ject.</p> | [Assembly_part_occurrence]({{< relref "assembly_part_occurrence.md" >}}) |
|Localized_description | [Localized_string]({{< relref "localized_string.md" >}}) | 0..* | <p> The description specifies additional information about the object. The Localized_description provides the possibility to define descriptions for different language codes.       </p> | [Assembly_part_occurrence]({{< relref "assembly_part_occurrence.md" >}}) |
|Placement | [Transformation]({{< relref "transformation.md" >}}) | 0..1 | <p>The placement specifies the transformation information, which is used to locate and orient the occurrence in the car coordinate system. For further information see [CESAK].</p> | [Assembly_part_occurrence]({{< relref "assembly_part_occurrence.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Installation_instruction]({{< relref "installation_instruction.md" >}}) | Installation_information | 0..* | 1 |  |
| [Assembly_part]({{< relref "assembly_part.md" >}}) | Part | 1 | 1..* |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Specified_co_pack_occurrence]({{< relref "specified_co_pack_occurrence.md" >}}) | 0..* | Related_assembly | 1 |  |
| [Specified_connector_occurrence]({{< relref "specified_connector_occurrence.md" >}}) | 0..* | Related_assembly | 1 |  |
| [Specified_component_box_occurrence]({{< relref "specified_component_box_occurrence.md" >}}) | 0..* | Related_assembly | 1 |  |
| [Specified_special_terminal_occurrence]({{< relref "specified_special_terminal_occurrence.md" >}}) | 0..* | Related_assembly | 1 |  |
| [Specified_cavity_plug_occurrence]({{< relref "specified_cavity_plug_occurrence.md" >}}) | 0..* | Related_assembly | 1 |  |
| [Specified_cavity_seal_occurrence]({{< relref "specified_cavity_seal_occurrence.md" >}}) | 0..* | Related_assembly | 1 |  |
| [Specified_special_wire_occurrence]({{< relref "specified_special_wire_occurrence.md" >}}) | 0..* | Related_assembly | 1 |  |
| [Specified_wire_protection_occurrence]({{< relref "specified_wire_protection_occurrence.md" >}}) | 0..* | Related_assembly | 1 |  |
| [Specified_wire_occurrence]({{< relref "specified_wire_occurrence.md" >}}) | 0..* | Related_assembly | 1 |  |
| [Specified_component_occurrence]({{< relref "specified_component_occurrence.md" >}}) | 0..* | Related_assembly | 1 |  |
| [Specified_accessory_occurrence]({{< relref "specified_accessory_occurrence.md" >}}) | 0..* | Related_assembly | 1 |  |
| [Specified_fixing_occurrence]({{< relref "specified_fixing_occurrence.md" >}}) | 0..* | Related_assembly | 1 |  |
| [Specified_terminal_occurrence]({{< relref "specified_terminal_occurrence.md" >}}) | 0..* | Related_assembly | 1 |  |
