---
title: ModularSlot
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - ModularSlot
menu_name: vec-2.0.1
---
<p>A ModularSlot is a place in a connector housing where different other connector housings can be placed during the assembly (e.g. by clicking them into the connector housing).  </p>

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
|optional| [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <p> Specifies whether the allocation of the ModularSlot is optional or not (can a usage of the connector housing leave this ModularSlot empty.      </p> | [ModularSlot]({{< relref "modularslot.md" >}}) |

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
        <td>allowedInserts</td>
        <td><a href="{{< relref "partrelation.md" >}}">PartRelation</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> References the <i>PartRelations</i> that are valid inserts for this <i>ModularSlot.</i>      </p>      <p> This reference points to <i>PartRelations</i> in order to allow referencing indirectly a <i>PartVersion </i>if the description of individual <i>PartVersions</i> is done with one physical VEC file per <i>PartVersion </i>and to allow the expression of optional inserts, choices etc. However, inserts for a <i>ModularSlot</i> are always ConnectorHousings by itself. Therefore, the referenced <i>PartVersion</i> shall have a <i>PrimaryPartType =&#160;ConnectorHousing</i>      </p></td>
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
        <td>slot</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "modularslotaddon.md" >}}">ModularSlotAddOn</a></td>
        <td>0..*</td>
        <td></td>
    </tr>
    </tbody>
</table>



