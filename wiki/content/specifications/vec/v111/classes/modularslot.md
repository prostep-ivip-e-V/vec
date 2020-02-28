---
title: ModularSlot
toc: false
type: specs
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Class
classes:
  - ModularSlot
menu_name: vec-1.1.1
---
<p>A ModularSlot is a place in a connector housing where different other connector housings can be placed during the assembly (e.g. by clicking them into the connector housing).  </p>

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
|optional | [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <p> Specifies whether the allocation of the ModularSlot is optional or not (can a usage of the connector housing leave this ModularSlot empty.      </p> | [ModularSlot]({{< relref "modularslot.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [ConnectorHousingSpecification]({{< relref "connectorhousingspecification.md" >}}) | allowedInserts | 0..* | 0..* | <p> References the <i>ConnectorHousingSpecifications</i> that are valid inserts for this <i>ModularSlot.</i>      </p> |
