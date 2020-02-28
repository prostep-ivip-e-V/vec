---
title: Cavity
toc: false
type: specs
date: "2015-03-20"
draft: false
specification: KBL
version: 2.4.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - Cavity
menu_name: kbl-2.4.sr1
---
<p>Kontaktkammer  A cavity is a defined space in a housing for location of an electrical terminal or cavity plug/seal (can be empty).</p>

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
|Cavity_number | [String]({{< relref "string.md" >}}) | 1 | <p>The cavity_number specifies the identifier of the Cavity. Note:  The uniqueness of a cavity id within a harness is fulfilled by the concatenation of the connector id, the slot id, and the cavity id.</p> | [Cavity]({{< relref "cavity.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Processing_instruction]({{< relref "processing_instruction.md" >}}) | Processing_information | 0..* | 0..1 |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Component_box_connection]({{< relref "component_box_connection.md" >}}) | 0..* | Cavities | 0..* |  |
| [Slot]({{< relref "slot.md" >}}) | 1 | Cavities | 1..* |  |
| [Cavity_occurrence]({{< relref "cavity_occurrence.md" >}}) | 1..* | Part | 1 |  |
