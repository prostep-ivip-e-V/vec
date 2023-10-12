---
title: WireLength
toc: false
type: specs
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - WireLength
menu_name: vec-2.1.0
---
<p> Defines the length of a WireElementReference. A WireElementReference can have multiple lengths of different types but must not have more than one length of the same type.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|lengthType| [WireLengthType]({{< relref "wirelengthtype.md" >}}) | 1 | <p> The type of the length.&#160;Possible values are defined in an open enumeration (see WireLengthType).      </p> | [WireLength]({{< relref "wirelength.md" >}}) |
|lengthValue| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <p>The length value for the type.  </p> | [WireLength]({{< relref "wirelength.md" >}}) |


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
        <td>wireLength</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "wireelementreference.md" >}}">WireElementReference</a></td>
        <td>1</td>
        <td>Specifies the different length of a wire.</td>
    </tr>
    </tbody>
</table>



