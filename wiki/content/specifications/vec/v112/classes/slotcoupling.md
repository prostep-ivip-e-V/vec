---
title: SlotCoupling
toc: false
type: specs
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Class
classes:
  - SlotCoupling
menu_name: vec-1.1.2
---
<p> A <i>SlotCoupling</i> defines the mapping between two slots of the <i>ConnectorHousingRoles</i> associated with the <i>CouplingPoint</i>.      </p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | mating |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 |  | [SlotCoupling]({{< relref "slotcoupling.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [CavityCoupling]({{< relref "cavitycoupling.md" >}}) | cavityCoupling | 0..* | 1 |  |
| [AbstractSlotReference]({{< relref "abstractslotreference.md" >}}) | firstSlot | 1 | 0..* |  |
| [AbstractSlotReference]({{< relref "abstractslotreference.md" >}}) | secondSlot | 1 | 0..* |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [CouplingPoint]({{< relref "couplingpoint.md" >}}) | 1 | slotCoupling | 0..* |  |
