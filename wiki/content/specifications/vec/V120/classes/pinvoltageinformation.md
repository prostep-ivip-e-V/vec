---
title: PinVoltageInformation
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Allows the definition of voltages for a pin of an <i>EEComponent</i>. A current can be further specified by a duration. Attributes of the type <i>PinVoltageInformation</i> normally have the multiplicity [0..*]. This means that such an attribute can have <i>PinVoltageInformation</i> entries for different types and durations. It must not have multiple entries for the same type and duration.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Pinning Information & Pinning Variance]({{< relref "../description-of-components/pinning-information-pinning-variance" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|type | [PinVoltageType]({{< relref "pinvoltagetype.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Defines the type of the voltage.      </p>    </body> </html>  | [PinVoltageInformation]({{< relref "pinvoltageinformation.md" >}}) |
|voltage | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> The voltage of the pin.      </p>    </body> </html>  | [PinVoltageInformation]({{< relref "pinvoltageinformation.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PinTiming]({{< relref "pintiming.md" >}}) | timing | 0..* | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies the timing of the <i>PinVoltageInformation</i>.      </p>    </body> </html>  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [PinComponentBehavior]({{< relref "pincomponentbehavior.md" >}}) | 1 | voltageInformation | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the voltage information of the <i>PinComponent</i> in this <i>PinComponentBehavior</i>. Since the voltage values of a pin can be defined for different types and times it is possible to define multiple <i>PinVoltageInformations</i> for a <i>PinComponentBehavior</i>.      </p>    </body> </html>  |
