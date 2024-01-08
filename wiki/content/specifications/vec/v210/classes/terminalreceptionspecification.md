---
title: TerminalReceptionSpecification
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - TerminalReceptionSpecification
menu_name: vec-2.1.0
---
<p> Specification for the definition of terminal receptions. A TerminalReception is the area of a terminal where the contacting with another terminal (e.g. between a connector housing and a control unit) takes place. Normally the terminal reception is placed in a cavity of a connector housing.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Specification]({{< relref "specification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. For all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|cavityDesign| [String]({{< relref "string.md" >}}) | 0..1 | {{< deprecated since="1.1.4" reason="Has been replaced by the more meaningful mechanism with TerminalTypes.">}}<p> &#160;      </p> | [TerminalReceptionSpecification]({{< relref "terminalreceptionspecification.md" >}}) |
|platingMaterial| [Material]({{< relref "material.md" >}}) | 0..* | <p>Specifies the plating material of the terminal reception. </p> | [TerminalReceptionSpecification]({{< relref "terminalreceptionspecification.md" >}}) |
|primaryLockingType| [PrimaryLockingType]({{< relref "primarylockingtype.md" >}}) | 0..1 | <p>Specifies if the terminal reception has a primary locking and of what type it is. </p> | [TerminalReceptionSpecification]({{< relref "terminalreceptionspecification.md" >}}) |
|pullOutForce| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> The force that the terminal can withstand when being pulled out of the housing. Above that force, the terminal should be expected to be pulled out of the housing (destructive).      </p> | [TerminalReceptionSpecification]({{< relref "terminalreceptionspecification.md" >}}) |
|testingPullOutForce| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> The force that must be applied when the terminal is pulled back out of the housing (without further movement) in order to be able to assume that the terminal is securely latched in the housing (check that the terminal is correctly seated in the connector) and that an insertion process was successful.      </p> | [TerminalReceptionSpecification]({{< relref "terminalreceptionspecification.md" >}}) |
|contactRangeLength| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the length of the contact area (see diagram &quot;Terminal Dimensions&quot;).      </p> | [TerminalReceptionSpecification]({{< relref "terminalreceptionspecification.md" >}}) |

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
        <td>terminalType</td>
        <td><a href="{{< relref "terminaltype.md" >}}">TerminalType</a></td>
        <td>0..1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>0..1</td>
        <td><p> Specifies the terminal type that is associated with the terminal reception.      </p></td>
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
        <td>terminalReceptionSpecification</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "terminalreception.md" >}}">TerminalReception</a></td>
        <td>0..*</td>
        <td>References the TerminalReceptionSpecification that specifies the TerminalReception.</td>
    </tr>
    </tbody>
</table>



