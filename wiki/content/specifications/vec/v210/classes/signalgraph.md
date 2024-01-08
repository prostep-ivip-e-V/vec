---
title: SignalGraph
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - SignalGraph
menu_name: vec-2.1.0
---
A <i>SignalGraph </i>is a directed graph of elements in the vehicle network that participate in the transmission of a signal /&#160;function&#160;/&#160;power /&#160;ground etc. A <i>SignalGraph</i> is<i> </i>expected to be at least an unilaterally connected graph, meaning it contains a directed path from <i>u</i> to <i>v</i> or a directed path from <i>v</i> to <i>u</i> for every pair <i>u</i> and <i>v </i>of <i>SignalGraphNodes</i> in the <i>SignalGraph.</i>

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
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique <i>identification</i> of the <i>SignalGraph</i>. The <i>identification</i> is guaranteed to be unique within the <i>SignalGraphSpecification</i>.      </p> | [SignalGraph]({{< relref "signalgraph.md" >}}) |
|aliasId| [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <p> Defines additional identifiers for the <i>SignalGraph</i>.      </p> | [SignalGraph]({{< relref "signalgraph.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the <i>SignalGraph</i>.      </p> | [SignalGraph]({{< relref "signalgraph.md" >}}) |

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
        <td>edge</td>
        <td><a href="{{< relref "signalgraphedge.md" >}}">SignalGraphEdge</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td><p> The <i>SignalGraphEdges</i> in the <i>SignalGraph.</i>      </p></td>
    </tr>
    <tr>
        <td>node</td>
        <td><a href="{{< relref "signalgraphnode.md" >}}">SignalGraphNode</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td><p> The <i>SignalGraphNodes</i> in the <i>SignalGraph.</i>      </p></td>
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
        <td>from</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "signalgraphrelation.md" >}}">SignalGraphRelation</a></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>signalGraph</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "signalgraphspecification.md" >}}">SignalGraphSpecification</a></td>
        <td>1</td>
        <td></td>
    </tr>
    <tr>
        <td>to</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "signalgraphrelation.md" >}}">SignalGraphRelation</a></td>
        <td></td>
        <td></td>
    </tr>
    </tbody>
</table>



