---
title: Signal
toc: false
type: specs
date: "2017-02-21"
draft: false
specification: VEC
version: 1.1.3
documentType: "Recommendation"
elementType: Class
classes:
  - Signal
menu_name: vec-1.1.3
---
<p>Specifies a signal.  </p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | signal |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | Specifies a unique identification of the Signal. The identification is guaranteed to be unique within the SignalSpecification. | [Signal]({{< relref "signal.md" >}}) |
|signalName | [String]({{< relref "string.md" >}}) | 0..1 | Name of the Signal, which is not guaranteed to be unique and is normally function oriented. | [Signal]({{< relref "signal.md" >}}) |
|clampName | [String]({{< relref "string.md" >}}) | 0..1 | Specifies the name of the clamp e.g. KL15, KL30, KL31. | [Signal]({{< relref "signal.md" >}}) |
|aliasId | [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <p> Specifies additional identifiers for the <i>Signal</i>.      </p> | [Signal]({{< relref "signal.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p>A human readable description of the signal.  </p> | [Signal]({{< relref "signal.md" >}}) |
|signalInformationType | [SignalInformationType]({{< relref "signalinformationtype.md" >}}) | 0..1 | <p> Specifies the information type of the signal.      </p> | [Signal]({{< relref "signal.md" >}}) |
|signalTransmissionMediumType | [SignalTransmissionMediumType]({{< relref "signaltransmissionmediumtype.md" >}}) | 0..1 | <p> Specifies the type of the transmission medium for the signal.      </p> | [Signal]({{< relref "signal.md" >}}) |
|signalForm | [SignalForm]({{< relref "signalform.md" >}}) | 0..1 | <p> Specifies the form of the signal.      </p> | [Signal]({{< relref "signal.md" >}}) |
|signalCurve | [SignalCurve]({{< relref "signalcurve.md" >}}) | 0..1 | <p> Specifies the curve of the signal.      </p> | [Signal]({{< relref "signal.md" >}}) |
|signalType | [SignalType]({{< relref "signaltype.md" >}}) | 0..1 |  | [Signal]({{< relref "signal.md" >}}) |
|signalSubType | [SignalSubType]({{< relref "signalsubtype.md" >}}) | 0..1 |  | [Signal]({{< relref "signal.md" >}}) |
|nominalVoltage | [NominalVoltage]({{< relref "nominalvoltage.md" >}}) | 0..1 |  | [Signal]({{< relref "signal.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [InsulationSpecification]({{< relref "insulationspecification.md" >}}) | recommendedInsulationSpecification | 0..1 |  | <p> Defines a recommended Specification for the insulation (e.g. the color) that implements this signal.      </p> |
| [ConductorSpecification]({{< relref "conductorspecification.md" >}}) | recommendedConductorSpecification | 0..1 |  | <p> Defines a recommended Specification for the cores that implement this signal.      </p> |
| [NetType]({{< relref "nettype.md" >}}) | netType | 0..1 |  |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Connection]({{< relref "connection.md" >}}) | 0..* | signal | 0..1 | References the signal that is transmitted by the connection. |
| [WireElementReference]({{< relref "wireelementreference.md" >}}) | 0..* | signal | 0..1 | References the signal that is transmitted by the WireElementReference. |
| [ComponentPort]({{< relref "componentport.md" >}}) | 0..* | signal | 0..1 | <p> References the <i>Signal</i> that is associated with the <i>ComponentPort</i>.      </p> |
| [PinComponentBehavior]({{< relref "pincomponentbehavior.md" >}}) | 0..* | signal | 0..1 | <p> Specifies the <i>Signal </i>associated with the pin in this behavior.      </p> |
| [SignalSpecification]({{< relref "signalspecification.md" >}}) | 1 | signal | 0..* | <p> Specifies the signals.      </p> |
