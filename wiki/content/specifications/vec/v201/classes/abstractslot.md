---
title: AbstractSlot
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - AbstractSlot
menu_name: vec-2.0.1
---
<p> An <i>AbstractSlot</i> is a geometrical place in a connector housing, which can contain / group cavities. This can be either direct, if it is <i>Slot</i> and indirect if it is a <i>ModularSlot</i>.      </p>      <p> If it is a <i>Slot</i>, then it is an inseparable part of the connector housing, which means it is created during the manufacturing process of the connector housing.      </p>      <p> If it is a <i>ModularSlot</i> it is a place where one or more other connector housing can be place during the assembly.      </p>

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
           <th>Agg.</th>
           <th>Unique</th>
           <th>Ordered</th>
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
           <th>Agg.</th>
           <th>Unique</th>
           <th>Ordered</th>
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



