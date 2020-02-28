---
title: OnWayPlacement
toc: false
type: specs
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Class
classes:
  - OnWayPlacement
menu_name: vec-1.1.2
---
<p>An OnWayPlacement places an OccurrenceOrUsage onto an area of the Topology (e.g. a tape or a tube). The area is defined by a startLocation and an endLocation. If startLocation and endLocation are not located on the same TopologySegment it is possible to specify a Path of TopologySegments over which the OnWayPlacement goes.  </p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | placement |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Placement]({{< relref "placement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the Location. The identification is guaranteed to be unique within the PlacementSpecification.      </p> | [Placement]({{< relref "placement.md" >}}) |
|type | [String]({{< relref "string.md" >}}) | 0..1 | <p>Room to specify additional type information of the placement. </p> | [Placement]({{< relref "placement.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Location]({{< relref "location.md" >}}) | endLocation | 1 | 0..1 | References the Location where OnWayPlacement ends. |
| [Path]({{< relref "path.md" >}}) | path | 0..1 | 0..1 | Specifies the topology path defining the way the OnWayPlacement takes in the topology. |
| [Location]({{< relref "location.md" >}}) | startLocation | 1 | 0..1 | References the Location where OnWayPlacement starts. |
