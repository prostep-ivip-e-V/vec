---
title: InternalTerminalConnection
toc: false
type: specs
date: "2023-03-24"
draft: false
specification: VEC
version: 2.0.2
documentType: "Recommendation"
elementType: Class
classes:
  - InternalTerminalConnection
menu_name: vec-2.0.2
---
<p> An InternalTerminalConnection represents an electrical connection within a terminal. For standard terminals all receptions (wire- and terminal-receptions) have an electrical connection. For non-standard terminals (e.g. coax) only some receptions have an electrical connection. The InternalTerminalConnection is modelled as a separate class and not as relationship between wire- and terminal-reception, since it is possible that a terminal has only one kind of reception (e.g. a parallel connector, a cavity bridge). (see KBLFRM-302)      </p>

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
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the InternalTerminalConnection. The identification is guaranteed to be unique within the TerminalSpecification (this might be for example an internal connection number).      </p> | [InternalTerminalConnection]({{< relref "internalterminalconnection.md" >}}) |

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
        <td>wireReception</td>
        <td><a href="{{< relref "wirereception.md" >}}">WireReception</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..1</td>
        <td>References the WireReceptions that participate in the InternalTerminalConnection.</td>
    </tr>
    <tr>
        <td>terminalReception</td>
        <td><a href="{{< relref "terminalreception.md" >}}">TerminalReception</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..1</td>
        <td>References the TerminalReceptions that participate in the InternalTerminalConnection.</td>
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
        <td>internalTerminalConnection</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "terminalspecification.md" >}}">TerminalSpecification</a></td>
        <td>1</td>
        <td>Specifies the InternalTerminalConnections of the terminal.</td>
    </tr>
    </tbody>
</table>



