---
title: SlotMapping
toc: false
type: specs
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Class
classes:
  - SlotMapping
menu_name: vec-1.1.1
---
<p>Defines the mapping of two slots contained PartVersion A &amp; B of the containing Mapping-object. </p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | mapping |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identificationA | [String]({{< relref "string.md" >}}) | 1 | <p>The identification of the Slot on side A </p> | [SlotMapping]({{< relref "slotmapping.md" >}}) |
|identificationB | [String]({{< relref "string.md" >}}) | 1 | <p>The identification of the Slot on side B </p> | [SlotMapping]({{< relref "slotmapping.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [CavityMapping]({{< relref "cavitymapping.md" >}}) | cavityMapping | 0..* | 1 |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Mapping]({{< relref "mapping.md" >}}) | 1 | slotMapping | 0..* |  |
