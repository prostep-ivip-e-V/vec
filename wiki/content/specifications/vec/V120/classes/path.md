---
title: Path
toc: false
type: specs
date: "2020-02-01"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - Path
menu_name: vec-1.2.0
---
<p> Describes a path in the topology. A <i>Path</i> is a continuous way through a topology without interruptions, defined by an ordered list of <i>TopologySegments</i>.      </p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | topology |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [TopologySegment]({{< relref "topologysegment.md" >}}) | segment | 0..* | 0..* | Specifies an ordered list of TopologySegments the routing goes through. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [SegmentMapping]({{< relref "segmentmapping.md" >}}) | 0..1 | mappedPosition | 1 |  |
| [Dimension]({{< relref "dimension.md" >}}) | 0..1 | path | 0..1 | Specifies a path in the topology along which the dimension is defined. |
| [Routing]({{< relref "routing.md" >}}) | 0..1 | path | 1 | Specifies a Path on the topology that is used for the routing. |
| [OnWayPlacement]({{< relref "onwayplacement.md" >}}) | 0..1 | path | 0..1 | Specifies the topology path defining the way the OnWayPlacement takes in the topology. |
| [TopologyBendingRestriction]({{< relref "topologybendingrestriction.md" >}}) | 0..1 | restrictedPath | 1 | <p> The path that defines the restricted way in the topology.      </p> |
