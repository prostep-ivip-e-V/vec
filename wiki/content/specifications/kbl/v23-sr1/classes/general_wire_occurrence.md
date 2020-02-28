---
title: General_wire_occurrence
toc: false
type: specs
date: "2005-11-01"
draft: false
specification: KBL
version: 2.3.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - General_wire_occurrence
menu_name: kbl-2.3.sr1
---
<p>A General_wire_occurrence is the occurrence of a Wire_occurrence or a Special_wire_occurrence in a module part list.</p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 3_Part_structure |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Connection_or_occurrence]({{< relref "connection_or_occurrence.md" >}})<br/>  |
| **Is Abstract**         | true |
| **Derived Classifiers** | [Special_wire_occurrence]({{< relref "special_wire_occurrence.md" >}}), [Wire_occurrence]({{< relref "wire_occurrence.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Wire_length]({{< relref "wire_length.md" >}}) | Length_information | 1..* | 1 |  |
| [General_wire]({{< relref "general_wire.md" >}}) | Part | 1 | 1..* |  |
| [Installation_instruction]({{< relref "installation_instruction.md" >}}) | Installation_information | 0..* | 1 |  |
