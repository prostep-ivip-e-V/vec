﻿---
title: MatingDetail
toc: false
type: specs
date: "2022-03-09"
draft: false
specification: VEC
version: 2.0.0
documentType: "Recommendation"
elementType: Class
classes:
  - MatingDetail
menu_name: vec-2.0.0
---
<p> If the mating of the two terminals is not unambiguously, a MatingDetail can specify the TerminalReceptions that are mated.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | coupling |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 |  | [MatingDetail]({{< relref "matingdetail.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Connection]({{< relref "connection.md" >}}) | connection | 0..* | 0..* | <p> References the <i>Connection</i> that is realized by this <i>MatingPointDetail</i><i>.</i> For example, when a connection is realized by directly plugging or screwing two E/E components together.      </p>      <p> The definition at level of the <i>MatingDetail </i>might be required if the <i>TerminalRole </i>of the MatingPoint carries multiple different potentials (e.g. Coax).      </p> |
| [TerminalReceptionReference]({{< relref "terminalreceptionreference.md" >}}) | firstTerminalReception | 1 | 0..* | References the first terminal reception that is mated. |
| [TerminalReceptionReference]({{< relref "terminalreceptionreference.md" >}}) | secondTerminalReception | 1 | 0..* | References the second terminal reception that is mated. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [MatingPoint]({{< relref "matingpoint.md" >}}) | 1 | matingDetail | 0..* | Specifies the MatingDetails, if a detailed description of the relationships between TerminalReceptions and TerminalReceptions is needed. |
