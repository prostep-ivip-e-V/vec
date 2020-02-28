---
title: Slot_occurrence
toc: false
type: specs
date: "2005-11-01"
draft: false
specification: KBL
version: 2.3.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - Slot_occurrence
menu_name: kbl-2.3.sr1
---
<p>A Slot_occurrence is the occurrence of a Slot in a module part list.</p>
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
| [Slot]({{< relref "slot.md" >}}) | Part | 1 | 1..* |  |
| [Cavity_occurrence]({{< relref "cavity_occurrence.md" >}}) | Cavities | 1..* | 1 |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Connector_occurrence]({{< relref "connector_occurrence.md" >}}) | 1 | Slots | 0..* |  |
