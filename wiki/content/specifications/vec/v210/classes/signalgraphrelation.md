---
title: SignalGraphRelation
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - SignalGraphRelation
menu_name: vec-2.1.0
---
A <i>SignalGraphRelation</i> represents a directed association between two <i>SignalGraphs</i>. The direction of the relationship is defined as &quot;<i>from&quot; --&gt; &quot;to&quot;</i> and the semantic is defined by the <i>type.</i>

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
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique <i>identification</i> of the <i>SignalGraphRelation</i>. The <i>identification</i> is guaranteed to be unique within the <i>SignalGraphSpecification</i>.      </p> | [SignalGraphRelation]({{< relref "signalgraphrelation.md" >}}) |
|aliasId| [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <p> Defines additional identifiers for the <i>SignalGraphRelation</i>.      </p> | [SignalGraphRelation]({{< relref "signalgraphrelation.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the <i>SignalGraphRelation</i>.      </p> | [SignalGraphRelation]({{< relref "signalgraphrelation.md" >}}) |
|type| [SignalGraphRelationType]({{< relref "signalgraphrelationtype.md" >}}) | 1 | Defines the semantic of the relationship between the <i>&quot;from&quot;- </i>and <i>&quot;to&quot;-SignalGraph.</i> | [SignalGraphRelation]({{< relref "signalgraphrelation.md" >}}) |

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
        <td>to</td>
        <td><a href="{{< relref "signalgraph.md" >}}">SignalGraph</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>from</td>
        <td><a href="{{< relref "signalgraph.md" >}}">SignalGraph</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td></td>
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
        <td>signalGraphRelation</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "signalgraphspecification.md" >}}">SignalGraphSpecification</a></td>
        <td>1</td>
        <td></td>
    </tr>
    </tbody>
</table>



