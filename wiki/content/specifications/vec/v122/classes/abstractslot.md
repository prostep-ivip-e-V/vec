---
title: AbstractSlot
toc: false
type: specs
date: "2022-01-18"
draft: false
specification: VEC
version: 1.2.2
documentType: "Recommendation"
elementType: Class
classes:
  - AbstractSlot
menu_name: vec-1.2.2
---
<p> An <i>AbstractSlot</i> is a geometrical place in a connector housing, which can contain / group cavities. This can be either direct, if it is <i>Slot</i> and indirect if it is a <i>ModularSlot</i>.      </p>      <p> If it is a <i>Slot</i>, then it is an inseparable part of the connector housing, which means it is created during the manufacturing process of the connector housing.      </p>      <p> If it is a <i>ModularSlot</i> it is a place where one or more other connector housing can be place during the assembly.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | true |
| **Derived Classifiers** | [ModularSlot]({{< relref "modularslot.md" >}}), [Slot]({{< relref "slot.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|slotNumber | [String]({{< relref "string.md" >}}) | 0..1 | <p>Specifies the number of the slot. This must be unique within a ConnectorHousingSpecification.  </p> | [AbstractSlot]({{< relref "abstractslot.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Coding]({{< relref "coding.md" >}}) | coding | 0..1 | 0..1 | Defines coding of the slot that is satisfied by the Slot. |
| [SlotSpecification]({{< relref "slotspecification.md" >}}) | slotSpecification | 0..1 | 0..* | References the SlotSpecification that is satisfied by the slot. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [AbstractSlotReference]({{< relref "abstractslotreference.md" >}}) | 0..* | referencedSlot | 1 | Points to the slot referenced by the slot reference. |
| [ConnectorHousingSpecification]({{< relref "connectorhousingspecification.md" >}}) | 1 | slot | 0..* | Specifies the slots forming the ConnectorHousing. |
