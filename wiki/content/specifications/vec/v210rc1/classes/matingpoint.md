---
title: MatingPoint
toc: false
type: specs
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - MatingPoint
menu_name: vec-2.1.0
---
<p>A MatingPoint defines the Mating of two terminals. This normally occurs when two inliners are connected. Then terminals of one side (female) are mated with terminals of the other side (male).  </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | coupling |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the <i>MatingPoint</i>. The identification is guaranteed to be unique within a <i>CouplingPoint</i>.      </p> | [MatingPoint]({{< relref "matingpoint.md" >}}) |

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
        <td>matingDetail</td>
        <td><a href="{{< relref "matingdetail.md" >}}">MatingDetail</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Specifies the MatingDetails, if a detailed description of the relationships between TerminalReceptions and TerminalReceptions is needed.</td>
    </tr>
    <tr>
        <td>firstTerminalRole</td>
        <td><a href="{{< relref "terminalrole.md" >}}">TerminalRole</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the first terminal that is mated.</td>
    </tr>
    <tr>
        <td>secondTerminalRole</td>
        <td><a href="{{< relref "terminalrole.md" >}}">TerminalRole</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the second terminal that is mated.</td>
    </tr>
    <tr>
        <td>connection</td>
        <td><a href="{{< relref "connection.md" >}}">Connection</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> References the <i>Connection</i> that is realized by this <i>MatingPoint</i><i>.</i> For example, when a connection is realized by directly plugging or screwing two E/E components together.      </p></td>
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
        <td>matingPoint</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "couplingpoint.md" >}}">CouplingPoint</a></td>
        <td>1</td>
        <td><p> Specifies the <i>MatingPoints</i> defined within the <i>CouplingPoint</i>.      </p></td>
    </tr>
    </tbody>
</table>



