---
title: ModularSlotAddOn
toc: false
type: specs
date: "2022-01-18"
draft: false
specification: VEC
version: 1.2.2
documentType: "Recommendation"
elementType: Class
classes:
  - ModularSlotAddOn
menu_name: vec-1.2.2
---
<p> Specifies the wire addon needed to reach a <i>ModularSlot</i> from a specific <i>SegmentConnectionPoint</i>. The addon needed to reach the cavities of the insert(s) from this point is defined by the <i>ConnectorHousingSpecification </i>of the insert.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|wireAddOn | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <p> Specifies the wire length add on needed for the modular slot.      </p> | [ModularSlotAddOn]({{< relref "modularslotaddon.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [ModularSlot]({{< relref "modularslot.md" >}}) | slot | 1 | 0..* |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [SegmentConnectionPoint]({{< relref "segmentconnectionpoint.md" >}}) | 1 | ModularSlotAddOns | 0..* |  |
