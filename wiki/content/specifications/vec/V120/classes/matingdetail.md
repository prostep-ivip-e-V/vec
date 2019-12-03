---
title: MatingDetail
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> If the mating of the two terminals is not unambiguously, a MatingDetail can specify the TerminalReceptions that are mated.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | mating |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Coupling Specification]({{< relref "../connectivity/coupling-specification" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 |  | [MatingDetail]({{< relref "matingdetail.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [TerminalReceptionReference]({{< relref "terminalreceptionreference.md" >}}) | firstTerminalReception | 1 | 0..* | References the first terminal reception that is mated.  |
| [TerminalReceptionReference]({{< relref "terminalreceptionreference.md" >}}) | secondTerminalReception | 1 | 0..* | References the second terminal reception that is mated.  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [MatingPoint]({{< relref "matingpoint.md" >}}) | 1 | matingDetail | 0..* | Specifies the MatingDetails, if a detailed description of the relationships between TerminalReceptions and TerminalReceptions is needed.   |
