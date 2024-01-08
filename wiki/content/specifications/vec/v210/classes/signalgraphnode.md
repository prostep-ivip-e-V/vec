---
title: SignalGraphNode
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - SignalGraphNode
menu_name: vec-2.1.0
---
A <i>SignalGraphNode</i> represent some physical element that participates in the signal transmission related to a <i>SignalGraph</i>. If the <i>representedElement</i> fails or is not present in a network, some paths in the <i>SignalGraph</i> maybe disrupted.

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | signal_graph |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique <i>identification</i> of the <i>SignalGraphNode</i>. The <i>identification</i> is guaranteed to be unique within the <i>SignalGraph</i>.      </p> | [SignalGraphNode]({{< relref "signalgraphnode.md" >}}) |

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
        <td>representedElement</td>
        <td><a href="{{< relref "configurableelement.md" >}}">ConfigurableElement</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td></td>
        <td><p> References the <i>ConfigurableElement</i> that is represented by a <i>SignalGraphNode.</i> This is expected to be some physical element of the vehicle network, that participates in signal transmission. In many cases this will be an <i>OccurrenceOrUsage</i>, however in some cases sub elements of the <i>OccurrenceOrUsage </i>might be relevant, e.g. a <i>PinComponentReference</i> or a <i>WireElementReference.</i>      </p></td>
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
        <td>fromNode</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "signalgraphedge.md" >}}">SignalGraphEdge</a></td>
        <td>0..*</td>
        <td></td>
    </tr>
    <tr>
        <td>node</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "signalgraph.md" >}}">SignalGraph</a></td>
        <td>1</td>
        <td><p> The <i>SignalGraphNodes</i> in the <i>SignalGraph.</i>      </p></td>
    </tr>
    <tr>
        <td>toNode</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "signalgraphedge.md" >}}">SignalGraphEdge</a></td>
        <td>0..*</td>
        <td></td>
    </tr>
    </tbody>
</table>



