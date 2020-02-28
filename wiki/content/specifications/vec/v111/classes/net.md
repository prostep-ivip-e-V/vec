---
title: Net
toc: false
type: specs
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Class
classes:
  - Net
menu_name: vec-1.1.1
---
<p>A Net is an undirected connection between a number of NetworkPorts.  </p>

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
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the Net. The identification is guaranteed to be unique within the NetSpecification.      </p> | [Net]({{< relref "net.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p>Room for additional, human readable information about the Net. </p> | [Net]({{< relref "net.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Signal]({{< relref "signal.md" >}}) | signal | 0..1 | 0..* | <p> References the <i>Signal</i> that is transmitted by the <i>Net</i>.      </p> |
| [NetworkPort]({{< relref "networkport.md" >}}) | networkPort | 1..* | 1 | References the NetworkPorts that are connected by the Net. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [NetGroup]({{< relref "netgroup.md" >}}) | 0..1 | net | 2..* | References the Nets that are grouped by the NetGroup. |
| [NetSpecification]({{< relref "netspecification.md" >}}) | 1 | net | 0..* | Specifies the Nets defined in the NetSpecification. |
| [Connection]({{< relref "connection.md" >}}) | 0..* | net | 0..1 | References the Net that is realized by the Connection. |
