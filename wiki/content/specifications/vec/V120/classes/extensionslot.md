---
title: ExtensionSlot
toc: false
type: specs
date: "2020-02-01"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - ExtensionSlot
menu_name: vec-1.2.0
---
<p> An <i>ExtensionSlot </i>defines a slot within an EE-Component where other EE-Components can be plugged into (modular extension). This is necessary for example for modular power distributions.      </p>
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
| [PartRelation]({{< relref "partrelation.md" >}}) | allowedInserts | 0..* | 0..* | <p> References the <i>PartRelations</i> that are valid inserts for this <i>ExtensionSlot.</i>      </p>      <p> This reference points to <i>PartRelations</i> in order to allow referencing indirectly a <i>PartVersion </i>if the description of individual <i>PartVersions</i> is done with one physical VEC file per <i>PartVersion </i>and to allow the expression of optional inserts, choices etc. However, inserts for an <i>ExtensionSlot</i> are always <i>EEComponents</i> by itself. Therefore, the referenced <i>PartVersion</i> shall have a <i>PrimaryPartType =&#160;EEComponent.</i>      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ExtensionSlotReference]({{< relref "extensionslotreference.md" >}}) |  | extensionSlot | 1 |  |
| [EEComponentSpecification]({{< relref "eecomponentspecification.md" >}}) | 1 | extensionSlots | 0..* | Specifies the available ExtensionSlots of the EEComponent. |
