---
title: Path
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Describes a path in the topology. A <i>Path</i> is a continuous way through a topology without interruptions, defined by an ordered list of <i>TopologySegments</i>.      </p>  </body> </html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | placement |
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
| [TopologySegment]({{< relref "topologysegment.md" >}}) | segment | 0..* | 0..* | Specifies an ordered list of TopologySegments the routing goes through.   |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [SegmentMapping]({{< relref "segmentmapping.md" >}}) |  | mappedPosition | 1 |  |
| [Routing]({{< relref "routing.md" >}}) | 0..1 | path | 1 | Specifies a Path on the topology that is used for the routing.   |
| [Dimension]({{< relref "dimension.md" >}}) | 0..1 | path | 0..1 | Specifies a path in the topology along which the dimension is defined.   |
| [OnWayPlacement]({{< relref "onwayplacement.md" >}}) | 0..1 | path | 0..1 | Specifies the topology path defining the way the OnWayPlacement takes in the topology.   |
