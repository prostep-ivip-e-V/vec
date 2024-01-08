---
title: PinOpticalInformation
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - PinOpticalInformation
menu_name: vec-2.1.0
---
<p> Allows the specification of optical information in a PinComponentBehavior.      </p>

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
|frequency| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <p> The frequency of the optical signal.      </p> | [PinOpticalInformation]({{< relref "pinopticalinformation.md" >}}) |
|attenuation| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> The attenuation of the optical pin at the defined frequency.       </p> | [PinOpticalInformation]({{< relref "pinopticalinformation.md" >}}) |


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
        <td>opticalInformation</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "pincomponentbehavior.md" >}}">PinComponentBehavior</a></td>
        <td>1</td>
        <td><p> Specifies the optical information of the pin, if it has the type optical.      </p></td>
    </tr>
    </tbody>
</table>



