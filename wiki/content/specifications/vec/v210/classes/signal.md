---
title: Signal
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - Signal
menu_name: vec-2.1.0
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
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the Signal. The identification is guaranteed to be unique within the SignalSpecification.      </p> | [Signal]({{< relref "signal.md" >}}) |
|signalName| [String]({{< relref "string.md" >}}) | 0..1 | <p> Name of the Signal, which is not guaranteed to be unique and is normally function oriented.      </p> | [Signal]({{< relref "signal.md" >}}) |
|clampName| [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies the name of the clamp e.g. KL15, KL30, KL31.      </p> | [Signal]({{< relref "signal.md" >}}) |
|aliasId| [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <p> Specifies additional identifiers for the <i>Signal</i>.      </p> | [Signal]({{< relref "signal.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p>A human readable description of the signal.  </p> | [Signal]({{< relref "signal.md" >}}) |
|signalInformationType| [SignalInformationType]({{< relref "signalinformationtype.md" >}}) | 0..1 | <p> Specifies the information type of the signal.      </p> | [Signal]({{< relref "signal.md" >}}) |
|signalTransmissionMediumType| [SignalTransmissionMediumType]({{< relref "signaltransmissionmediumtype.md" >}}) | 0..1 | <p> Specifies the type of the transmission medium for the signal.      </p> | [Signal]({{< relref "signal.md" >}}) |
|signalForm| [SignalForm]({{< relref "signalform.md" >}}) | 0..1 | <p> Specifies the form of the signal.      </p> | [Signal]({{< relref "signal.md" >}}) |
|signalCurve| [SignalCurve]({{< relref "signalcurve.md" >}}) | 0..1 | <p> Specifies the curve of the signal.      </p> | [Signal]({{< relref "signal.md" >}}) |
|signalType| [SignalType]({{< relref "signaltype.md" >}}) | 0..1 |  | [Signal]({{< relref "signal.md" >}}) |
|signalSubType| [SignalSubType]({{< relref "signalsubtype.md" >}}) | 0..1 |  | [Signal]({{< relref "signal.md" >}}) |
|currentType| [CurrentType]({{< relref "currenttype.md" >}}) | 0..1 |  | [Signal]({{< relref "signal.md" >}}) |
|nominalVoltage| [NominalVoltage]({{< relref "nominalvoltage.md" >}}) | 0..1 |  | [Signal]({{< relref "signal.md" >}}) |
|dataRate| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Defines the data rate of the signal. This applies only to signals with <i>signalType = 'information</i>' and <i>signalInformationType = 'digital'</i>. For the numerical value, an appropriate IECUnit combination shall be used (e.g. GBit&#160;/&#160;Second).      </p> | [Signal]({{< relref "signal.md" >}}) |

## Outgoing Relations
<table>
    <thead>
        <tr>
           <th colspan="6">Other End</th>
           <th colspan="1">This End</th>
           <th colspan="1">General</th>
        </tr>
        <tr>
           <th>Role</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Agg.{{< info agg >}}</th>
           <th>Unique{{< info unique >}}</th>
           <th>Ordered{{< info ordered >}}</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>recommendedInsulationSpecification</td>
        <td><a href="{{< relref "insulationspecification.md" >}}">InsulationSpecification</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td></td>
        <td><p> Defines a recommended Specification for the insulation (e.g. the color) that implements this signal.      </p></td>
    </tr>
    <tr>
        <td>wireTupleRequirements</td>
        <td><a href="{{< relref "wiretuplespecification.md" >}}">WireTupleSpecification</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td></td>
        <td><p> Defines a requirement for wire tuples.      </p></td>
    </tr>
    <tr>
        <td>netType</td>
        <td><a href="{{< relref "nettype.md" >}}">NetType</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>recommendedConductorSpecification</td>
        <td><a href="{{< relref "conductorspecification.md" >}}">ConductorSpecification</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td></td>
        <td><p> Defines a recommended Specification for the cores that implement this signal.      </p></td>
    </tr>
    </tbody>
</table>

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
           <th>Agg.{{< info agg >}}</th>
           <th>Unique{{< info unique >}}</th>
           <th>Ordered{{< info ordered >}}</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>signal</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "wireelementreference.md" >}}">WireElementReference</a></td>
        <td>0..*</td>
        <td>References the signal that is transmitted by the WireElementReference.</td>
    </tr>
    <tr>
        <td>signal</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "signalspecification.md" >}}">SignalSpecification</a></td>
        <td>1</td>
        <td><p> Specifies the signals.      </p></td>
    </tr>
    <tr>
        <td>signal</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "connection.md" >}}">Connection</a></td>
        <td>0..*</td>
        <td>References the signal that is transmitted by the connection.</td>
    </tr>
    <tr>
        <td>signal</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "componentport.md" >}}">ComponentPort</a></td>
        <td>0..*</td>
        <td><p> References the <i>Signal</i> that is associated with the <i>ComponentPort</i>.      </p></td>
    </tr>
    <tr>
        <td>signal</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "pincomponentbehavior.md" >}}">PinComponentBehavior</a></td>
        <td>0..*</td>
        <td><p> Specifies the <i>Signal </i>associated with the pin in this behavior.      </p></td>
    </tr>
    </tbody>
</table>



