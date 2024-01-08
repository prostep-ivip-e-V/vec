---
title: DefaultDimensionType
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - DefaultDimensionType
menu_name: vec-2.1.0
---
<p> The <i>dimensionType</i> defines to which measurements this <i>DefaultDimension</i> applies.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | placement |
| **Applied Stereotype**  |   |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| MeasurementChains | <p> Applies to all measurements without specific tolerance definitions or a more specific DefaultDimensionType. Sums of individual dimensions must also not exceed these tolerances.      </p> |
| SegmentLengths | <p> Applies to length values for segments.      </p> |
| FixingDistances | <p> Applies to the measurements between individual fixings.      </p> |
| WireLengths | <p> Applies to length values for <i>WireElementReferences</i>.      </p> |
