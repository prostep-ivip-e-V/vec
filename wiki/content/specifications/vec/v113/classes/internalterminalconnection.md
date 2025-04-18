﻿---
title: InternalTerminalConnection
toc: false
type: specs
date: "2017-02-21"
draft: false
specification: VEC
version: 1.1.3
documentType: "Recommendation"
elementType: Class
classes:
  - InternalTerminalConnection
menu_name: vec-1.1.3
---
<p> An InternalTerminalConnection represents an electrical connection within a terminal. For standard terminals all receptions (wire- and terminal-receptions) have an electrical connection. For non-standard terminals (e.g. coax) only some receptions have an electrical connection. The InternalTerminalConnection is modeled as a separate class and not as relationship between wire- and terminal-reception, since it is possible that a terminal has only one kind of reception (e.g. a parallel connector, a cavity bridge). (see KBLFRM-302)      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the InternalTerminalConnection. The identification is guaranteed to be unique within the TerminalSpecification (this might be for example an internal connection number).      </p> | [InternalTerminalConnection]({{< relref "internalterminalconnection.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [TerminalReception]({{< relref "terminalreception.md" >}}) | terminalReception | 0..* | 0..1 | References the TerminalReceptions that participate in the InternalTerminalConnection. |
| [WireReception]({{< relref "wirereception.md" >}}) | wireReception | 0..* | 0..1 | References the WireReceptions that participate in the InternalTerminalConnection. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [TerminalSpecification]({{< relref "terminalspecification.md" >}}) | 1 | internalTerminalConnection | 0..* | Specifies the InternalTerminalConnections of the terminal. |
