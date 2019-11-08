---
title: PinTiming
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Specifies the timing for a <i>PinCurrentInformation </i>or a <i>PinVoltageInformation</i>.      </p>    </body> </html> 
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
|type | [PinTimingType]({{< relref "pintimingtype.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies the type of the timing.      </p>    </body> </html>  | [PinTiming]({{< relref "pintiming.md" >}}) |
|time | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies the time value of the timing.      </p>    </body> </html>  | [PinTiming]({{< relref "pintiming.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [PinCurrentInformation]({{< relref "pincurrentinformation.md" >}}) | 0..1 | timing | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the timing of the <i>PinCurrentInformation.</i>      </p>    </body> </html>  |
| [PinVoltageInformation]({{< relref "pinvoltageinformation.md" >}}) | 0..1 | timing | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the timing of the <i>PinVoltageInformation</i>.      </p>    </body> </html>  |
