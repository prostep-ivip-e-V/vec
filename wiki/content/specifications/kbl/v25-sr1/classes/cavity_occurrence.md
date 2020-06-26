---
title: Cavity_occurrence
toc: false
type: specs
date: "2020-06-25"
draft: false
specification: KBL
version: 2.5.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - Cavity_occurrence
menu_name: kbl-2.5.sr1
---
<p>A Cavity_occurrence is the occurrence of a Cavity in the context of a connector_occurrence.</p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 4_Connectivity |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Mounting_element]({{< relref "mounting_element.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Cavity]({{< relref "cavity.md" >}}) | Part | 1 | 1..* |  |
| [Cavity_occurrence]({{< relref "cavity_occurrence.md" >}}) | Mated_cavities | 0..* | 0..* |  |
| [Processing_instruction]({{< relref "processing_instruction.md" >}}) | Processing_information | 0..* | 0..1 |  |
| [Cavity_plug_occurrence]({{< relref "cavity_plug_occurrence.md" >}}) | Associated_plug  | 0..1 | 1..* |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Slot_occurrence]({{< relref "slot_occurrence.md" >}}) | 1 | Cavities | 1..* |  |
| [Schematic_connection]({{< relref "schematic_connection.md" >}}) | 0..* | Cavities | 2..* |  |
| [Contact_point]({{< relref "contact_point.md" >}}) | 0..* | Contacted_cavity | 1..* |  |
| [Cavity_occurrence]({{< relref "cavity_occurrence.md" >}}) | 0..* | Mated_cavities | 0..* |  |
| [Node]({{< relref "node.md" >}}) | 0..* | referenced_cavities | 0..* |  |
