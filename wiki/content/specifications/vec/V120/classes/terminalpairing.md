---
title: TerminalPairing
toc: false
type: specs
date: "2020-05-11"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - TerminalPairing
menu_name: vec-1.2.0
---
<p> A <i>TerminalPairing</i> is a standard reference setup of exactly two terminals and a defined length of a core contacted to both terminals. The <i>TerminalPairing </i>defines physical properties that apply to this combination.      </p>      <p> &#160;      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | terminal_pairing |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|contactResistance | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | Specifies the resistance of the terminal pairing. | [TerminalPairing]({{< relref "terminalpairing.md" >}}) |
|matingForce | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the joining force of the two terminals.      </p> | [TerminalPairing]({{< relref "terminalpairing.md" >}}) |
|unmatingForce | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the force required to unmate the two terminals.      </p> | [TerminalPairing]({{< relref "terminalpairing.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PartVersion]({{< relref "partversion.md" >}}) | firstTerminal | 1 | 0..* | <p> References the first terminal of the TerminalPairing.      </p> |
| [ConductorSpecification]({{< relref "conductorspecification.md" >}}) | referencedCoreSpecification | 1 | 0..* | <p> References the CoreSpecification that is used on both sides of the ContactSystem.      </p> |
| [PartVersion]({{< relref "partversion.md" >}}) | secondTerminal | 1 | 0..* | <p> References the second terminal of the TerminalPairing (first and second does not imply any specific order).      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [TerminalPairingSpecification]({{< relref "terminalpairingspecification.md" >}}) | 1 | terminalPairing | 0..* | <p> Specifies the TerminalPairings described by this TerminalPairingSpecification.      </p> |
