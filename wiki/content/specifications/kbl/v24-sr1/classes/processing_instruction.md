---
title: Processing_instruction
toc: false
type: specs
date: "2015-03-20"
draft: false
specification: KBL
version: 2.4.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - Processing_instruction
menu_name: kbl-2.4.sr1
---
<p>A Processing_instruction is the description of the methods that can be used to process a Part.</p>

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
|Instruction_type | [String]({{< relref "string.md" >}}) | 1 | <p>The instruction_type specifies the kind of the Processing_instruction. Note: There are no values pre-defined. Special values have to be negotiated between exchange partners.</p> | [Processing_instruction]({{< relref "processing_instruction.md" >}}) |
|Instruction_value | [String]({{< relref "string.md" >}}) | 1 | <p>The instruction_value specifies the value for the kind of the Processing_instruction defined by instruction_type.</p> | [Processing_instruction]({{< relref "processing_instruction.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Module_configuration]({{< relref "module_configuration.md" >}}) | 0..1 |  | 0..* |  |
| [Protection_area]({{< relref "protection_area.md" >}}) | 1 | Processing_information | 0..* |  |
| [Slot]({{< relref "slot.md" >}}) | 0..1 | Processing_information | 0..* |  |
| [External_reference]({{< relref "external_reference.md" >}}) | 0..1 | Processing_information | 0..* |  |
| [Cavity]({{< relref "cavity.md" >}}) | 0..1 | Processing_information | 0..* |  |
| [Fixing_assignment]({{< relref "fixing_assignment.md" >}}) | 0..1 | Processing_information | 0..* |  |
| [Node]({{< relref "node.md" >}}) | 1 | Processing_information | 0..* |  |
| [Connection]({{< relref "connection.md" >}}) | 1 | Processing_information | 0..* |  |
| [Core]({{< relref "core.md" >}}) | 0..1 | Processing_information | 0..* |  |
| [Cavity_occurrence]({{< relref "cavity_occurrence.md" >}}) | 0..1 | Processing_information | 0..* |  |
| [Routing]({{< relref "routing.md" >}}) | 0..1 | Processing_information | 0..* |  |
| [Module_family]({{< relref "module_family.md" >}}) | 0..1 | Processing_information | 0..* |  |
| [Contact_point]({{< relref "contact_point.md" >}}) | 0..1 | Processing_information | 0..* |  |
| [Wiring_group]({{< relref "wiring_group.md" >}}) | 1 | Processing_information | 0..* |  |
| [Slot_occurrence]({{< relref "slot_occurrence.md" >}}) | 0..1 | Processing_information | 0..* |  |
| [Part]({{< relref "part.md" >}}) | 0..1 | Processing_information | 0..* |  |
| [Extremity]({{< relref "extremity.md" >}}) | 1 | Processing_information | 0..* |  |
| [Dimension_specification]({{< relref "dimension_specification.md" >}}) | 0..1 | Processing_information | 0..* |  |
| [Segment]({{< relref "segment.md" >}}) | 1 | Processing_information | 0..* |  |
