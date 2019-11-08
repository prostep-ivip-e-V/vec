---
title: TopologyNode
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html><body><p>A TopologyNode is a point in the Topology where TopologySegments are starting and ending.  </p></body></html>
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
|aliasId | [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies additional identifiers for the TopologyNode.     </p>      <p> Example: TopologyNode Ids may vary from one CAD system export to another. Therefore the CAD system Id is improper for identification attribute. The identification shall have a value which is unique within the Topology. AliasId may be used for the CAD system Id.      </p>    </body> </html>  | [TopologyNode]({{< relref "topologynode.md" >}}) |
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the TopologyNode. The identification is guaranteed to be unique within the TopologySpecification. Over all VEC-documents a TopologyNode-instance can be trusted to be the same if the TopologySpecification-instance is the same (see TopologySpecification) and the identification of the TopologyNode is the same.      </p>    </body> </html>  | [TopologyNode]({{< relref "topologynode.md" >}}) |
|matchingPointId | [String]({{< relref "string.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies an identification of a TopologyNode which be used for matching nodes that belong to different TopologySpecifications and that are actually representing the same node. Example: There are two TopologySpecifications, each specifying the topology of a certain zone of the car. If the zones are adjacent, it is possible that there are TopologyNodes where the two topologies are connected. These &quot;connection-nodes&quot; would carry the same matchingPointId.      </p>    </body> </html>  | [TopologyNode]({{< relref "topologynode.md" >}}) |
|processingInstruction | [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies processing instructions for the TopologyNode.      </p>    </body> </html>  | [TopologyNode]({{< relref "topologynode.md" >}}) |
|nodeType | [NodeType]({{< relref "nodetype.md" >}}) | 0..1 | <html><body><p>Specifies the type of the TopologyNode. A Node can either be an EndNode, a Junction or an Inliner.  </p></body></html> | [TopologyNode]({{< relref "topologynode.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [UsageNode]({{< relref "usagenode.md" >}}) | realizedUsageNode | 0..1 | 0..* | <html>   <head>     </head>   <body>     <p> References the <i>UsageNode</i> that is realized by this <i>TopologyNode</i>.      </p>    </body> </html>  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [TopologySegment]({{< relref "topologysegment.md" >}}) | 0..* | endNode | 1 | References the TopologyNode where the TopologySegment ends.   |
| [NodeMapping]({{< relref "nodemapping.md" >}}) |  | innerNode | 1 |  |
| [NodeLocation]({{< relref "nodelocation.md" >}}) | 0..* | referencedNode | 1 | References the TopologieNode on which the Location is located.   |
| [GeometryNode]({{< relref "geometrynode.md" >}}) | 0..* | referenceNode | 0..1 | References the TopologyNode that is represented by the GeometryNode.  |
| [TopologySegment]({{< relref "topologysegment.md" >}}) | 0..* | startNode | 1 | References the TopologyNode where the TopologySegment starts.   |
| [TopologySpecification]({{< relref "topologyspecification.md" >}}) | 1 | topologyNode | 0..* | Specifies the TopologyNodes defined by the TopologySpecification.  |
