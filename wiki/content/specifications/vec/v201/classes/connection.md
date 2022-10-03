---
title: Connection
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - Connection
menu_name: vec-2.0.1
---
<p> A Connection is an electrological connection between two or more ComponentPorts.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | schematic |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [RoutableElement]({{< relref "routableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the Connection. The identification is guaranteed to be unique within the ConnectionSpecification.      </p> | [Connection]({{< relref "connection.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the Connection.      </p> | [Connection]({{< relref "connection.md" >}}) |
|installationInstruction | [Instruction]({{< relref "instruction.md" >}}) | 0..* | <p> Specifies installation instruction for the connection.      </p> | [Connection]({{< relref "connection.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Net]({{< relref "net.md" >}}) | net | 0..1 | 0..* | References the Net that is realized by the Connection. |
| [ConnectionEnd]({{< relref "connectionend.md" >}}) | connectionEnd | 2..* | 1 | Specifies the ConnectionEnds of the Connection. |
| [Signal]({{< relref "signal.md" >}}) | signal | 0..1 | 0..* | References the signal that is transmitted by the connection. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [MatingPoint]({{< relref "matingpoint.md" >}}) | 0..* | connection | 0..* | <p> References the <i>Connection</i> that is realized by this <i>MatingPoint</i><i>.</i> For example, when a connection is realized by directly plugging or screwing two E/E components together.      </p> |
| [ConnectionSpecification]({{< relref "connectionspecification.md" >}}) | 1 | connection | 0..* | Specifies the Connection defined by the ConnectionSpecification. |
| [MatingDetail]({{< relref "matingdetail.md" >}}) | 0..* | connection | 0..* | <p> References the <i>Connection</i> that is realized by this <i>MatingPointDetail</i><i>.</i> For example, when a connection is realized by directly plugging or screwing two E/E components together.      </p>      <p> The definition at level of the <i>MatingDetail </i>might be required if the <i>TerminalRole </i>of the MatingPoint carries multiple different potentials (e.g. Coax).      </p> |
| [BridgeTerminalRole]({{< relref "bridgeterminalrole.md" >}}) | 0..* | connection | 0..* | <p> References the <i>Connection</i> that is realized by this <i>BridgeTerminalRole.</i>      </p> |
| [WireElementReference]({{< relref "wireelementreference.md" >}}) | 0..* | connection | 0..* | References the Connection that is realized by the referenced WireElement (WireElementReference). KBLFRM-341 |
| [ConnectionGroup]({{< relref "connectiongroup.md" >}}) | 0..* | connection | 2..* | References the Connections that are grouped by the ConnectionGroup. |
