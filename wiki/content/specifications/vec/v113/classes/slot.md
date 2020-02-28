---
title: Slot
toc: false
type: specs
date: "2017-02-21"
draft: false
specification: VEC
version: 1.1.3
documentType: "Recommendation"
elementType: Class
classes:
  - Slot
menu_name: vec-1.1.3
---
<p> A slot is a group of cavities in a connector housing with own properties. The design of a slot is described in a SlotSpecification.      </p>
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
|colorInformation | [Color]({{< relref "color.md" >}}) | 0..* | <p> Specifies the color of the slot.      </p> | [Slot]({{< relref "slot.md" >}}) |
|sealingType | [SlotSealingType]({{< relref "slotsealingtype.md" >}}) | 0..1 | <p> Specifies the type of the sealing of the slot, if sealed. The values are defined in an <i>OpenEnumeration</i>.      </p> | [Slot]({{< relref "slot.md" >}}) |
|permittedTerminalSupplierCompanyNames | [String]({{< relref "string.md" >}}) | 0..* | <p> If this attribute is defined, it is only permitted to use terminals of one of the listed terminal suppliers.      </p>      <p> The used company name shall be same as the one used as <i>PartVersion.companyName</i> for part numbers of this supplier.      </p> | [Slot]({{< relref "slot.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Cavity]({{< relref "cavity.md" >}}) | cavity | 1..* | 1 | <p> Specifies the Cavities forming the Slot.      </p> |
