---
title: NetworkPort
toc: false
type: specs
date: "2023-03-24"
draft: false
specification: VEC
version: 2.0.2
documentType: "Recommendation"
elementType: Class
classes:
  - NetworkPort
menu_name: vec-2.0.2
---
<p> NetworkPort is the source or the receiver of a of a Net.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | net |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the NetworkPort. The identification is guaranteed to be unique within the NetSpecification.      </p> | [NetworkPort]({{< relref "networkport.md" >}}) |
|signalDirection| [SignalDirection]({{< relref "signaldirection.md" >}}) | 0..1 | <p>Specifies the direction of the signal on this NetworkPort.  </p> | [NetworkPort]({{< relref "networkport.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p>Room for additional, human readable information about the NetworkPort. </p> | [NetworkPort]({{< relref "networkport.md" >}}) |

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
        <td>netType</td>
        <td><a href="{{< relref "nettype.md" >}}">NetType</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td></td>
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
        <td>networkPort</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "networkportviewitem.md" >}}">NetworkPortViewItem</a></td>
        <td>0..*</td>
        <td>References the <i>NetworkPort</i> that is represented by this <i>NetworkPortViewItem.</i></td>
    </tr>
    <tr>
        <td>networkPort</td>
        <td>1..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "net.md" >}}">Net</a></td>
        <td>1</td>
        <td>References the NetworkPorts that are connected by the Net.</td>
    </tr>
    <tr>
        <td>networkPort</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "componentport.md" >}}">ComponentPort</a></td>
        <td>0..*</td>
        <td>References the NetworkPort that is realized by the ComponentPort.</td>
    </tr>
    <tr>
        <td>port</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "networknode.md" >}}">NetworkNode</a></td>
        <td>1</td>
        <td>Specifies the NetworkPorts of a NetworkNode.</td>
    </tr>
    </tbody>
</table>



