---
title: TerminalDistanceInformation
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - TerminalDistanceInformation
menu_name: vec-2.1.0
---
<p> Allows the definition of valid minimum distances for a terminal. A minimum distance is always a <i>NumericalValue</i> defined for a <i>TerminalDistanceType</i>. Attributes of the type <i>TerminalDistanceInformation</i> normally have the multiplicity [0..*]. This means that such an attribute can have <i>TerminalDistanceInformation</i> entries for different <i>TerminalDistanceType</i>. It must not have multiple entries for the same <i>TerminalDistanceType</i>.      </p>

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
|type| [TerminalDistanceType]({{< relref "terminaldistancetype.md" >}}) | 1 | The type of the <i>TerminalDistanceInformation.</i> | [TerminalDistanceInformation]({{< relref "terminaldistanceinformation.md" >}}) |
|value| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | Defines the valid minimum distance. | [TerminalDistanceInformation]({{< relref "terminaldistanceinformation.md" >}}) |


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
        <td>minimumDistance</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "terminalspecification.md" >}}">TerminalSpecification</a></td>
        <td>0..1</td>
        <td>A terminal can have minimum distance requirements to other elements in the harness. Theses are defined with the <i>TerminalDistanceInformation.</i></td>
    </tr>
    </tbody>
</table>



