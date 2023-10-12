---
title: Slot
toc: false
type: specs
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - Slot
menu_name: vec-2.1.0
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
|slotNumber| [String]({{< relref "string.md" >}}) | 0..1 | <p>Specifies the number of the slot. This must be unique within a ConnectorHousingSpecification.  </p> | [AbstractSlot]({{< relref "abstractslot.md" >}}) |
|colorInformation| [Color]({{< relref "color.md" >}}) | 0..* | <p> Specifies the color of the slot.      </p> | [Slot]({{< relref "slot.md" >}}) |
|sealingType| [SlotSealingType]({{< relref "slotsealingtype.md" >}}) | 0..1 | <p> Specifies the type of the sealing of the slot, if sealed. The values are defined in an <i>OpenEnumeration</i>.      </p> | [Slot]({{< relref "slot.md" >}}) |
|permittedTerminalSupplierCompanyNames| [String]({{< relref "string.md" >}}) | 0..* | <p> If this attribute is defined, it is only permitted to use terminals of one of the listed terminal suppliers.      </p>      <p> The used company name shall be same as the one used as <i>PartVersion.companyName</i> for part numbers of this supplier.      </p> | [Slot]({{< relref "slot.md" >}}) |

## Outgoing Relations
<table>
    <thead>
        <tr>
           <th colspan="6">Other End</th>
           <th colspan="1">This End</th>
           <th colspan="1">General</th>
        </tr>
        <tr>
           <th>Role</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Agg.{{< info agg >}}</th>
           <th>Unique{{< info unique >}}</th>
           <th>Ordered{{< info ordered >}}</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>supplementaryParts</td>
        <td><a href="{{< relref "partrelation.md" >}}">PartRelation</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> References the <i>PartRelations</i> that specify supplementary parts for this slot.      </p></td>
    </tr>
    <tr>
        <td>cavity</td>
        <td><a href="{{< relref "cavity.md" >}}">Cavity</a></td>
        <td>1..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td><p> Specifies the Cavities forming the Slot.      </p></td>
    </tr>
    </tbody>
</table>




