﻿---
title: Slot
toc: false
type: specs
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Class
classes:
  - Slot
menu_name: vec-1.1.1
---
<p> A slot is a group of cavities in a connector housing with own properties. The design of a slot is described in a SlotSpecification.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [AbstractSlot]({{< relref "abstractslot.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|slotNumber | [String]({{< relref "string.md" >}}) | 0..1 | <p>Specifies the number of the slot. This must be unique within a ConnectorHousingSpecification.  </p> | [AbstractSlot]({{< relref "abstractslot.md" >}}) |
|colorInformation | [Color]({{< relref "color.md" >}}) | 0..* | <p> Specifies the color of the slot.      </p> | [Slot]({{< relref "slot.md" >}}) |
|sealingType | [String]({{< relref "string.md" >}}) | 0..1 | <p>Specifies the type of the sealing of the slot. This should be an enumeration of values defined in a conformance class.  </p> | [Slot]({{< relref "slot.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Cavity]({{< relref "cavity.md" >}}) | cavity | 1..* | 1 | <p> Specifies the Cavities forming the Slot.      </p> |
