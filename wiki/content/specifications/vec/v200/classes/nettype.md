---
title: NetType
toc: false
type: specs
date: "2022-03-09"
draft: false
specification: VEC
version: 2.0.0
documentType: "Recommendation"
elementType: Class
classes:
  - NetType
menu_name: vec-2.0.0
---
<p> A <i>NetType</i> defines the different types of Nets used in the <i>NetSpecification</i>. The level of detail of the <i>NetTypes</i> for the can be process dependent.      </p>      <p> A NetType could be just used to differentiate between conventional (analogue) communication and bus communication (digital), it can also already define the different types of digital communication (e.g. CAN, MOST, Ethernet).      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | net |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) |  | <p> Specifies a unique identification of the NetType. The identification is guaranteed to be unique within the NetSpecification.      </p> | [NetType]({{< relref "nettype.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Room for additional, human readable information about the <i>NetType</i>.      </p> | [NetType]({{< relref "nettype.md" >}}) |
|signalType | [SignalType]({{< relref "signaltype.md" >}}) | 0..1 |  | [NetType]({{< relref "nettype.md" >}}) |
|signalSubType | [SignalSubType]({{< relref "signalsubtype.md" >}}) | 0..1 |  | [NetType]({{< relref "nettype.md" >}}) |
|signalInformationType | [SignalInformationType]({{< relref "signalinformationtype.md" >}}) | 0..1 |  | [NetType]({{< relref "nettype.md" >}}) |
|signalTransmissionMediumType | [SignalTransmissionMediumType]({{< relref "signaltransmissionmediumtype.md" >}}) | 0..1 | <p> Specifies the type of the transmission medium for signals of this type.      </p> | [NetType]({{< relref "nettype.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Signal]({{< relref "signal.md" >}}) |  | netType | 0..1 |  |
| [Net]({{< relref "net.md" >}}) |  | netType | 0..1 |  |
| [NetworkPort]({{< relref "networkport.md" >}}) | 0..* | netType | 0..1 |  |
| [NetSpecification]({{< relref "netspecification.md" >}}) | 1 | netType | 0..* |  |
