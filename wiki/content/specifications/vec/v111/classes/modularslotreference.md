---
title: ModularSlotReference
toc: false
type: specs
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Class
classes:
  - ModularSlotReference
menu_name: vec-1.1.1
---
<p> A <i>ModularSlotReference</i> represents the usage of a <i>ModularSlot</i> in the context of PartUsage or PartOccurrence.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [AbstractSlotReference]({{< relref "abstractslotreference.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the SlotReference. The identification is guaranteed to be unique within the ConnectorHousingRole. The cavity &amp; slot number is defined by the associated cavity and slot.      </p> | [AbstractSlotReference]({{< relref "abstractslotreference.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [ConnectorHousingRole]({{< relref "connectorhousingrole.md" >}}) | usedInserts | 0..* | 0..* | <p> References the inserts that are used in this <i>ModularSlotReference. </i>More than one insert is valid in the case variant dependent equipment of the slot.       </p> |
