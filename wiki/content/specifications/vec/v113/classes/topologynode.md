---
title: TopologyNode
toc: false
type: specs
date: "2017-02-21"
draft: false
specification: VEC
version: 1.1.3
documentType: "Recommendation"
elementType: Class
classes:
  - TopologyNode
menu_name: vec-1.1.3
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
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the TopologyNode. The identification is guaranteed to be unique within the TopologySpecification. Over all VEC-documents a TopologyNode-instance can be trusted to be the same if the TopologySpecification-instance is the same (see TopologySpecification) and the identification of the TopologyNode is the same.      </p> | [TopologyNode]({{< relref "topologynode.md" >}}) |
|aliasId | [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <p> Specifies additional identifiers for the TopologyNode.     </p>      <p> Example: TopologyNode Ids may vary from one CAD system export to another. Therefore the CAD system Id is improper for identification attribute. The identification shall have a value which is unique within the Topology. AliasId may be used for the CAD system Id.      </p> | [TopologyNode]({{< relref "topologynode.md" >}}) |
|matchingPointId | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies an identification of a TopologyNode which be used for matching nodes that belong to different TopologySpecifications and that are actually representing the same node. Example: There are two TopologySpecifications, each specifying the topology of a certain zone of the car. If the zones are adjacent, it is possible that there are TopologyNodes where the two topologies are connected. These &quot;connection-nodes&quot; would carry the same matchingPointId.      </p> | [TopologyNode]({{< relref "topologynode.md" >}}) |
|processingInstruction | [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..* | <p> Specifies processing instructions for the TopologyNode.      </p> | [TopologyNode]({{< relref "topologynode.md" >}}) |
|nodeType | [NodeType]({{< relref "nodetype.md" >}}) | 0..1 | <p>Specifies the type of the TopologyNode. A Node can either be an EndNode, a Junction or an Inliner.  </p> | [TopologyNode]({{< relref "topologynode.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [UsageNode]({{< relref "usagenode.md" >}}) | realizedUsageNode | 0..1 | 0..* | <p> References the <i>UsageNode</i> that is realized by this <i>TopologyNode</i>.      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [TopologySegment]({{< relref "topologysegment.md" >}}) | 0..* | endNode | 1 | References the TopologyNode where the TopologySegment ends. |
| [NodeLocation]({{< relref "nodelocation.md" >}}) | 0..* | referencedNode | 1 | References the TopologieNode on which the Location is located. |
| [GeometryNode]({{< relref "geometrynode.md" >}}) | 0..* | referenceNode | 0..1 | References the TopologyNode that is represented by the GeometryNode. |
| [TopologySegment]({{< relref "topologysegment.md" >}}) | 0..* | startNode | 1 | References the TopologyNode where the TopologySegment starts. |
| [TopologySpecification]({{< relref "topologyspecification.md" >}}) | 1 | topologyNode | 0..* | Specifies the TopologyNodes defined by the TopologySpecification. |
