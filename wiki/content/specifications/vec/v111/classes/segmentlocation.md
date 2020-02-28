---
title: SegmentLocation
toc: false
type: specs
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Class
classes:
  - SegmentLocation
menu_name: vec-1.1.1
---
<p>Specifies a point on a TopologySegment as a Location. </p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | placement |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Location]({{< relref "location.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the Location. The identification is guaranteed to be unique within the PlacementSpecification.      </p> | [Location]({{< relref "location.md" >}}) |
|matchingId | [String]({{< relref "string.md" >}}) | 0..1 | <p>Specifies an identification for matching the location with a reference point of component (e.g. a cable channel).  </p> | [Location]({{< relref "location.md" >}}) |
|offset | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <p>Specifies the offset / distance of the Location to the anchor of the location.  </p> | [SegmentLocation]({{< relref "segmentlocation.md" >}}) |
|anchor | [AnchorType]({{< relref "anchortype.md" >}}) | 1 | Specifies if the location on the <i>TopologySegment</i> is defined as on offset relative to the startNode of the TopologySegment or the endNode. | [SegmentLocation]({{< relref "segmentlocation.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [TopologySegment]({{< relref "topologysegment.md" >}}) | referencedSegment | 1 | 0..* | References the TopologieSegment on which the Location is located. |
