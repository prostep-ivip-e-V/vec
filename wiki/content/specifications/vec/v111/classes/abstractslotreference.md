---
title: AbstractSlotReference
toc: false
type: specs
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Class
classes:
  - AbstractSlotReference
menu_name: vec-1.1.1
---
<p> An <i>AbstractSlotReference</i> represents the usage of an AbstractSlot in the context of PartUsage or PartOccurrence.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | true |
| **Derived Classifiers** | [ModularSlotReference]({{< relref "modularslotreference.md" >}}), [SlotReference]({{< relref "slotreference.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the SlotReference. The identification is guaranteed to be unique within the ConnectorHousingRole. The cavity &amp; slot number is defined by the associated cavity and slot.      </p> | [AbstractSlotReference]({{< relref "abstractslotreference.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [AbstractSlot]({{< relref "abstractslot.md" >}}) | referencedSlot | 1 | 0..* | Points to the slot referenced by the slot reference. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [EEComponentRole]({{< relref "eecomponentrole.md" >}}) | 0..* | mountingSlot | 0..* | Specifies the slots to which into which the EE-component is mounted. |
| [ConnectorHousingRole]({{< relref "connectorhousingrole.md" >}}) | 1 | slotReference | 0..* | Specifies the SlotReferences used in the ConnectorHousingRole. |
