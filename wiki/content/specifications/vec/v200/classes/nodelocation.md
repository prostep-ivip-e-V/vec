﻿---
title: NodeLocation
toc: false
type: specs
date: "2022-03-09"
draft: false
specification: VEC
version: 2.0.0
documentType: "Recommendation"
elementType: Class
classes:
  - NodeLocation
menu_name: vec-2.0.0
---
<p>Specifies a TopologyNode as a Location.  </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | topology |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Location]({{< relref "location.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the Location. The identification is guaranteed to be unique within the PlacementSpecification.      </p> | [Location]({{< relref "location.md" >}}) |
|matchingId | [String]({{< relref "string.md" >}}) | 0..1 | <p>Specifies an identification for matching the location with a reference point of component (e.g. a cable channel).  </p> | [Location]({{< relref "location.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [TopologyNode]({{< relref "topologynode.md" >}}) | referencedNode | 1 | 0..* | <p> References the TopologyNode on which the Location is located.      </p> |
