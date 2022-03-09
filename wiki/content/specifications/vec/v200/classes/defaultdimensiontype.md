---
title: DefaultDimensionType
toc: false
type: specs
date: "2022-03-09"
draft: false
specification: VEC
version: 2.0.0
documentType: "Recommendation"
elementType: Class
classes:
  - DefaultDimensionType
menu_name: vec-2.0.0
---
<p> The <i>dimensionType</i> defines to which measurements this <i>DefaultDimension</i> applies.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | placement |
| **Applied Stereotype**  | [OpenEnumeration]({{< relref "openenumeration.md" >}})<br/>  |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| MeasurementChains | <p> Applies to all measurements without specific tolerance definitions or a more specific DefaultDimensionType. Sums of individual dimensions must also not exceed these tolerances.      </p> |
