---
title: PinComponentBehavior
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A <i>PinComponentBehavior</i> specifies the electrical behavior of a <i>PinComponent.</i> Since the behavior of a pin is configuration dependent (e.g. the software deployed on an ECU) the <i>PinComponentBehavior </i>inherits from <i>ConfigurableElement.</i> Therefore a <i>PinComponent</i> can specify multiple <i>PinComponentBehavior.</i>        </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |


## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Identification of the PinComponentBehavior which identifies it from a user perspective and which must be distinct for all PinComponentBehaviors of a PinComponent.      </p>    </body> </html>  | [PinComponentBehavior]({{< relref "pincomponentbehavior.md" >}}) |
|signalDirection | [SignalDirection]({{< relref "signaldirection.md" >}}) | 0..1 | <html><body><p>The direction of the signal on this pin. </p></body></html> | [PinComponentBehavior]({{< relref "pincomponentbehavior.md" >}}) |
|pinType | [PinType]({{< relref "pintype.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies the <i>PinType</i> of the <i>PinComponent</i>.      </p>    </body> </html>  | [PinComponentBehavior]({{< relref "pincomponentbehavior.md" >}}) |
|applianceType | [PinApplianceType]({{< relref "pinappliancetype.md" >}}) | 0..1 | <html>   <head>     </head>   <body> Classifies the appliance of a Pin in terms of the duration of the appliance (see PinApplianceType).    </body> </html>  | [PinComponentBehavior]({{< relref "pincomponentbehavior.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies additional, human readable information about the <i>PinComponentBehaviour</i>.      </p>    </body> </html>  | [PinComponentBehavior]({{< relref "pincomponentbehavior.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PinCurrentInformation]({{< relref "pincurrentinformation.md" >}}) | currentInformation | 0..* | 1 | <html>   <head>     </head>   <body>     <p> Specifies the current information of the <i>PinComponent</i> in this <i>PinComponentBehavior</i>. Since the current values of a pin can be defined for different types and times it is possible to define multiple <i>PinCurrentInformations</i> for a <i>PinComponentBehavior</i>.      </p>    </body> </html>  |
| [PinVoltageInformation]({{< relref "pinvoltageinformation.md" >}}) | voltageInformation | 0..* | 1 | <html>   <head>     </head>   <body>     <p> Specifies the voltage information of the <i>PinComponent</i> in this <i>PinComponentBehavior</i>. Since the voltage values of a pin can be defined for different types and times it is possible to define multiple <i>PinVoltageInformations</i> for a <i>PinComponentBehavior</i>.      </p>    </body> </html>  |
| [Signal]({{< relref "signal.md" >}}) | signal | 0..1 | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the <i>Signal </i>associated with the pin in this behavior.      </p>    </body> </html>  |
| [PinOpticalInformation]({{< relref "pinopticalinformation.md" >}}) | opticalInformation | 0..* | 1 | <html>   <head>     </head>   <body>     <p> Specifies the optical information of the pin, if it has the type optical.      </p>    </body> </html>  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [PinComponent]({{< relref "pincomponent.md" >}}) | 1 | behaviour | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the configuration dependent electrical behavior of the<i> PinComponent.</i>      </p>    </body> </html>  |
