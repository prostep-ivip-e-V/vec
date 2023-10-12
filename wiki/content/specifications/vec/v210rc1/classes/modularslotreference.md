---
title: ModularSlotReference
toc: false
type: specs
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - ModularSlotReference
menu_name: vec-2.1.0
---
<p> A <i>ModularSlotReference</i> represents the usage of a <i>ModularSlot</i> in the context of PartUsage or PartOccurrence.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [AbstractSlotReference]({{< relref "abstractslotreference.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the SlotReference. The identification is guaranteed to be unique within the ConnectorHousingRole. The cavity &amp; slot number is defined by the associated cavity and slot.      </p> | [AbstractSlotReference]({{< relref "abstractslotreference.md" >}}) |

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
        <td>usedInserts</td>
        <td><a href="{{< relref "connectorhousingrole.md" >}}">ConnectorHousingRole</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> References the inserts that are used in this <i>ModularSlotReference. </i>More than one insert is valid in the case variant dependent equipment of the slot.       </p></td>
    </tr>
    </tbody>
</table>




