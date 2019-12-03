---
title: OnWayPlacement
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> An OnWayPlacement places an OccurrenceOrUsage onto an area of the Topology (e.g. a tape or a tube). The area is defined by a startLocation and an endLocation. If startLocation and endLocation are not located on the same TopologySegment it is possible to specify a Path of TopologySegments over which the OnWayPlacement goes.      </p>      <p> The names start- and endLocation are used to distinguish between the two ends. It does <b><u>not</u></b> indicated a direction as property of the product (e.g. for tapes).      </p>  </body> </html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | placement |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Placement]({{< relref "placement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Placement and Dimensions]({{< relref "../topology-and-geometry/placement-and-dimensions" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the Location. The identification is guaranteed to be unique within the PlacementSpecification.      </p>    </body> </html>  | [Placement]({{< relref "placement.md" >}}) |
|type | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>Room to specify additional type information of the placement. </p></body></html> | [Placement]({{< relref "placement.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Path]({{< relref "path.md" >}}) | path | 0..1 | 0..1 | Specifies the topology path defining the way the OnWayPlacement takes in the topology.   |
| [Location]({{< relref "location.md" >}}) | startLocation | 1 | 0..1 | References the Location where OnWayPlacement starts.   |
| [Location]({{< relref "location.md" >}}) | endLocation | 1 | 0..1 | References the Location where OnWayPlacement ends.   |
