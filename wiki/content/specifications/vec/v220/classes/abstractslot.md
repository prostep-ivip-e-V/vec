---
title: AbstractSlot
toc: false
type: specs
date: "2025-09-19"
draft: false
specification: VEC
version: 2.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - AbstractSlot
menu_name: vec-2.2.0
---
<p> An <i>AbstractSlot</i> represents a geometrical location in a connector housing that can <b>contain or group one or more cavities</b>. This grouping can happen in two different ways:      </p>      <ul>       <li> <b>Directly</b>, via a <i>Slot</i>, where the slot is an <b>inseparable part of the connector housing</b>, formed during the manufacturing process.        </li>       <li> <b>Indirectly</b>, via a <i>ModularSlot</i>, which serves as a <b>placeholder</b> where other connector housings (modules) can be inserted during assembly.        </li>     </ul>     <p> The <i>AbstractSlot</i> is primarily relevant on the <b>mating side</b> of the connector. It enables a logical and geometrical grouping of cavities that may affect how mating is performed.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | true |
| **Derived Classifiers** | [ModularSlot]({{< relref "modularslot.md" >}}), [Slot]({{< relref "slot.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|slotNumber| [String]({{< relref "string.md" >}}) | 0..1 | <p>Specifies the number of the slot. This must be unique within a ConnectorHousingSpecification.  </p> | [AbstractSlot]({{< relref "abstractslot.md" >}}) |

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
        <td>slotSpecification</td>
        <td><a href="{{< relref "slotspecification.md" >}}">SlotSpecification</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the SlotSpecification that is satisfied by the slot.</td>
    </tr>
    <tr>
        <td>coding</td>
        <td><a href="{{< relref "coding.md" >}}">Coding</a></td>
        <td>0..1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>0..1</td>
        <td>Defines coding of the slot that is satisfied by the Slot.</td>
    </tr>
    </tbody>
</table>

##  Incoming Relations
<table>
    <thead>
        <tr>
           <th colspan="5">This End</th>
           <th colspan="2">Other End</th>
           <th colspan="1">General</th>
        </tr>
        <tr>
           <th>Role</th>
           <th>Mult.</th>
           <th>Agg.{{< info agg >}}</th>
           <th>Unique{{< info unique >}}</th>
           <th>Ordered{{< info ordered >}}</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>referencedSlot</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "abstractslotreference.md" >}}">AbstractSlotReference</a></td>
        <td>0..*</td>
        <td>Points to the slot referenced by the slot reference.</td>
    </tr>
    <tr>
        <td>slot</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "connectorhousingspecification.md" >}}">ConnectorHousingSpecification</a></td>
        <td>1</td>
        <td>Specifies the slots forming the ConnectorHousing.</td>
    </tr>
    </tbody>
</table>



