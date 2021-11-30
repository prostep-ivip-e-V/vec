---
title: ValueDetermination
toc: false
type: specs
date: "2021-11-30"
draft: false
specification: VEC
version: 2.0.0-rc1
documentType: "Recommendation"
elementType: Class
classes:
  - ValueDetermination
menu_name: vec-2.0.0-rc1
---
<p>Enumeration for the definition of a value determination. (see KBLFRM-316) </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | physical_information |
| **Applied Stereotype**  | [ClosedEnumeration]({{< relref "closedenumeration.md" >}})<br/>  |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| Calculated | <p> The value is determined by a calculation algorithm.      </p> |
| Measured | <p>The value is determined by an exact measurement. </p> |
| Estimated | <p>The value is estimated by a person.  </p> |
