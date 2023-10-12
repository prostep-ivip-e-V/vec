---
title: Net
toc: false
type: specs
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - Net
menu_name: vec-2.1.0
---
<p> A Net is an undirected link between <i>NetworkPorts</i>.&#160;It defines that the <i>NetworkPorts</i> are related to each other with the <i>Net</i>.      </p>      <p> A <i>Net</i> is normally an instance of a <i>NetType.</i>&#160;E.g. if &quot;CAN-BUS&quot; is defined as a <i>NetType</i> typical <i>Nets</i> would be &quot;BODY-CAN&quot;, &quot;AUDIO-CAN&quot;.      </p>

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
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the Net. The identification is guaranteed to be unique within the NetSpecification.      </p> | [Net]({{< relref "net.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p>Room for additional, human readable information about the Net. </p> | [Net]({{< relref "net.md" >}}) |

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
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>networkPort</td>
        <td><a href="{{< relref "networkport.md" >}}">NetworkPort</a></td>
        <td>1..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>References the NetworkPorts that are connected by the Net.</td>
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
        <td>net</td>
        <td>2..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "netgroup.md" >}}">NetGroup</a></td>
        <td>0..1</td>
        <td>References the Nets that are grouped by the NetGroup.</td>
    </tr>
    <tr>
        <td>net</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "connection.md" >}}">Connection</a></td>
        <td>0..*</td>
        <td>References the Net that is realized by the Connection.</td>
    </tr>
    <tr>
        <td>net</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "netspecification.md" >}}">NetSpecification</a></td>
        <td>1</td>
        <td>Specifies the Nets defined in the NetSpecification.</td>
    </tr>
    </tbody>
</table>



