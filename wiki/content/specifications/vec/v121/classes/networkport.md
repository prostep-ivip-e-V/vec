---
title: NetworkPort
toc: false
type: specs
date: "2021-10-18"
draft: false
specification: VEC
version: 1.2.1
documentType: "Recommendation"
elementType: Class
classes:
  - NetworkPort
menu_name: vec-1.2.1
---
<p> NetworkPort is the source or the receiver of a of a Net.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | net |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the NetworkPort. The identification is guaranteed to be unique within the NetSpecification.      </p> | [NetworkPort]({{< relref "networkport.md" >}}) |
|signalDirection | [SignalDirection]({{< relref "signaldirection.md" >}}) | 0..1 | <p>Specifies the direction of the signal on this NetworkPort.  </p> | [NetworkPort]({{< relref "networkport.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p>Room for additional, human readable information about the NetworkPort. </p> | [NetworkPort]({{< relref "networkport.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [NetType]({{< relref "nettype.md" >}}) | netType | 0..1 | 0..* |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Net]({{< relref "net.md" >}}) | 1 | networkPort | 1..* | References the NetworkPorts that are connected by the Net. |
| [ComponentPort]({{< relref "componentport.md" >}}) | 0..* | networkPort | 0..1 | References the NetworkPort that is realized by the ComponentPort. |
| [NetworkNode]({{< relref "networknode.md" >}}) | 1 | port | 0..* | Specifies the NetworkPorts of a NetworkNode. |
