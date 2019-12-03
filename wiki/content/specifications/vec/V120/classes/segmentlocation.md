---
title: SegmentLocation
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html><body><p>Specifies a point on a TopologySegment as a Location. </p></body></html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | placement |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Location]({{< relref "location.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Hierarchical Topologies]({{< relref "../topology-and-geometry/hierarchical-topologies" >}})<br/> [Locations]({{< relref "../topology-and-geometry/locations" >}})<br/> [Topology Zones]({{< relref "../topology-and-geometry/topology-zones" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the Location. The identification is guaranteed to be unique within the PlacementSpecification.      </p>    </body> </html>  | [Location]({{< relref "location.md" >}}) |
|matchingId | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>Specifies an identification for matching the location with a reference point of component (e.g. a cable channel).  </p></body></html> | [Location]({{< relref "location.md" >}}) |
|offset | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <html><body><p>Specifies the offset / distance of the Location to the anchor of the location.  </p></body></html> | [SegmentLocation]({{< relref "segmentlocation.md" >}}) |
|anchor | [AnchorType]({{< relref "anchortype.md" >}}) | 1 | <html>   <head>     </head>   <body> Specifies if the location on the <i>TopologySegment</i> is defined as on offset relative to the startNode of the TopologySegment or the endNode.   </body> </html>  | [SegmentLocation]({{< relref "segmentlocation.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [TopologySegment]({{< relref "topologysegment.md" >}}) | referencedSegment | 1 | 0..* | References the TopologieSegment on which the Location is located.   |
