---
title: NetworkNode
toc: false
type: specs
date: "2023-03-24"
draft: false
specification: VEC
version: 2.0.2
documentType: "Recommendation"
elementType: Class
classes:
  - NetworkNode
menu_name: vec-2.0.2
---
<p> A NetworkNode is a representative for an actor in the electric system, e.g. an actuator, a sensor, an ECU      </p>

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
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the NetworkNode. The identification is guaranteed to be unique within the NetSpecification.      </p> | [NetworkNode]({{< relref "networknode.md" >}}) |
|abbreviation| [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..* | <p> Room for a short name of the NetworkNode.      </p> | [NetworkNode]({{< relref "networknode.md" >}}) |
|networkNodeType| [NetworkNodeType]({{< relref "networknodetype.md" >}}) | 0..1 | <p> Specifies the type of a NetworkNode. Common values are agreed as an <i>OpenEnumeration</i>.      </p> | [NetworkNode]({{< relref "networknode.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p>Room for additional, human readable information about the NetworkNode. </p> | [NetworkNode]({{< relref "networknode.md" >}}) |
|subType| [NetworkNodeSubType]({{< relref "networknodesubtype.md" >}}) | 0..1 | <p> Specifies the sub type of a NetworkNode. The sub type allows a differentiation within a specific type. E.g. an actuator can be differentiated into lamps, speakers, motors.      </p> | [NetworkNode]({{< relref "networknode.md" >}}) |

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
        <td>port</td>
        <td><a href="{{< relref "networkport.md" >}}">NetworkPort</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Specifies the NetworkPorts of a NetworkNode.</td>
    </tr>
    <tr>
        <td>realizedUsageNode</td>
        <td><a href="{{< relref "usagenode.md" >}}">UsageNode</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> References the <i>UsageNode</i> that is realized by this <i>NetworkNode</i>.      </p></td>
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
        <td>networkNode</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "netspecification.md" >}}">NetSpecification</a></td>
        <td>1</td>
        <td><p> Specifies the NetworkNodes defined in the NetSpecification.      </p></td>
    </tr>
    <tr>
        <td>networkNode</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "componentnode.md" >}}">ComponentNode</a></td>
        <td>0..*</td>
        <td>References the NetworkNode that is realized by the ComponentNode.</td>
    </tr>
    <tr>
        <td>networkNode</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "networknodeviewitem.md" >}}">NetworkNodeViewItem</a></td>
        <td>0..*</td>
        <td>References the<i> NetworkNode</i>  that is represented by this <i>NetworkNodeViewItem.</i></td>
    </tr>
    </tbody>
</table>



