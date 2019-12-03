---
title: TerminalPairing
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A <i>TerminalPairing</i> is a standard reference setup of exactly two terminals and a defined length of a core contacted to both terminals. The<i>TerminalPairing </i>defines physical properties that apply to this combination.      </p>      <p> &#160;      </p>  </body> </html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | contact_system |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Terminal Pairing]({{< relref "../description-of-components/terminal-pairing" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|contactResistance | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | Specifies the resistance of the terminal pairing. | [TerminalPairing]({{< relref "terminalpairing.md" >}}) |
|matingForce | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies the joining force of the two terminals.      </p>    </body> </html>  | [TerminalPairing]({{< relref "terminalpairing.md" >}}) |
|unmatingForce | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies the force required to unmate the two terminals.      </p>  </body> </html> | [TerminalPairing]({{< relref "terminalpairing.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [ConductorSpecification]({{< relref "conductorspecification.md" >}}) | referencedCoreSpecification | 1 | 0..* | <html>   <head>     </head>   <body>     <p> References the CoreSpecification that is used on both sides of the ContactSystem.      </p>    </body> </html>  |
| [PartVersion]({{< relref "partversion.md" >}}) | firstTerminal | 1 | 0..* | <html>   <head>     </head>   <body>     <p> References the first terminal of the TerminalPairing.      </p>  </body> </html> |
| [PartVersion]({{< relref "partversion.md" >}}) | secondTerminal | 1 | 0..* | <html>   <head>     </head>   <body>     <p> References the second terminal of the TerminalPairing (first and second does not imply any specific order).      </p>  </body> </html> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [TerminalPairingSpecification]({{< relref "terminalpairingspecification.md" >}}) | 1 | terminalPairing | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the TerminalPairings described by this TerminalPairingSpecification.      </p>  </body> </html> |
