﻿---
title: ExtensionSlotReference
toc: false
type: specs
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Class
classes:
  - ExtensionSlotReference
menu_name: vec-1.1.2
---
<p> A ExtensionSlotReference represents the usage of a ExtensionSlot in the context of a PartUsage or PartOccurrence.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 |  | [ExtensionSlotReference]({{< relref "extensionslotreference.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [ExtensionSlot]({{< relref "extensionslot.md" >}}) | extensionSlot | 1 |  |  |
| [EEComponentRole]({{< relref "eecomponentrole.md" >}}) | usedInserts | 0..* | 0..* | Defines the inserts used for extension slot in a defined instance. These can be more than one EEComponentRole, because of variance in a 150% specification. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [EEComponentRole]({{< relref "eecomponentrole.md" >}}) | 1 | extensionSlotRef | 0..* | Specifies the ExtensionSlotReferences used in the EEComponentRole. |
