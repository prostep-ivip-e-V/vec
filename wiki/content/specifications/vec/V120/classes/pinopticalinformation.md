---
title: PinOpticalInformation
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Allows the specification of optical information in a PinComponentBehavior.      </p>    </body> </html> 
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
|frequency | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> The frequency of the optical signal.      </p>    </body> </html>  | [PinOpticalInformation]({{< relref "pinopticalinformation.md" >}}) |
|attenuation | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> The attenuation of the optical pin at the defined frequency.       </p>    </body> </html>  | [PinOpticalInformation]({{< relref "pinopticalinformation.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [PinComponentBehavior]({{< relref "pincomponentbehavior.md" >}}) | 1 | opticalInformation | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the optical information of the pin, if it has the type optical.      </p>    </body> </html>  |
