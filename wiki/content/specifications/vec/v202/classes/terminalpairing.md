---
title: TerminalPairing
toc: false
type: specs
date: "2023-03-24"
draft: false
specification: VEC
version: 2.0.2
documentType: "Recommendation"
elementType: Class
classes:
  - TerminalPairing
menu_name: vec-2.0.2
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
|contactResistance| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | Specifies the resistance of the terminal pairing. | [TerminalPairing]({{< relref "terminalpairing.md" >}}) |
|matingForce| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the joining force of the two terminals.      </p> | [TerminalPairing]({{< relref "terminalpairing.md" >}}) |
|unmatingForce| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the force required to unmate the two terminals.      </p> | [TerminalPairing]({{< relref "terminalpairing.md" >}}) |

## Outgoing Relations
<table>
    <thead>
        <tr>
           <th colspan="6">Other End</th>
           <th colspan="1">This End</th>
           <th colspan="1">General</th>
        </tr>
        <tr>
           <th>Role</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Agg.{{< info agg >}}</th>
           <th>Unique{{< info unique >}}</th>
           <th>Ordered{{< info ordered >}}</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>secondTerminal</td>
        <td><a href="{{< relref "partversion.md" >}}">PartVersion</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> References the second terminal of the TerminalPairing (first and second does not imply any specific order).      </p></td>
    </tr>
    <tr>
        <td>referencedCoreSpecification</td>
        <td><a href="{{< relref "conductorspecification.md" >}}">ConductorSpecification</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> References the CoreSpecification that is used on both sides of the ContactSystem.      </p></td>
    </tr>
    <tr>
        <td>firstTerminal</td>
        <td><a href="{{< relref "partversion.md" >}}">PartVersion</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> References the first terminal of the TerminalPairing.      </p></td>
    </tr>
    </tbody>
</table>

##  Incoming Relations
<table>
    <thead>
        <tr>
           <th colspan="5">This End</th>
           <th colspan="2">Other End</th>
           <th colspan="1">General</th>
        </tr>
        <tr>
           <th>Role</th>
           <th>Mult.</th>
           <th>Agg.{{< info agg >}}</th>
           <th>Unique{{< info unique >}}</th>
           <th>Ordered{{< info ordered >}}</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>terminalPairing</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "terminalpairingspecification.md" >}}">TerminalPairingSpecification</a></td>
        <td>1</td>
        <td><p> Specifies the TerminalPairings described by this TerminalPairingSpecification.      </p></td>
    </tr>
    </tbody>
</table>



