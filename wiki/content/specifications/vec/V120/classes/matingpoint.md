---
title: MatingPoint
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html><body><p>A MatingPoint defines the Mating of two terminals. This normally occurs when two inliners are connected. Then terminals of one side (female) are mated with terminals of the other side (male).  </p></body></html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | mating |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Coupling Specification]({{< relref "../connectivity/coupling-specification" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the MatingPoint. The identification is guaranteed to be unique within the MatingSpecification.      </p>    </body> </html>  | [MatingPoint]({{< relref "matingpoint.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [TerminalRole]({{< relref "terminalrole.md" >}}) | secondTerminalRole | 1 | 0..* | References the second terminal that is mated.  |
| [TerminalRole]({{< relref "terminalrole.md" >}}) | firstTerminalRole | 1 | 0..* | References the first terminal that is mated.  |
| [MatingDetail]({{< relref "matingdetail.md" >}}) | matingDetail | 0..* | 1 | Specifies the MatingDetails, if a detailed description of the relationships between TerminalReceptions and TerminalReceptions is needed.   |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [CouplingPoint]({{< relref "couplingpoint.md" >}}) | 1 | matingPoint | 0..* | Specifies the MatingPoints defined by the MatingSpecification.  |
