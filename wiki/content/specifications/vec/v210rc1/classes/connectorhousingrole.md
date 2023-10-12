---
title: ConnectorHousingRole
toc: false
type: specs
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - ConnectorHousingRole
menu_name: vec-2.1.0
---
<p> A ConnectorHousingRole defines the instance specific properties and relationships of a connector housing.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Role]({{< relref "role.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the Role. The identification is guaranteed to be unique within the OccurrenceOrUsage.      </p> | [Role]({{< relref "role.md" >}}) |
|sealState| [SealState]({{< relref "sealstate.md" >}}) | 0..1 | <p>Specifies if this instance of a connector housing should be sealed (waterproof).  </p> | [ConnectorHousingRole]({{< relref "connectorhousingrole.md" >}}) |

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
        <td>componentConnector</td>
        <td><a href="{{< relref "componentconnector.md" >}}">ComponentConnector</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> References the ComponentConnector that is realized by the referenced ConnectorHousing (OccurrenceOrUsage with ConnectorHousingRole). This can especially be relevant for inliners. KBLFRM-341.      </p></td>
    </tr>
    <tr>
        <td>slotReference</td>
        <td><a href="{{< relref "abstractslotreference.md" >}}">AbstractSlotReference</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Specifies the SlotReferences used in the ConnectorHousingRole.</td>
    </tr>
    <tr>
        <td>connectorHousingSpecification</td>
        <td><a href="{{< relref "connectorhousingspecification.md" >}}">ConnectorHousingSpecification</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> References the <i>ConnectorHousingSpecification </i>that is instanced by this <i>ConnectorHousingRole.</i>      </p></td>
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
        <td>connectorHousingRole</td>
        <td>0..1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "housingcomponentreference.md" >}}">HousingComponentReference</a></td>
        <td>0..1</td>
        <td></td>
    </tr>
    <tr>
        <td>firstConnector</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "couplingpoint.md" >}}">CouplingPoint</a></td>
        <td>0..*</td>
        <td></td>
    </tr>
    <tr>
        <td>secondConnector</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "couplingpoint.md" >}}">CouplingPoint</a></td>
        <td>0..*</td>
        <td></td>
    </tr>
    <tr>
        <td>usedInserts</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "modularslotreference.md" >}}">ModularSlotReference</a></td>
        <td>0..*</td>
        <td><p> References the inserts that are used in this <i>ModularSlotReference. </i>More than one insert is valid in the case variant dependent equipment of the slot.       </p></td>
    </tr>
    </tbody>
</table>



