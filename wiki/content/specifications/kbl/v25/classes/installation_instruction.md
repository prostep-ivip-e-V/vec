---
title: Installation_instruction
toc: false
type: specs
date: "2018-07-04"
draft: false
specification: KBL
version: 2.5
documentType: "Recommendation"
elementType: Class
classes:
  - Installation_instruction
menu_name: kbl-2.5
---
<p>An Installation_instruction is the description of the methods that can be used to install a Part.</p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 6_Foundation |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Instruction_type | [String]({{< relref "string.md" >}}) | 1 |  | [Installation_instruction]({{< relref "installation_instruction.md" >}}) |
|Instruction_value | [String]({{< relref "string.md" >}}) | 1 | <p>The instruction_value specifies the value for the kind of the Installation_instruction defined by instruction_type.</p> | [Installation_instruction]({{< relref "installation_instruction.md" >}}) |
|classification | [Installation_instruction]({{< relref "installation_instruction.md" >}}) | 0..1 | <p> The classification of a instruction defines how Instruction_type and Instruction_value shall be interpreted (See Instruction_classification). If this attribute is not defined, the default value 'custom property' shall be assumed.      </p> | [Installation_instruction]({{< relref "installation_instruction.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [External_reference]({{< relref "external_reference.md" >}}) | External_reference | 0..1 | 0..* |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Connector_occurrence]({{< relref "connector_occurrence.md" >}}) | 1 | Installation_information | 0..* |  |
| [Component_box_occurrence]({{< relref "component_box_occurrence.md" >}}) | 1 | Installation_information | 0..* |  |
| [Core_occurrence]({{< relref "core_occurrence.md" >}}) | 0..1 | Installation_information | 0..* |  |
| [Wire_protection_occurrence]({{< relref "wire_protection_occurrence.md" >}}) | 1 | Installation_information | 0..* |  |
| [Connection]({{< relref "connection.md" >}}) | 1 | Installation_information | 0..* |  |
| [Accessory_occurrence]({{< relref "accessory_occurrence.md" >}}) | 1 | Installation_information | 0..* |  |
| [Terminal_occurrence]({{< relref "terminal_occurrence.md" >}}) | 1 | Installation_information | 0..* |  |
| [Fixing_occurrence]({{< relref "fixing_occurrence.md" >}}) | 1 | Installation_information | 0..* |  |
| [Special_terminal_occurrence]({{< relref "special_terminal_occurrence.md" >}}) | 1 | Installation_information | 0..* |  |
| [Component_occurrence]({{< relref "component_occurrence.md" >}}) | 1 | Installation_information | 0..* |  |
| [Assembly_part_occurrence]({{< relref "assembly_part_occurrence.md" >}}) | 1 | Installation_information | 0..* |  |
| [General_wire_occurrence]({{< relref "general_wire_occurrence.md" >}}) | 1 | Installation_information | 0..* |  |
| [Wiring_group]({{< relref "wiring_group.md" >}}) | 1 | Installation_information | 0..* |  |
| [Co_pack_occurrence]({{< relref "co_pack_occurrence.md" >}}) | 1 | Installation_information | 0..* |  |
| [Cavity_plug_occurrence]({{< relref "cavity_plug_occurrence.md" >}}) | 1 | Installation_information | 0..* |  |
| [Cavity_seal_occurrence]({{< relref "cavity_seal_occurrence.md" >}}) | 1 | Installation_information | 0..* |  |
