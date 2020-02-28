---
title: Slot
toc: false
type: specs
date: "2015-03-16"
draft: false
specification: KBL
version: 2.4
documentType: "Recommendation"
elementType: Class
classes:
  - Slot
menu_name: kbl-2.4
---
<p>A Slot is a mechanism to group the Cavity objects of a Connector_housing.</p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 2_Parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Abstract_slot]({{< relref "abstract_slot.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Id | [String]({{< relref "string.md" >}}) | 0..1 | <p>The id specifies the identifier of the Slot.</p> | [Slot]({{< relref "slot.md" >}}) |
|Number_of_cavities | [Integer]({{< relref "integer.md" >}}) | 1 | <p>The number_of_cavities specifies the number of cavities associated with the Slot.</p> | [Slot]({{< relref "slot.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Processing_instruction]({{< relref "processing_instruction.md" >}}) | Processing_information | 0..* | 0..1 |  |
| [Cavity]({{< relref "cavity.md" >}}) | Cavities | 1..* | 1 |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Slot_occurrence]({{< relref "slot_occurrence.md" >}}) | 1..* | Part | 1 |  |
| [Connector_housing]({{< relref "connector_housing.md" >}}) | 1 | Slots | 0..* |  |
