---
title: SegmentConnectionPoint
toc: false
type: specs
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - SegmentConnectionPoint
menu_name: vec-2.1.0
---
<p>Specifies a point where the connector can be attached to the topology (sometimes called bundle position point or insertion point).  </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the SegmentConnectionPoint. The identification is guaranteed to be unique within the ConnectorHousingSpecification.      </p> | [SegmentConnectionPoint]({{< relref "segmentconnectionpoint.md" >}}) |

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
        <td>reachableCavities</td>
        <td><a href="{{< relref "cavity.md" >}}">Cavity</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> Specifies the <i>Cavities</i> that are reachable with wires through this <i>SegmentConnectionPoint.</i>      </p></td>
    </tr>
    <tr>
        <td>placementPoint</td>
        <td><a href="{{< relref "placementpoint.md" >}}">PlacementPoint</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> Specifies the <i>PlacementPoint</i> that represents this <i>SegmentConnectionPoint </i>in a <i>PlaceableElementSpecification.</i>      </p></td>
    </tr>
    <tr>
        <td>cavityAddOns</td>
        <td><a href="{{< relref "cavityaddon.md" >}}">CavityAddOn</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td></td>
    </tr>
    <tr>
        <td>ModularSlotAddOns</td>
        <td><a href="{{< relref "modularslotaddon.md" >}}">ModularSlotAddOn</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td></td>
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
        <td>connectorSegmentConnectionPoint</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "segmentconnectionpointhc.md" >}}">SegmentConnectionPointHC</a></td>
        <td>0..*</td>
        <td>References the <i>SegementConnectionPoint </i>of the <i>ConnectorHousingSpecification</i> that is used to &quot;enter&quot; the connector housing.</td>
    </tr>
    <tr>
        <td>segmentConnectionPoint</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "connectorhousingspecification.md" >}}">ConnectorHousingSpecification</a></td>
        <td>1</td>
        <td><p> Specifies the <i>SegmentConnectionPoints </i>the connector housing.      </p></td>
    </tr>
    </tbody>
</table>



