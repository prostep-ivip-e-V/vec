---
title: TerminalReception
toc: false
type: specs
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - TerminalReception
menu_name: vec-2.1.0
---
<p> A TerminalReception is the area of a terminal where the contacting with another terminal (e.g. between a connector housing and a control unit) takes place. Normally the terminal reception is placed in a cavity of a connector housing.     </p>      <p> This class represents such an area on the terminal.      </p>

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
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the TerminalReception. The identification is guaranteed to be unique within the TerminalSpecification (this might be for example a reception number).      </p> | [TerminalReception]({{< relref "terminalreception.md" >}}) |
|gender| [TerminalReceptionGender]({{< relref "terminalreceptiongender.md" >}}) | 0..1 | <p> Specifies the gender of the TerminalReception. The gender is included in the TerminalReception class in order to be able to refer the same TerminalReceptionSpecification gender independent.      </p> | [TerminalReception]({{< relref "terminalreception.md" >}}) |

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
        <td>terminalReceptionSpecification</td>
        <td><a href="{{< relref "terminalreceptionspecification.md" >}}">TerminalReceptionSpecification</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the TerminalReceptionSpecification that specifies the TerminalReception.</td>
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
        <td>terminalReception</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "internalterminalconnection.md" >}}">InternalTerminalConnection</a></td>
        <td>0..1</td>
        <td>References the TerminalReceptions that participate in the InternalTerminalConnection.</td>
    </tr>
    <tr>
        <td>terminalReception</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "terminalreceptionreference.md" >}}">TerminalReceptionReference</a></td>
        <td>0..*</td>
        <td><p> References the <i>TerminalReception</i> that is instanced by this <i>TerminalReceptionReference.</i>      </p></td>
    </tr>
    <tr>
        <td>terminalReception</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "terminalspecification.md" >}}">TerminalSpecification</a></td>
        <td>1</td>
        <td>Specifies the TerminalReceptions of the terminal described by the TerminalSpecification.</td>
    </tr>
    </tbody>
</table>



