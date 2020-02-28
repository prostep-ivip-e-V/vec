---
title: NodeMapping
toc: false
type: specs
date: "2020-02-01"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - NodeMapping
menu_name: vec-1.2.0
---
<p> Defines the relationship of an inner node to its outer topology. The relationship to the outer topology is expressed with a <i>Location</i>.      </p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | topology |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [TopologyNode]({{< relref "topologynode.md" >}}) | innerNode | 1 |  |  |
| [Location]({{< relref "location.md" >}}) | mappedPosition | 1 | 0..1 |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [TopologyMappingSpecification]({{< relref "topologymappingspecification.md" >}}) | 1 |  | 0..* |  |
