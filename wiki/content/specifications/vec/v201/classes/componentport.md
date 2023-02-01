---
title: ComponentPort
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - ComponentPort
menu_name: vec-2.0.1
---
<p> Defines a port of ComponentNode. A ComponentPort is usually the realization of a NetworkPort. Electrological connections are defined between two or more ComponentPorts.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | schematic |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the ComponentPort. The identification is guaranteed to be unique within the ComponentConnector.      </p> | [ComponentPort]({{< relref "componentport.md" >}}) |
|signalDirection| [SignalDirection]({{< relref "signaldirection.md" >}}) | 0..1 | <p>Specifies the direction of the signal on this ComponentPort.  </p> | [ComponentPort]({{< relref "componentport.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p>Room for additional, human readable information about the ComponentPort. </p> | [ComponentPort]({{< relref "componentport.md" >}}) |

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
           <th>Agg.</th>
           <th>Unique</th>
           <th>Ordered</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>networkPort</td>
        <td><a href="{{< relref "networkport.md" >}}">NetworkPort</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the NetworkPort that is realized by the ComponentPort.</td>
    </tr>
    <tr>
        <td>signal</td>
        <td><a href="{{< relref "signal.md" >}}">Signal</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> References the <i>Signal</i> that is associated with the <i>ComponentPort</i>.      </p></td>
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
           <th>Agg.</th>
           <th>Unique</th>
           <th>Ordered</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>componentPort</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "componentportviewitem.md" >}}">ComponentPortViewItem</a></td>
        <td>0..*</td>
        <td>References the <i>ComponentPort</i> that is represented by this <i>ComponentPortViewItem</i><i>.</i></td>
    </tr>
    <tr>
        <td>componentPort</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "terminalrole.md" >}}">TerminalRole</a></td>
        <td>0..*</td>
        <td>References the ComponentPort that is realized by the referenced Terminal (OccurrenceOrUsage with TerminalRole). KBLFRM-341</td>
    </tr>
    <tr>
        <td>componentPort</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "cavityreference.md" >}}">CavityReference</a></td>
        <td>0..*</td>
        <td><p> References the <i>ComponentPort</i> that is implemented by this <i>CavityReference</i>.      </p></td>
    </tr>
    <tr>
        <td>componentPort</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "componentconnector.md" >}}">ComponentConnector</a></td>
        <td>1</td>
        <td>Specifies the ComponentPorts of the ComponentConnector.</td>
    </tr>
    <tr>
        <td>connectedComponentPort</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "connectionend.md" >}}">ConnectionEnd</a></td>
        <td>0..*</td>
        <td>References the ComponentPort that is connected by the ConnectionEnd.</td>
    </tr>
    </tbody>
</table>



