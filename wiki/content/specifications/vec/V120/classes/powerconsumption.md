---
title: PowerConsumption
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Defines the power consumption of an <i>EEComponent</i>. An <i>EEComponent</i> can have multiple different <i>PowerConsumptions</i> e.g. standby, maximum. An <i>EEComponent</i> can have multiple <i>PowerConsumptions</i>, but must not have more than one <i>PowerConsumptions</i> of the same <i>type</i>.      </p>    </body> </html> 
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
|type | [String]({{< relref "string.md" >}}) |  | <html>   <head>     </head>   <body>     <p> The type of a <i>PowerConsumption</i>. This should be an enumeration of values defined in a conformance class.      </p>    </body> </html>  | [PowerConsumption]({{< relref "powerconsumption.md" >}}) |
|value | [NumericalValue]({{< relref "numericalvalue.md" >}}) |  | <html>   <head>     </head>   <body>     <p> Specifies the power consumption for this type of <i>PowerConsumption</i>.      </p>    </body> </html>  | [PowerConsumption]({{< relref "powerconsumption.md" >}}) |

