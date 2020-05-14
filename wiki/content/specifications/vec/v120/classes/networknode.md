---
title: NetworkNode
toc: false
type: specs
date: "2020-05-11"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - NetworkNode
menu_name: vec-1.2.0
---
<p> A NetworkNode is a representative for an actor in the electric system, e.g. an actuator, a sensor, an ECU      </p>

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
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the NetworkNode. The identification is guaranteed to be unique within the NetSpecification.      </p> | [NetworkNode]({{< relref "networknode.md" >}}) |
|abbreviation | [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..* | <p> Room for a short name of the NetworkNode.      </p> | [NetworkNode]({{< relref "networknode.md" >}}) |
|networkNodeType | [NetworkNodeType]({{< relref "networknodetype.md" >}}) | 0..1 | <p> Specifies the type of a NetworkNode. Common values are agreed as an <i>OpenEnumeration</i>.      </p> | [NetworkNode]({{< relref "networknode.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p>Room for additional, human readable information about the NetworkNode. </p> | [NetworkNode]({{< relref "networknode.md" >}}) |
|subType | [NetworkNodeSubType]({{< relref "networknodesubtype.md" >}}) | 0..1 | <p> Specifies the sub type of a NetworkNode. The sub type allows a differentiation within a specific type. E.g. an actuator can be differentiated into lamps, speakers, motors.      </p> | [NetworkNode]({{< relref "networknode.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [UsageNode]({{< relref "usagenode.md" >}}) | realizedUsageNode | 0..1 | 0..* | <p> References the <i>UsageNode</i> that is realized by this <i>NetworkNode</i>.      </p> |
| [NetworkPort]({{< relref "networkport.md" >}}) | port | 0..* | 1 | Specifies the NetworkPorts of a NetworkNode. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [NetSpecification]({{< relref "netspecification.md" >}}) | 1 | networkNode | 0..* | <p> Specifies the NetworkNodes defined in the NetSpecification.      </p> |
| [ComponentNode]({{< relref "componentnode.md" >}}) | 0..* | networkNode | 0..1 | References the NetworkNode that is realized by the ComponentNode. |
