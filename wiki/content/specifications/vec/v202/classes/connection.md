---
title: Connection
toc: false
type: specs
date: "2023-03-24"
draft: false
specification: VEC
version: 2.0.2
documentType: "Recommendation"
elementType: Class
classes:
  - Connection
menu_name: vec-2.0.2
---
<p> A Connection is an electrological connection between two or more ComponentPorts.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | schematic |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [RoutableElement]({{< relref "routableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the Connection. The identification is guaranteed to be unique within the ConnectionSpecification.      </p> | [Connection]({{< relref "connection.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the Connection.      </p> | [Connection]({{< relref "connection.md" >}}) |
|installationInstruction| [Instruction]({{< relref "instruction.md" >}}) | 0..* | <p> Specifies installation instruction for the connection.      </p> | [Connection]({{< relref "connection.md" >}}) |

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
        <td>net</td>
        <td><a href="{{< relref "net.md" >}}">Net</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the Net that is realized by the Connection.</td>
    </tr>
    <tr>
        <td>connectionEnd</td>
        <td><a href="{{< relref "connectionend.md" >}}">ConnectionEnd</a></td>
        <td>2..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Specifies the ConnectionEnds of the Connection.</td>
    </tr>
    <tr>
        <td>signal</td>
        <td><a href="{{< relref "signal.md" >}}">Signal</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the signal that is transmitted by the connection.</td>
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
        <td>connection</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "matingpoint.md" >}}">MatingPoint</a></td>
        <td>0..*</td>
        <td><p> References the <i>Connection</i> that is realized by this <i>MatingPoint</i><i>.</i> For example, when a connection is realized by directly plugging or screwing two E/E components together.      </p></td>
    </tr>
    <tr>
        <td>connection</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "bridgeterminalrole.md" >}}">BridgeTerminalRole</a></td>
        <td>0..*</td>
        <td><p> References the <i>Connection</i> that is realized by this <i>BridgeTerminalRole.</i>      </p></td>
    </tr>
    <tr>
        <td>connection</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "connectionspecification.md" >}}">ConnectionSpecification</a></td>
        <td>1</td>
        <td>Specifies the Connection defined by the ConnectionSpecification.</td>
    </tr>
    <tr>
        <td>connection</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "matingdetail.md" >}}">MatingDetail</a></td>
        <td>0..*</td>
        <td><p> References the <i>Connection</i> that is realized by this <i>MatingPointDetail</i><i>.</i> For example, when a connection is realized by directly plugging or screwing two E/E components together.      </p>      <p> The definition at level of the <i>MatingDetail </i>might be required if the <i>TerminalRole </i>of the MatingPoint carries multiple different potentials (e.g. Coax).      </p></td>
    </tr>
    <tr>
        <td>connection</td>
        <td>2..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "connectiongroup.md" >}}">ConnectionGroup</a></td>
        <td>0..*</td>
        <td>References the Connections that are grouped by the ConnectionGroup.</td>
    </tr>
    <tr>
        <td>connection</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "wireelementreference.md" >}}">WireElementReference</a></td>
        <td>0..*</td>
        <td>References the Connection that is realized by the referenced WireElement (WireElementReference). KBLFRM-341</td>
    </tr>
    </tbody>
</table>



