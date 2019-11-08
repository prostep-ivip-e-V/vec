---
title: SlotSpecification
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html><body><p>Specification for the definition of slots. </p></body></html>
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
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. Over all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p>    </body> </html>  | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies additional, human readable information about the specification.      </p>    </body> </html>  | [Specification]({{< relref "specification.md" >}}) |
|emvProtectionRequired | [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <html><body><p>Specifies whether the slot needs EMV protection. </p></body></html> | [SlotSpecification]({{< relref "slotspecification.md" >}}) |
|gender | [SlotGender]({{< relref "slotgender.md" >}}) | 0..1 | <html><body><p>Specifies the gender of the slot. This should be an enumeration of values defined in a conformance class.  </p></body></html> | [SlotSpecification]({{< relref "slotspecification.md" >}}) |
|layoutType | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>Specifies the slot's layout type. This should be an enumeration of values defined in a conformance class.  </p></body></html> | [SlotSpecification]({{< relref "slotspecification.md" >}}) |
|secondaryLocking | [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <html><body><p>Specifies whether the slot supports secondary locking. </p></body></html> | [SlotSpecification]({{< relref "slotspecification.md" >}}) |
|numberOfCavities | [Integer]({{< relref "integer.md" >}}) | 1 | <html><body><p>The possible number of cavities in the layout defined by the SlotSpecification. This includes all cavities in the layout. The actual Slot can define specific cavities in the layout as "not available".  </p></body></html> | [SlotSpecification]({{< relref "slotspecification.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [SlotLayout]({{< relref "slotlayout.md" >}}) | slotLayout | 0..1 | 1 | <html>   <head>     </head>   <body>     <p> References the layout associated with this slot.      </p>    </body> </html>  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [AbstractSlot]({{< relref "abstractslot.md" >}}) | 0..* | slotSpecification | 0..1 | References the SlotSpecification that is satisfied by the slot.  |
