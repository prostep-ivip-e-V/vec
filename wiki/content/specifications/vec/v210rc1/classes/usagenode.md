---
title: UsageNode
toc: false
type: specs
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - UsageNode
menu_name: vec-2.1.0
---
<p> A <i>UsageNode</i> represents a position in an abstract vehicle. For example, the &quot;Head Light Left&quot;. <i>UsageNodes</i> belong to the master data and they are defined on some companywide level. They can be used to enforce consistent naming over different projects and different development streams (e.g. between Geometry and Electrologic).      </p>      <p> A <i>UsageNode</i> can be realized by different elements in the VEC (e.g. <i>NetworkNode, OccurrenceOrUsage, TopologyNode, ComponentNode</i>).      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | usage_node |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|abbreviation| [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..* | <p> Specifies an abbreviation of the <i>UsageNode</i>. Normally this a human readable short name.      </p> | [UsageNode]({{< relref "usagenode.md" >}}) |
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique <i>identification</i> of the <i>UsageNode</i>. The <i>identification</i> is guaranteed to be unique within the context. For all VEC-documents a <i>UsageNode-instance</i> can be trusted to be the same if the context-instance is the same and the <i>identification</i> of the <i>UsageNode</i> is the same.      </p> | [UsageNode]({{< relref "usagenode.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the <i>UsageNode</i>.      </p> | [UsageNode]({{< relref "usagenode.md" >}}) |
|usageNodeType| [UsageNodeType]({{< relref "usagenodetype.md" >}}) | 0..1 | <p>Defines the type of the UsageNode. The type determines how the UsageNode is handled in the latter processes. </p> | [UsageNode]({{< relref "usagenode.md" >}}) |

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
        <td>usedInProject</td>
        <td><a href="{{< relref "project.md" >}}">Project</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> Specifies the <i>Projects</i> in which the <i>UsageNode</i> can be used.      </p></td>
    </tr>
    <tr>
        <td>subUsageNodes</td>
        <td><a href="{{< relref "usagenode.md" >}}">UsageNode</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>0..1</td>
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
        <td>realizedUsageNode</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "networknode.md" >}}">NetworkNode</a></td>
        <td>0..*</td>
        <td><p> References the <i>UsageNode</i> that is realized by this <i>NetworkNode</i>.      </p></td>
    </tr>
    <tr>
        <td>realizedUsageNode</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "topologynode.md" >}}">TopologyNode</a></td>
        <td>0..*</td>
        <td><p> References the <i>UsageNode</i> that is realized by this <i>TopologyNode</i>.      </p></td>
    </tr>
    <tr>
        <td>realizedUsageNode</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "occurrenceorusage.md" >}}">OccurrenceOrUsage</a></td>
        <td>0..*</td>
        <td><p> References the <i>UsageNode</i> that is realized by this <i>OccurrenceOrUsage</i>.      </p></td>
    </tr>
    <tr>
        <td>realizedUsageNode</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "componentnode.md" >}}">ComponentNode</a></td>
        <td>0..*</td>
        <td><p> References the <i>UsageNode</i> that is realized by this <i>ComponentNode</i>.      </p></td>
    </tr>
    <tr>
        <td>subUsageNodes</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "usagenode.md" >}}">UsageNode</a></td>
        <td>0..1</td>
        <td></td>
    </tr>
    <tr>
        <td>usageNode</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "usageconstraint.md" >}}">UsageConstraint</a></td>
        <td>0..*</td>
        <td><p> References the <i>UsageNode</i> to which the <i>UsageConstraint</i> applies. This means the described <i>PartVersion</i> is allowed / denied in the referenced UsageNode.      </p></td>
    </tr>
    <tr>
        <td>usageNodes</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "usagenodespecification.md" >}}">UsageNodeSpecification</a></td>
        <td>0..1</td>
        <td><p> Specifies the <i>UsageNodes</i> defined by this <i>UsageNodeSpecification.</i>      </p></td>
    </tr>
    </tbody>
</table>



