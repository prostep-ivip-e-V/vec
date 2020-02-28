---
title: TopologySpecification
toc: false
type: specs
date: "2020-02-01"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - TopologySpecification
menu_name: vec-1.2.0
---
<p> Specification for the definition of a topology. A topology consists of TopologyNodes, TopologySegments.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | topology |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Specification]({{< relref "specification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** | [TopologyGroupSpecification]({{< relref "topologygroupspecification.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. For all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [TopologySegment]({{< relref "topologysegment.md" >}}) | topologySegment | 0..* | 1 | Specifies the TopologySegments defined by the TopologySpecification. |
| [TopologyNode]({{< relref "topologynode.md" >}}) | topologyNode | 0..* | 1 | Specifies the TopologyNodes defined by the TopologySpecification. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [TopologyMappingSpecification]({{< relref "topologymappingspecification.md" >}}) |  | innerTopolgy | 1 |  |
| [TopologyMappingSpecification]({{< relref "topologymappingspecification.md" >}}) |  | outerTopology | 1 |  |
| [TopologyGroupSpecification]({{< relref "topologygroupspecification.md" >}}) | 0..* | topologySpecification | 0..* |  |
