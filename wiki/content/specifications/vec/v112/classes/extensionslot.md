---
title: ExtensionSlot
toc: false
type: specs
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Class
classes:
  - ExtensionSlot
menu_name: vec-1.1.2
---
<p> An <i>ExtensionSlot </i>defines a slot within an EE-Component where other EE-Components can plugged into (modular extension). This is necessary for example for modular power distributions.       </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Identification of the ExtensionSlot, which must be distinct for all ExtensionSlots of an EEComponent.      </p> | [ExtensionSlot]({{< relref "extensionslot.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [EEComponentSpecification]({{< relref "eecomponentspecification.md" >}}) | allowedInserts | 0..* | 0..* | Defines the EEComponentSpecifications that are allowed as an insert for this ExtensionSlot. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ExtensionSlotReference]({{< relref "extensionslotreference.md" >}}) |  | extensionSlot | 1 |  |
| [EEComponentSpecification]({{< relref "eecomponentspecification.md" >}}) | 1 | extensionSlots | 0..* | Specifies the available ExtensionSlots of the EEComponent. |
