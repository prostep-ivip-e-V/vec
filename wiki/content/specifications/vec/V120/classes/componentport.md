---
title: ComponentPort
toc: false
type: specs
date: "2020-02-01"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - ComponentPort
menu_name: vec-1.2.0
---
<p> Defines a port of ComponentNode. A ComponentPort is usually the realization of a NetworkPort. Electrological connections are defined between two or more ComponentPorts.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | schematic |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the ComponentPort. The identification is guaranteed to be unique within the ComponentConnector.      </p> | [ComponentPort]({{< relref "componentport.md" >}}) |
|signalDirection | [SignalDirection]({{< relref "signaldirection.md" >}}) | 0..1 | <p>Specifies the direction of the signal on this ComponentPort.  </p> | [ComponentPort]({{< relref "componentport.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p>Room for additional, human readable information about the ComponentPort. </p> | [ComponentPort]({{< relref "componentport.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Signal]({{< relref "signal.md" >}}) | signal | 0..1 | 0..* | <p> References the <i>Signal</i> that is associated with the <i>ComponentPort</i>.      </p> |
| [NetworkPort]({{< relref "networkport.md" >}}) | networkPort | 0..1 | 0..* | References the NetworkPort that is realized by the ComponentPort. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ComponentConnector]({{< relref "componentconnector.md" >}}) | 1 | componentPort | 0..* | Specifies the ComponentPorts of the ComponentConnector. |
| [CavityReference]({{< relref "cavityreference.md" >}}) | 0..* | componentPort | 0..1 | <p> References the <i>ComponentPort</i> that is implemented by this <i>CavityReference</i>.      </p> |
| [TerminalRole]({{< relref "terminalrole.md" >}}) | 0..* | componentPort | 0..1 | References the ComponentPort that is realized by the referenced Terminal (OccurrenceOrUsage with TerminalRole). KBLFRM-341 |
| [ConnectionEnd]({{< relref "connectionend.md" >}}) | 0..* | connectedComponentPort | 1 | References the ComponentPort that is connected by the ConnectionEnd. |
