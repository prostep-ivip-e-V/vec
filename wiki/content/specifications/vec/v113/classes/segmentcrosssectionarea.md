---
title: SegmentCrossSectionArea
toc: false
type: specs
date: "2017-02-21"
draft: false
specification: VEC
version: 1.1.3
documentType: "Recommendation"
elementType: Class
classes:
  - SegmentCrossSectionArea
menu_name: vec-1.1.3
---
<p>Specifies the cross section area of a segment. For the data exchange  the cross section area is used and not the diameter, because the diameter is only a valid measure for circular segments.  For circular segments, the diameter and the cross section area can be translated into each other without the loss of information.  Attributes of the type SegmentCrossSectionArea normally have the multiplicity [0..*]. This means that such an attribute can have SegmentCrossSectionArea entries for different crossSectionAreaTypes and valueDeterminations. It must not have multiple entries with the same crossSectionAreaType and valueDetermination.  </p>

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
|area | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <p> Specifies the value of the cross section area of the segment.      </p> | [SegmentCrossSectionArea]({{< relref "segmentcrosssectionarea.md" >}}) |
|valueDetermination | [ValueDetermination]({{< relref "valuedetermination.md" >}}) | 1 | <p> Specifies the method for determination of the value.      </p> | [SegmentCrossSectionArea]({{< relref "segmentcrosssectionarea.md" >}}) |
|crossSectionAreaType | [SegmentCrossSectionAreaType]({{< relref "segmentcrosssectionareatype.md" >}}) | 0..1 | <p> Specifies the type of the cross section area of the segment. Different types are for example needed to differentiate between the designed space of a segment and the actually needed space (e.g. calculated from the wires going through the segment).     </p>      <p> Attribute is defined as an <i>OpenEnumeration.</i>      </p> | [SegmentCrossSectionArea]({{< relref "segmentcrosssectionarea.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [TopologySegment]({{< relref "topologysegment.md" >}}) | 1 | crossSectionAreaInformation | 0..* | Specifies the different SegmentCrossSectionAreas of the TopologySegment. |
