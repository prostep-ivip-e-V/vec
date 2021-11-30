---
title: FoilShieldWindingType
toc: false
type: specs
date: "2021-11-30"
draft: false
specification: VEC
version: 2.0.0-rc1
documentType: "Recommendation"
elementType: Class
classes:
  - FoilShieldWindingType
menu_name: vec-2.0.0-rc1
---
<p> Defines the type of winding for foil shields. It can be folded around and along the inner wire elements like a cigarette paper or it can be wound around them in a spiral. Both types result in different manufacturing and EMC properties.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  | [OpenEnumeration]({{< relref "openenumeration.md" >}})<br/>  |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| Overlap | Spirally wound around the shielded elements with minimal overlap (i.e. without gaps) |
| Longitudinal | Folded lengthwise around the shielded elements (like a cigarette paper). |
