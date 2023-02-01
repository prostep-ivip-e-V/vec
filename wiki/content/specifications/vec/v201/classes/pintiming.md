---
title: PinTiming
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - PinTiming
menu_name: vec-2.0.1
---
<p> Specifies the timing for a <i>PinCurrentInformation </i>or a <i>PinVoltageInformation</i>.      </p>

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
|type| [PinTimingType]({{< relref "pintimingtype.md" >}}) | 1 | <p> Specifies the type of the timing.      </p> | [PinTiming]({{< relref "pintiming.md" >}}) |
|time| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <p> Specifies the time value of the timing.      </p> | [PinTiming]({{< relref "pintiming.md" >}}) |


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
        <td>timing</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "pincurrentinformation.md" >}}">PinCurrentInformation</a></td>
        <td>0..1</td>
        <td><p> Specifies the timing of the <i>PinCurrentInformation.</i>      </p></td>
    </tr>
    <tr>
        <td>timing</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "pinvoltageinformation.md" >}}">PinVoltageInformation</a></td>
        <td>0..1</td>
        <td><p> Specifies the timing of the <i>PinVoltageInformation</i>.      </p></td>
    </tr>
    </tbody>
</table>



