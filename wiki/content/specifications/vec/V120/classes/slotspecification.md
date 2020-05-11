---
title: SlotSpecification
toc: false
type: specs
date: "2020-05-11"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - SlotSpecification
menu_name: vec-1.2.0
---
<p>Specification for the definition of slots. </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Specification]({{< relref "specification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. For all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|emvProtectionRequired | [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <p>Specifies whether the slot needs EMV protection. </p> | [SlotSpecification]({{< relref "slotspecification.md" >}}) |
|gender | [SlotGender]({{< relref "slotgender.md" >}}) | 0..1 | <p> Specifies the gender of the slot. Valid values are defined in an open enumeration.      </p> | [SlotSpecification]({{< relref "slotspecification.md" >}}) |
|layoutType | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies the slot's layout type.      </p> | [SlotSpecification]({{< relref "slotspecification.md" >}}) |
|secondaryLocking | [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <p>Specifies whether the slot supports secondary locking. </p> | [SlotSpecification]({{< relref "slotspecification.md" >}}) |
|numberOfCavities | [Integer]({{< relref "integer.md" >}}) | 1 | <p>The possible number of cavities in the layout defined by the SlotSpecification. This includes all cavities in the layout. The actual Slot can define specific cavities in the layout as "not available".  </p> | [SlotSpecification]({{< relref "slotspecification.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [SlotLayout]({{< relref "slotlayout.md" >}}) | slotLayout | 0..1 | 1 | <p> References the layout associated with this slot.      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [AbstractSlot]({{< relref "abstractslot.md" >}}) | 0..* | slotSpecification | 0..1 | References the SlotSpecification that is satisfied by the slot. |
