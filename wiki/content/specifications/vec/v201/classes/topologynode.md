---
title: TopologyNode
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - TopologyNode
menu_name: vec-2.0.1
---
<p>A TopologyNode is a point in the Topology where TopologySegments are starting and ending.  </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | topology |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|aliasId| [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <p> Specifies additional identifiers for the TopologyNode.      </p>      <p> Example: TopologyNode Ids may vary from one CAD system export to another. Therefore, the CAD system Id is improper for identification attribute. The identification shall have a value which is unique within the Topology. AliasId may be used for the CAD system Id.      </p> | [TopologyNode]({{< relref "topologynode.md" >}}) |
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the TopologyNode. The identification is guaranteed to be unique within the TopologySpecification. For all VEC-documents a TopologyNode-instance can be trusted to be the same if the TopologySpecification-instance is the same (see TopologySpecification) and the identification of the TopologyNode is the same.      </p> | [TopologyNode]({{< relref "topologynode.md" >}}) |
|matchingPointId| [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies an identifier that can be used for matching <i>TopologyNodes</i> that belong to different <i>TopologySpecifications</i> and are actually representing the same node. Example: There are two <i>TopologySpecif</i>ications, each specifying the topology of a certain zone of the car. If the zones are adjacent, it is possible that there are <i>TopologyNodes</i> in both zones where the two topologies are connected /&#160;have contact. These &quot;connection-nodes&quot; would then define the same <i>matchingPointId</i>.      </p> | [TopologyNode]({{< relref "topologynode.md" >}}) |
|processingInstruction| [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..* | <p> Specifies processing instructions for the TopologyNode.      </p> | [TopologyNode]({{< relref "topologynode.md" >}}) |
|nodeType| [NodeType]({{< relref "nodetype.md" >}}) | 0..1 | <p>Specifies the type of the TopologyNode. A Node can either be an EndNode, a Junction or an Inliner.  </p> | [TopologyNode]({{< relref "topologynode.md" >}}) |

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
        <td>realizedUsageNode</td>
        <td><a href="{{< relref "usagenode.md" >}}">UsageNode</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> References the <i>UsageNode</i> that is realized by this <i>TopologyNode</i>.      </p></td>
    </tr>
    <tr>
        <td>instantiatedNode</td>
        <td><a href="{{< relref "topologynode.md" >}}">TopologyNode</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> If this <i>TopologyNode</i> is an instance of another <i>To</i><i>pologyNode </i>that is defined elsewhere (e.g. the topology of an assembly), then the instantiated may be referenced here.      </p></td>
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
        <td>endNode</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "topologysegment.md" >}}">TopologySegment</a></td>
        <td>0..*</td>
        <td>References the TopologyNode where the TopologySegment ends.</td>
    </tr>
    <tr>
        <td>innerNode</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "nodemapping.md" >}}">NodeMapping</a></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>instantiatedNode</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "topologynode.md" >}}">TopologyNode</a></td>
        <td>0..*</td>
        <td><p> If this <i>TopologyNode</i> is an instance of another <i>To</i><i>pologyNode </i>that is defined elsewhere (e.g. the topology of an assembly), then the instantiated may be referenced here.      </p></td>
    </tr>
    <tr>
        <td>referencedNode</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "nodelocation.md" >}}">NodeLocation</a></td>
        <td>0..*</td>
        <td><p> References the TopologyNode on which the Location is located.      </p></td>
    </tr>
    <tr>
        <td>referenceNode</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "geometrynode.md" >}}">GeometryNode</a></td>
        <td>0..*</td>
        <td>References the TopologyNode that is represented by the GeometryNode.</td>
    </tr>
    <tr>
        <td>startNode</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "topologysegment.md" >}}">TopologySegment</a></td>
        <td>0..*</td>
        <td>References the TopologyNode where the TopologySegment starts.</td>
    </tr>
    <tr>
        <td>topologyNode</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "topologyspecification.md" >}}">TopologySpecification</a></td>
        <td>1</td>
        <td>Specifies the TopologyNodes defined by the TopologySpecification.</td>
    </tr>
    </tbody>
</table>



