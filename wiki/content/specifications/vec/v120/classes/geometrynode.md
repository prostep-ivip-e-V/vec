---
title: GeometryNode
toc: false
type: specs
date: "2020-05-11"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - GeometryNode
menu_name: vec-1.2.0
---
<p> A GeometryNode is the geometric representation of a TopologyNode. A TopologyNode may be represented by more than one GeometryNodes, but only within different <i>BuildingBlockSpecification2D/3D.</i> That means, in a single BuildingBlockSpecification a <i>TopologyNode</i> shall only be represent once&#160;(or not).      </p>      <p> A GeometryNode is either a GeometryNode2D or a GeometryNode3D.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | topology |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | true |
| **Derived Classifiers** | [GeometryNode2D]({{< relref "geometrynode2d.md" >}}), [GeometryNode3D]({{< relref "geometrynode3d.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the GeometryNode. The identification is guaranteed to be unique within the corresponding BuildingBlockSpecification. For all VEC-documents a GeometryNode-instance can be trusted to be the same if the BuildingBlockSpecification-instance is the same (see BuildingBlockSpecification) and the identification of the GeometryNode is the same.      </p> | [GeometryNode]({{< relref "geometrynode.md" >}}) |
|aliasId | [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <p> Specifies additional identifiers for the GeometryNode.      </p> | [GeometryNode]({{< relref "geometrynode.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [TopologyNode]({{< relref "topologynode.md" >}}) | referenceNode | 0..1 | 0..* | References the TopologyNode that is represented by the GeometryNode. |
