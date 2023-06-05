---
title: ComponentNode
toc: false
type: specs
date: "2023-03-24"
draft: false
specification: VEC
version: 2.0.2
documentType: "Recommendation"
elementType: Class
classes:
  - ComponentNode
menu_name: vec-2.0.2
---
<p> A ComponentNode is a node where an electrological component is located. It is a representative for an element in the electric system, e.g. an actuator, a sensor, an ECU. In this way it is quite similar to a NetworkNode and may even reference the corresponding NetworkNode in this case. However, a ComponentNode is more likely to be used as a representative of an inliner or a splice. Moreover, a ComponentNode can define childNodes in order to describe its internal structure.      </p>

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
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the ComponentNode. The identification is guaranteed to be unique within the ConnectionSpecification.      </p> | [ComponentNode]({{< relref "componentnode.md" >}}) |
|abbreviation| [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..* | <p> Room for a short name of the ComponentNode.      </p> | [ComponentNode]({{< relref "componentnode.md" >}}) |
|componentNodeType| [ComponentNodeType]({{< relref "componentnodetype.md" >}}) | 0..1 | <p> Specifies the type of the ComponentNode.      </p> | [ComponentNode]({{< relref "componentnode.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p>Room for additional, human readable information about the ComponentNode. </p> | [ComponentNode]({{< relref "componentnode.md" >}}) |
|subType| [ComponentNodeSubType]({{< relref "componentnodesubtype.md" >}}) | 0..1 | <p> Specifies the sub type of a ComponentNode. The sub type allows a differentiation within a specific type. E.g. an actuator can be differentiated into lamps, speakers, motors.&#160;      </p> | [ComponentNode]({{< relref "componentnode.md" >}}) |

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
        <td>childNode</td>
        <td><a href="{{< relref "componentnode.md" >}}">ComponentNode</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>0..1</td>
        <td>Specifies the ComponentNodes that are a child of this ComponentNode.</td>
    </tr>
    <tr>
        <td>realizedUsageNode</td>
        <td><a href="{{< relref "usagenode.md" >}}">UsageNode</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> References the <i>UsageNode</i> that is realized by this <i>ComponentNode</i>.      </p></td>
    </tr>
    <tr>
        <td>networkNode</td>
        <td><a href="{{< relref "networknode.md" >}}">NetworkNode</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the NetworkNode that is realized by the ComponentNode.</td>
    </tr>
    <tr>
        <td>componentConnector</td>
        <td><a href="{{< relref "componentconnector.md" >}}">ComponentConnector</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Specifies the ComponentConnectors of a ComponentNode.</td>
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
        <td>childNode</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "componentnode.md" >}}">ComponentNode</a></td>
        <td>0..1</td>
        <td>Specifies the ComponentNodes that are a child of this ComponentNode.</td>
    </tr>
    <tr>
        <td>componentNode</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "connectionspecification.md" >}}">ConnectionSpecification</a></td>
        <td>0..1</td>
        <td>Specifies the ComponentNodes defined by the ConnectionSpecification.</td>
    </tr>
    <tr>
        <td>componentNode</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "componentnodeviewitem.md" >}}">ComponentNodeViewItem</a></td>
        <td>0..*</td>
        <td></td>
    </tr>
    <tr>
        <td>componentNode</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "connectionnodeviewitem.md" >}}">ConnectionNodeViewItem</a></td>
        <td>0..*</td>
        <td>References the<i> ComponentNode</i> that is represented by this <i>ComponentNodeViewItem</i><i>.</i></td>
    </tr>
    <tr>
        <td>componentNode</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "eecomponentrole.md" >}}">EEComponentRole</a></td>
        <td>0..*</td>
        <td>References the ComponentNode that is realized by the referenced EEComponent (OccurrenceOrUsage with EEComponentRole). KBLFRM-341</td>
    </tr>
    </tbody>
</table>



