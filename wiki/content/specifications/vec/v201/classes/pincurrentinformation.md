﻿---
title: PinCurrentInformation
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - PinCurrentInformation
menu_name: vec-2.0.1
---
<p>Allows the definition of currents for a pin of an EEComponent. A current can be further specified by a duration. Attributes of the type PinCurrentInformation normally have the multiplicity [0..*]. This means that such an attribute can have PinCurrentInformation entries for different types and durations. It must not have multiple entries for the same type and duration.  </p>

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
|type| [PinCurrentType]({{< relref "pincurrenttype.md" >}}) | 1 | <p>Defines the type of the current. </p> | [PinCurrentInformation]({{< relref "pincurrentinformation.md" >}}) |
|current| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <p>The current of the pin. </p> | [PinCurrentInformation]({{< relref "pincurrentinformation.md" >}}) |

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
        <td>timing</td>
        <td><a href="{{< relref "pintiming.md" >}}">PinTiming</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>0..1</td>
        <td><p> Specifies the timing of the <i>PinCurrentInformation.</i>      </p></td>
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
        <td>currentInformation</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "pincomponentbehavior.md" >}}">PinComponentBehavior</a></td>
        <td>1</td>
        <td><p> Specifies the current information of the <i>PinComponent</i> in this <i>PinComponentBehavior</i>. Since the current values of a pin can be defined for different types and times it is possible to define multiple <i>PinCurrentInformations</i> for a <i>PinComponentBehavior</i>.      </p></td>
    </tr>
    </tbody>
</table>



