---
title: Signal
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html><body><p>Specifies a signal.  </p></body></html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | signal |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Pinning Information & Pinning Variance]({{< relref "../description-of-components/pinning-information-pinning-variance" >}})<br/> [Signal Specification]({{< relref "../connectivity/signal-specification" >}})<br/> [Wiring Specification]({{< relref "../connectivity/wiring-specification" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body> Specifies a unique identification of the Signal. The identification is guaranteed to be unique within the SignalSpecification.   </body> </html>  | [Signal]({{< relref "signal.md" >}}) |
|signalName | [String]({{< relref "string.md" >}}) | 0..1 | <html>   <head>     </head>   <body> Name of the Signal, which is not guaranteed to be unique and is normally function oriented.   </body> </html>  | [Signal]({{< relref "signal.md" >}}) |
|clampName | [String]({{< relref "string.md" >}}) | 0..1 | <html>   <head>     </head>   <body> Specifies the name of the clamp e.g. KL15, KL30, KL31.   </body> </html>  | [Signal]({{< relref "signal.md" >}}) |
|aliasId | [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies additional identifiers for the <i>Signal</i>.      </p>    </body> </html>  | [Signal]({{< relref "signal.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <html><body><p>A human readable description of the signal.  </p></body></html> | [Signal]({{< relref "signal.md" >}}) |
|signalInformationType | [SignalInformationType]({{< relref "signalinformationtype.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies the information type of the signal.      </p>    </body> </html>  | [Signal]({{< relref "signal.md" >}}) |
|signalTransmissionMediumType | [SignalTransmissionMediumType]({{< relref "signaltransmissionmediumtype.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies the type of the transmission medium for the signal.      </p>    </body> </html>  | [Signal]({{< relref "signal.md" >}}) |
|signalForm | [SignalForm]({{< relref "signalform.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies the form of the signal.      </p>    </body> </html>  | [Signal]({{< relref "signal.md" >}}) |
|signalCurve | [SignalCurve]({{< relref "signalcurve.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies the curve of the signal.      </p>    </body> </html>  | [Signal]({{< relref "signal.md" >}}) |
|signalType | [SignalType]({{< relref "signaltype.md" >}}) | 0..1 |  | [Signal]({{< relref "signal.md" >}}) |
|signalSubType | [SignalSubType]({{< relref "signalsubtype.md" >}}) | 0..1 |  | [Signal]({{< relref "signal.md" >}}) |
|nominalVoltage | [NominalVoltage]({{< relref "nominalvoltage.md" >}}) | 0..1 |  | [Signal]({{< relref "signal.md" >}}) |
|dataRate | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <html>   <head>     </head>   <body> Defines the data rate of the signal. This applies only to signals with <i>signalType = 'information</i>' and <i>signalInformationType = 'digital'</i>. For the numerical value, an appropriate IECUnit combination shall be used (e.g. GBit&#160;/&#160;Second). </body> </html> | [Signal]({{< relref "signal.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [InsulationSpecification]({{< relref "insulationspecification.md" >}}) | recommendedInsulationSpecification | 0..1 |  | <html>   <head>     </head>   <body>     <p> Defines a recommended Specification for the insulation (e.g. the color) that implements this signal.      </p>    </body> </html>  |
| [NetType]({{< relref "nettype.md" >}}) | netType | 0..1 |  |  |
| [ConductorSpecification]({{< relref "conductorspecification.md" >}}) | recommendedConductorSpecification | 0..1 |  | <html>   <head>     </head>   <body>     <p> Defines a recommended Specification for the cores that implement this signal.      </p>    </body> </html>  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [SignalSpecification]({{< relref "signalspecification.md" >}}) | 1 | signal | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the signals.      </p>    </body> </html>  |
| [Connection]({{< relref "connection.md" >}}) | 0..* | signal | 0..1 | References the signal that is transmitted by the connection.  |
| [WireElementReference]({{< relref "wireelementreference.md" >}}) | 0..* | signal | 0..1 | References the signal that is transmitted by the WireElementReference.  |
| [PinComponentBehavior]({{< relref "pincomponentbehavior.md" >}}) | 0..* | signal | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies the <i>Signal </i>associated with the pin in this behavior.      </p>    </body> </html>  |
| [ComponentPort]({{< relref "componentport.md" >}}) | 0..* | signal | 0..1 | <html>   <head>     </head>   <body>     <p> References the <i>Signal</i> that is associated with the <i>ComponentPort</i>.      </p>    </body> </html>  |
