---
title: SegmentCrossSectionAreaType
toc: false
type: specs
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - SegmentCrossSectionAreaType
menu_name: vec-2.1.0
---
<p> Defines valid values the type of the cross-section area of a <i>TopologySegment</i>, since a <i>TopologySegment</i> can have different cross section areas with different meanings in the process.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | topology |
| **Applied Stereotype**  |   |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| Reserved | <p> <i>Reserved </i>is the type for cross section areas that define a reserved space in the DMU&#160;for the&#160;<i>TopologySegment.</i>      </p> |
| Real | <p> <i>Real</i> is the type for cross section areas that can be observed for <i>TopologySegments</i> with variants of a Harness that are producible.      </p> |
