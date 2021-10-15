---
title: ZoneCoverage
toc: false
type: specs
date: "2021-10-18"
draft: false
specification: VEC
version: 1.2.1
documentType: "Recommendation"
elementType: Class
classes:
  - ZoneCoverage
menu_name: vec-1.2.1
---
<p> A <i>ZoneCoverage </i>defines an area on a <i>TopologySegment</i> that lies within a <i>TopologyZone.</i> The area is defined with two <i>Locations</i>. <i>Locations </i>are the same mechanism that is used to define placements for components. The area that is in the <i>TopologyZone </i>is the area between the two locations. There is no semantic in the direction of the definition, so the assignment of first &amp;&#160;second Location is completely arbitrary.       </p>      <p> However, there are some restrictions for the definition of the locations. All locations have to be in relation to the&#160;<i>TopologySegment </i>that is referenced by the containing <i>ZoneAssignment</i>. This means the <i>Locations</i> have to be either a <i>SegmentLocation on the </i>respective<i> </i><i>TopologySegment</i> or a <i>NodeLocation</i> on the start or end node of this particular <i>T</i><i>opologySegment.</i> A <i>ZoneCoverage</i> from start to end node of a <i>TopologySegment</i> is equivalent to the complete omission of <i>ZoneCoverages</i> for a particular <i>ZoneAssignment</i>.      </p>      <p> &#160;      </p>

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
| [Location]({{< relref "location.md" >}}) | secondLocation | 1 | 0..1 |  |
| [Location]({{< relref "location.md" >}}) | firstLocation | 1 | 0..1 |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ZoneAssignment]({{< relref "zoneassignment.md" >}}) | 1 | coverage | 0..* | <p> Contains a set of <i>ZoneCoverages</i> that define the areas of a <i>TopologySegment</i> that is affected by the TopologyZone.&#160;If no coverage is defined, the complete segment is affected. Multiple coverages can be necessary if the <i>TopologySegment</i> zigzags in and out of the <i>TopologyZone.</i>      </p> |
