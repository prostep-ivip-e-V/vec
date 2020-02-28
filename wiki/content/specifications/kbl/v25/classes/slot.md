---
title: Slot
toc: false
type: specs
date: "2018-07-04"
draft: false
specification: KBL
version: 2.5
documentType: "Recommendation"
elementType: Class
classes:
  - Slot
menu_name: kbl-2.5
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
|Number_of_cavities | [Integer]({{< relref "integer.md" >}}) | 1 | <p> The attribute number of cavities corresponds to the number of cavities in the geometrical model of the connector. In geometrical model, a cavity is always counted, regardless of its actual availability (e.g. permanently sealed). This number is equal to the number of <i>Cavity</i>-Objects under this <i>Slot</i>. The only exception to this, a real cavity is splitted into multiple virtual cavities (e.g. for coax contacting). Then the number of <i>Cavity</i>-Objects can be greater than the value of this attribute.      </p> | [Slot]({{< relref "slot.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Cavity]({{< relref "cavity.md" >}}) | Cavities | 0..* | 1 |  |
| [Processing_instruction]({{< relref "processing_instruction.md" >}}) | Processing_information | 0..* | 0..1 |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Slot_occurrence]({{< relref "slot_occurrence.md" >}}) | 1..* | Part | 1 |  |
| [Connector_housing]({{< relref "connector_housing.md" >}}) | 1 | Slots | 0..* |  |
