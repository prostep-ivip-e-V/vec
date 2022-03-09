---
title: ZoneAssignment
toc: false
type: specs
date: "2022-03-09"
draft: false
specification: VEC
version: 2.0.0
documentType: "Recommendation"
elementType: Class
classes:
  - ZoneAssignment
menu_name: vec-2.0.0
---
<p> A <i>ZoneAssignment </i>defines that a specific TopologySegment is affected by the <i>TopologyZone.</i> If a coverage is defined, only the parts of the Segment that have a coverage are affected. If no coverage is defined, the whole segment is affected.      </p>

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
| [TopologySegment]({{< relref "topologysegment.md" >}}) | assignedSegment | 1 | 0..* | <p> The <i>TopologySegment</i> that is assigned to <i>TopologyZone</i> with this <i>ZoneAssignment.</i>      </p> |
| [ZoneCoverage]({{< relref "zonecoverage.md" >}}) | coverage | 0..* | 1 | <p> Contains a set of <i>ZoneCoverages</i> that define the areas of a <i>TopologySegment</i> that is affected by the TopologyZone.&#160;If no coverage is defined, the complete segment is affected. Multiple coverages can be necessary if the <i>TopologySegment</i> zigzags in and out of the <i>TopologyZone.</i>      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [TopologyZone]({{< relref "topologyzone.md" >}}) |  | assignment | 0..* | <p> The assignments of specific topology elements to this zone.      </p> |
