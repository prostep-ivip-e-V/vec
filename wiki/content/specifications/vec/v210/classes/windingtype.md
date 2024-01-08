---
title: WindingType
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - WindingType
menu_name: vec-2.1.0
---
<p> &#160;Defines the type of taping.       </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_non_electrical_parts |
| **Applied Stereotype**  |   |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| OnSpace | <p> <i>OnSpace</i> describes a taping with gaps between the rounds (German: Luecke)      </p> |
| Spare | <p> <i>Spare</i> describes a taping with larger gaps between the rounds (German: Spar)      </p> |
| Overlap | <p> <i>Overlap</i> describes a taping where each round overlaps the preceeding round.      </p> |
| DoubleOverlap | <p> <i>DoubleOverlap</i> describes a taping where each round overlaps the preceeding round and the taping is done twice (forward and backwards).      </p> |
| Spiral | <p> <i>Spiral</i> defines a taping with the least overlapping (German: Spiral).       </p> |
| Longitudinal | <p> <i>Longitudinal </i>defines a taping with where the tape is folded around a segment.      </p> |
| Spot | <p> <i>Spot</i> defines a taping where all rounds are placed at the same location (SpotTape).      </p> |
| Cross | <p> <i>Cross</i> describes a special taping method at intersections where the rounds around the segment form a cross (German: Kreuzwickel)      </p> |
