---
title: ConductorCurrentInformation
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> The <i>ConductorCurrentInformation</i> specifies the maximum current for which a conductor is approved. As the maximum current is dependent from the voltage and the environment temperature it is modeled as a class and not only as an attribute.      </p>    </body> </html> 
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
|maxCurrent | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <html><body><p>The maximum current value.  </p></body></html> | [ConductorCurrentInformation]({{< relref "conductorcurrentinformation.md" >}}) |
|environmentTemperature | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <html><body><p>The environment temperature for which this maximum current value is applicable.  </p></body></html> | [ConductorCurrentInformation]({{< relref "conductorcurrentinformation.md" >}}) |
|voltage | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> The voltage for which this maximum current value is applicable.      </p>    </body> </html>  | [ConductorCurrentInformation]({{< relref "conductorcurrentinformation.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ConductorSpecification]({{< relref "conductorspecification.md" >}}) | 1 | currentInformation | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the current information of the conductor. These are the maximum currents for which the conductor is approved.       </p>    </body> </html>  |
