---
title: Coding
toc: false
type: specs
date: "2021-10-18"
draft: false
specification: VEC
version: 1.2.1
documentType: "Recommendation"
elementType: Class
classes:
  - Coding
menu_name: vec-1.2.1
---
<p> Specifies the coding of a slot or a connector housing.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|coding | [CodingName]({{< relref "codingname.md" >}}) | 1 | <p> Specifies the name of the coding.      </p> | [Coding]({{< relref "coding.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ConnectorHousingSpecification]({{< relref "connectorhousingspecification.md" >}}) | 0..1 | coding | 0..1 | Defines coding of the connector housing that is satisfied by the connector housing. |
| [AbstractSlot]({{< relref "abstractslot.md" >}}) | 0..1 | coding | 0..1 | Defines coding of the slot that is satisfied by the Slot. |
