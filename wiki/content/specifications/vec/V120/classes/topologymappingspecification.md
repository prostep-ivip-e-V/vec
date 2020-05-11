---
title: TopologyMappingSpecification
toc: false
type: specs
date: "2020-05-11"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - TopologyMappingSpecification
menu_name: vec-1.2.0
---
<p> A&#160;<i>TopologyMappingSpecification</i> allows the definition of hierarchical topologies. It relates an outer topology with an enclosed inner topology.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | topology |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Specification]({{< relref "specification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. For all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [TopologySpecification]({{< relref "topologyspecification.md" >}}) | outerTopology | 1 |  |  |
| [NodeMapping]({{< relref "nodemapping.md" >}}) |  | 0..* | 1 |  |
| [TopologySpecification]({{< relref "topologyspecification.md" >}}) | innerTopolgy | 1 |  |  |
| [SegmentMapping]({{< relref "segmentmapping.md" >}}) |  | 0..* |  |  |
