---
title: TerminalCurrentInformation
toc: false
type: specs
date: "2025-09-19"
draft: false
specification: VEC
version: 2.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - TerminalCurrentInformation
menu_name: vec-2.2.0
---
<p> Allows the definition of valid current ranges for a terminal. A current range is always defined for a <i>coreCrossSectionArea</i> and a <i>nominalVoltage</i>. Attributes of the type <i>TerminalCurrentInformation</i> normally have the multiplicity <i>[0..*].</i> This means that such an attribute can have <i>TerminalCurrentInformation</i> entries for different <i>coreCrossSectionAreas</i>, <i>nominalVoltages</i>, <i>environmentTemperature</i> and mating terminals. It must not have multiple entries for the same values.      </p>

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
|nominalVoltage| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Specifies the nominalVoltage for which the CurrentRangeInformation is valid.  </p> | [TerminalCurrentInformation]({{< relref "terminalcurrentinformation.md" >}}) |
|coreCrossSectionArea| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <p> Specifies the coreCrossSectionArea for which the CurrentRangeInformation is valid. The coreCrossSectionArea is a relevant information, because the thermal absorption of the core depends on the cross-section area and thus is an influence factor for the valid current range.      </p> | [TerminalCurrentInformation]({{< relref "terminalcurrentinformation.md" >}}) |
|environmentTemperature| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>The environment temperature for which this maximum current value is applicable.  </p> | [TerminalCurrentInformation]({{< relref "terminalcurrentinformation.md" >}}) |

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
        <td>validForMatingTerminal</td>
        <td><a href="{{< relref "partversion.md" >}}">PartVersion</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><i>PartVersions</i> of mating terminals for which this <i>TerminalCurrentInformation</i> is valid. This is a relevant information, because the thermal absorption of the counterpart is a relevant influence factor for possible current.</td>
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
        <td><a href="{{< relref "terminalspecification.md" >}}">TerminalSpecification</a></td>
        <td>1</td>
        <td><p> Specifies the <i>TerminalCurrentInformation</i> that is applicable for the terminal.      </p></td>
    </tr>
    </tbody>
</table>



