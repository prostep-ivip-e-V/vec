---
title: Slot_occurrence
toc: false
type: specs
date: "2015-03-16"
draft: false
specification: KBL
version: 2.4
documentType: "Recommendation"
elementType: Class
classes:
  - Slot_occurrence
menu_name: kbl-2.4
---
<p>A Slot_occurrence is the occurrence of a Slot in a module part list.</p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 4_Connectivity |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Abstract_slot_occurrence]({{< relref "abstract_slot_occurrence.md" >}})<br/> [Mounting_element]({{< relref "mounting_element.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Processing_instruction]({{< relref "processing_instruction.md" >}}) | Processing_information | 0..* | 0..1 |  |
| [Slot]({{< relref "slot.md" >}}) | Part | 1 | 1..* |  |
| [Slot_occurrence]({{< relref "slot_occurrence.md" >}}) | Mated_slots | 0..* | 0..* |  |
| [Cavity_occurrence]({{< relref "cavity_occurrence.md" >}}) | Cavities | 1..* | 1 |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Slot_occurrence]({{< relref "slot_occurrence.md" >}}) | 0..* | Mated_slots | 0..* |  |
| [Connector_occurrence]({{< relref "connector_occurrence.md" >}}) | 1 | Slots | 0..* |  |
