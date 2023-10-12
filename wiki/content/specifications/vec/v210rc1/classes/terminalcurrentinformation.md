---
title: TerminalCurrentInformation
toc: false
type: specs
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - TerminalCurrentInformation
menu_name: vec-2.1.0
---
<p>Allows the definition of valid current ranges for a terminal. A current range is always defined for a coreCrossSectionArea and a nominal voltage.  Attributes of the type CurrentRangeInformation normally have the multiplicity [0..*]. This means that such an attribute can have CurrentRangeInformation entries for different coreCrossSectionAreas and nominalVoltages. It must not have multiple entries for the same coreCrossSectionAreas and nominalVoltages.  </p>

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
|currentRange| [ValueRange]({{< relref "valuerange.md" >}}) | 1 | <p>Specifies the valid current range for the terminal. It is defined as a value range, because there are terminals where minimum current is needed to avoid corrosion.   </p> | [TerminalCurrentInformation]({{< relref "terminalcurrentinformation.md" >}}) |
|nominalVoltage| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <p>Specifies the nominalVoltage for which the CurrentRangeInformation is valid.  </p> | [TerminalCurrentInformation]({{< relref "terminalcurrentinformation.md" >}}) |
|coreCrossSectionArea| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <p> Specifies the coreCrossSectionArea for which the CurrentRangeInformation is valid. The coreCrossSectionArea is a relevant information, because the thermal absorption of the core depends on the cross-section area and thus is an influence factor for the valid current range.      </p> | [TerminalCurrentInformation]({{< relref "terminalcurrentinformation.md" >}}) |


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
        <td><a href="{{< relref "terminalspecification.md" >}}">TerminalSpecification</a></td>
        <td>1</td>
        <td><p> Specifies the <i>TerminalCurrentInformation</i> that is applicable for the terminal.      </p></td>
    </tr>
    </tbody>
</table>



