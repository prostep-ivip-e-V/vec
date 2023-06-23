---
title: ModularSlotAddOn
toc: false
type: specs
date: "2023-03-24"
draft: false
specification: VEC
version: 2.0.2
documentType: "Recommendation"
elementType: Class
classes:
  - ModularSlotAddOn
menu_name: vec-2.0.2
---
<p> Specifies the wire addon needed to reach a <i>ModularSlot</i> from a specific <i>SegmentConnectionPoint</i>. The addon needed to reach the cavities of the insert(s) from this point is defined by the <i>ConnectorHousingSpecification </i>of the insert.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|wireAddOn| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <p> Specifies the wire length add on needed for the modular slot.      </p> | [ModularSlotAddOn]({{< relref "modularslotaddon.md" >}}) |

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
        <td>slot</td>
        <td><a href="{{< relref "modularslot.md" >}}">ModularSlot</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
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
        <td>ModularSlotAddOns</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "segmentconnectionpoint.md" >}}">SegmentConnectionPoint</a></td>
        <td>1</td>
        <td></td>
    </tr>
    </tbody>
</table>



