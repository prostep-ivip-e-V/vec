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
|maxCurrent | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <p>The maximum current value.  </p> | [ConductorCurrentInformation]({{< relref "conductorcurrentinformation.md" >}}) |
|environmentTemperature | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <p>The environment temperature for which this maximum current value is applicable.  </p> | [ConductorCurrentInformation]({{< relref "conductorcurrentinformation.md" >}}) |
|voltage | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <p> The voltage for which this maximum current value is applicable.      </p> | [ConductorCurrentInformation]({{< relref "conductorcurrentinformation.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ConductorSpecification]({{< relref "conductorspecification.md" >}}) | 1 | currentInformation | 0..* | <p> Specifies the current information of the conductor. These are the maximum currents for which the conductor is approved.       </p> |
