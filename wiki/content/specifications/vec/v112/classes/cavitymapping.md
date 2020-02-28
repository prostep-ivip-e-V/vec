---
title: CavityMapping
toc: false
type: specs
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Class
classes:
  - CavityMapping
menu_name: vec-1.1.2
---
<p> Defines the mapping of two cavities contained Slot A &amp; B of the containing SlotMapping-object.      </p>

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
|identificationA | [String]({{< relref "string.md" >}}) | 1 | <p>The identification of the Cavity on side A </p> | [CavityMapping]({{< relref "cavitymapping.md" >}}) |
|identificationB | [String]({{< relref "string.md" >}}) | 1 | <p>The identification of the Cavity on side B </p> | [CavityMapping]({{< relref "cavitymapping.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [SlotMapping]({{< relref "slotmapping.md" >}}) | 1 | cavityMapping | 0..* |  |
