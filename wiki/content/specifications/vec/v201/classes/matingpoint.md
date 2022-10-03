---
title: MatingPoint
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - MatingPoint
menu_name: vec-2.0.1
---
<p>A MatingPoint defines the Mating of two terminals. This normally occurs when two inliners are connected. Then terminals of one side (female) are mated with terminals of the other side (male).  </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | coupling |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the <i>MatingPoint</i>. The identification is guaranteed to be unique within a <i>CouplingPoint</i>.      </p> | [MatingPoint]({{< relref "matingpoint.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Connection]({{< relref "connection.md" >}}) | connection | 0..* | 0..* | <p> References the <i>Connection</i> that is realized by this <i>MatingPoint</i><i>.</i> For example, when a connection is realized by directly plugging or screwing two E/E components together.      </p> |
| [TerminalRole]({{< relref "terminalrole.md" >}}) | firstTerminalRole | 1 | 0..* | References the first terminal that is mated. |
| [TerminalRole]({{< relref "terminalrole.md" >}}) | secondTerminalRole | 1 | 0..* | References the second terminal that is mated. |
| [MatingDetail]({{< relref "matingdetail.md" >}}) | matingDetail | 0..* | 1 | Specifies the MatingDetails, if a detailed description of the relationships between TerminalReceptions and TerminalReceptions is needed. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [CouplingPoint]({{< relref "couplingpoint.md" >}}) | 1 | matingPoint | 0..* | <p> Specifies the <i>MatingPoints</i> defined within the <i>CouplingPoint</i>.      </p> |
