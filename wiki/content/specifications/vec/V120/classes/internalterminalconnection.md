---
title: InternalTerminalConnection
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> An InternalTerminalConnection represents an electrical connection within a terminal. For standard terminals all receptions (wire- and terminal-receptions) have an electrical connection. For non-standard terminals (e.g. coax) only some receptions have an electrical connection. The InternalTerminalConnection is modeled as a separate class and not as relationship between wire- and terminal-reception, since it is possible that a terminal has only one kind of reception (e.g. a parallel connector, a cavity bridge). (see KBLFRM-302)      </p>    </body> </html> 
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
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the InternalTerminalConnection. The identification is guaranteed to be unique within the TerminalSpecification (this might be for example an internal connection number).      </p>    </body> </html>  | [InternalTerminalConnection]({{< relref "internalterminalconnection.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [TerminalReception]({{< relref "terminalreception.md" >}}) | terminalReception | 0..* | 0..1 | References the TerminalReceptions that participate in the InternalTerminalConnection.  |
| [WireReception]({{< relref "wirereception.md" >}}) | wireReception | 0..* | 0..1 | References the WireReceptions that participate in the InternalTerminalConnection.  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [TerminalSpecification]({{< relref "terminalspecification.md" >}}) | 1 | internalTerminalConnection | 0..* | Specifies the InternalTerminalConnections of the terminal.   |
