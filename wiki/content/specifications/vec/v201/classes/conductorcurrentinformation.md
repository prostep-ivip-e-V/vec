---
title: ConductorCurrentInformation
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - ConductorCurrentInformation
menu_name: vec-2.0.1
---
<p> The <i>ConductorCurrentInformation</i> specifies the maximum current for which a conductor is approved. As the maximum current is dependent from the voltage and the environment temperature it is modelled as a class and not only as an attribute.      </p>

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
|maxCurrent| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <p>The maximum current value.  </p> | [ConductorCurrentInformation]({{< relref "conductorcurrentinformation.md" >}}) |
|environmentTemperature| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <p>The environment temperature for which this maximum current value is applicable.  </p> | [ConductorCurrentInformation]({{< relref "conductorcurrentinformation.md" >}}) |
|voltage| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <p> The voltage for which this maximum current value is applicable.      </p> | [ConductorCurrentInformation]({{< relref "conductorcurrentinformation.md" >}}) |


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
        <td>currentInformation</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "conductorspecification.md" >}}">ConductorSpecification</a></td>
        <td>1</td>
        <td><p> Specifies the current information of the conductor. These are the maximum currents for which the conductor is approved.       </p></td>
    </tr>
    </tbody>
</table>



