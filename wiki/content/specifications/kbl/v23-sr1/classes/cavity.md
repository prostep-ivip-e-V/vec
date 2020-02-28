---
title: Cavity
toc: false
type: specs
date: "2005-11-01"
draft: false
specification: KBL
version: 2.3.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - Cavity
menu_name: kbl-2.3.sr1
---
<p>Kontaktkammer  A cavity is a defined space in a housing for location of an electrical terminal or cavity plug/seal (can be empty).</p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 2_Parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Cavity_number | [String]({{< relref "string.md" >}}) | 1 | <p>The cavity_number specifies the identifier of the Cavity. Note:  The uniqueness of a cavity id within a harness is fulfilled by the concatenation of the connector id, the slot id, and the cavity id.</p> | [Cavity]({{< relref "cavity.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Slot]({{< relref "slot.md" >}}) | 1 | Cavities | 1..* |  |
| [Cavity_occurrence]({{< relref "cavity_occurrence.md" >}}) | 1..* | Part | 1 |  |
