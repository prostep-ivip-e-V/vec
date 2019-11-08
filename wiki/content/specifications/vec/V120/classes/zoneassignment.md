---
title: ZoneAssignment
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body> A <i>ZoneAssignment </i>defines that a specific TopologySegment is affected by the <i>TopologyZone.</i> If a coverage is defined, only the parts of the Segment that have a coverage are affected. If no coverage is defined, the whole segment is affected.</body> </html>
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
| [TopologySegment]({{< relref "topologysegment.md" >}}) | assignedSegment | 1 | 0..* | <html>   <head>     </head>   <body> The <i>TopologySegment</i> that is assigned to <i>TopologyZone</i> with this <i>ZoneAssignment.</i></body> </html> |
| [ZoneCoverage]({{< relref "zonecoverage.md" >}}) | coverage | 0..* | 1 | <html>   <head>     </head>   <body> Contains a set of <i>ZoneCoverages</i> that define the areas of a <i>TopologySegment</i> that is affected by the TopologyZone.&#160;If no coverage is defined, the complete segment is affected. Multiple coverages can be necessary if the <i>TopologySegment</i> zigzags in and out of the <i>TopologyZone.</i></body> </html> |
| [ZoneAssignment]({{< relref "zoneassignment.md" >}}) |  |  |  |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ZoneAssignment]({{< relref "zoneassignment.md" >}}) |  |  |  |  |
| [TopologyZone]({{< relref "topologyzone.md" >}}) |  | assignment | 0..* | <html>   <head>     </head>   <body> The assignments of specific topology elements to this zone.</body> </html> |
