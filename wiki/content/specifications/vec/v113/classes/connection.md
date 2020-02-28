---
title: Connection
toc: false
type: specs
date: "2017-02-21"
draft: false
specification: VEC
version: 1.1.3
documentType: "Recommendation"
elementType: Class
classes:
  - Connection
menu_name: vec-1.1.3
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
| [Signal]({{< relref "signal.md" >}}) | signal | 0..1 | 0..* | References the signal that is transmitted by the connection. |
| [Net]({{< relref "net.md" >}}) | net | 0..1 | 0..* | References the Net that is realized by the Connection. |
| [ConnectionEnd]({{< relref "connectionend.md" >}}) | connectionEnd | 2..* | 1 | Specifies the ConnectionEnds of the Connection. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [WireElementReference]({{< relref "wireelementreference.md" >}}) | 0..* | connection | 0..1 | References the Connection that is realized by the referenced WireElement (WireElementReference). KBLFRM-341 |
| [ConnectionGroup]({{< relref "connectiongroup.md" >}}) | 0..* | connection | 2..* | References the Connections that are grouped by the ConnectionGroup. |
| [ConnectionSpecification]({{< relref "connectionspecification.md" >}}) | 1 | connection | 0..* | Specifies the Connection defined by the ConnectionSpecification. |
