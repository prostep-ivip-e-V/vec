---
title: MatingDetail
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - MatingDetail
menu_name: vec-2.1.0
---
<p> If the mating of the two terminals is not unambiguously, a MatingDetail can specify the TerminalReceptions that are mated.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | coupling |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 |  | [MatingDetail]({{< relref "matingdetail.md" >}}) |

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
        <td>firstTerminalReception</td>
        <td><a href="{{< relref "terminalreceptionreference.md" >}}">TerminalReceptionReference</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the first terminal reception that is mated.</td>
    </tr>
    <tr>
        <td>connection</td>
        <td><a href="{{< relref "connection.md" >}}">Connection</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> References the <i>Connection</i> that is realized by this <i>MatingPointDetail</i><i>.</i> For example, when a connection is realized by directly plugging or screwing two E/E components together.      </p>      <p> The definition at level of the <i>MatingDetail </i>might be required if the <i>TerminalRole </i>of the MatingPoint carries multiple different potentials (e.g. Coax).      </p></td>
    </tr>
    <tr>
        <td>secondTerminalReception</td>
        <td><a href="{{< relref "terminalreceptionreference.md" >}}">TerminalReceptionReference</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the second terminal reception that is mated.</td>
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
        <td>matingDetail</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "matingpoint.md" >}}">MatingPoint</a></td>
        <td>1</td>
        <td>Specifies the MatingDetails, if a detailed description of the relationships between TerminalReceptions and TerminalReceptions is needed.</td>
    </tr>
    </tbody>
</table>



