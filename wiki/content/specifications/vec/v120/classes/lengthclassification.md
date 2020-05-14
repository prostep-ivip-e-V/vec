---
title: LengthClassification
toc: false
type: specs
date: "2020-05-11"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - LengthClassification
menu_name: vec-1.2.0
---
<p>Enumeration for the definition of a LengthClassification. </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | topology |
| **Applied Stereotype**  | [OpenEnumeration]({{< relref "openenumeration.md" >}})<br/>  |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| Designed | <p> A designed length means that the value is derived automatically in a CAD Tool (e.g. from a 3D Geometry).      </p> |
| Adapted | <p> An adapted length means that the value is not the exact value taken from the CAD tool but is adapted in some way. Adapted values are supposed for further use in the process, especially as basis for the product specification. Adapted values are normally created for example by rounding the designed values.      </p> |
