---
title: Net
toc: false
type: specs
date: "2022-03-09"
draft: false
specification: VEC
version: 2.0.0
documentType: "Recommendation"
elementType: Class
classes:
  - Net
menu_name: vec-2.0.0
---
<p> A Net is an undirected link between <i>NetworkPorts</i>.&#160;It defines that the <i>NetworkPorts</i> are related to each other with the <i>Net</i>.      </p>      <p> A <i>Net</i> is normally an instance of a <i>NetType.</i>&#160;E.g. if &quot;CAN-BUS&quot; is defined as a <i>NetType</i> typical <i>Nets</i> would be &quot;BODY-CAN&quot;, &quot;AUDIO-CAN&quot;.      </p>

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
| [NetworkPort]({{< relref "networkport.md" >}}) | networkPort | 1..* | 1 | References the NetworkPorts that are connected by the Net. |
| [NetType]({{< relref "nettype.md" >}}) | netType | 0..1 |  |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [NetGroup]({{< relref "netgroup.md" >}}) | 0..1 | net | 2..* | References the Nets that are grouped by the NetGroup. |
| [NetSpecification]({{< relref "netspecification.md" >}}) | 1 | net | 0..* | Specifies the Nets defined in the NetSpecification. |
| [Connection]({{< relref "connection.md" >}}) | 0..* | net | 0..1 | References the Net that is realized by the Connection. |
