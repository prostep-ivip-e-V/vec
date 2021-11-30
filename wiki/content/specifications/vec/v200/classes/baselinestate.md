---
title: BaselineState
toc: false
type: specs
date: "2021-11-30"
draft: false
specification: VEC
version: 2.0.0-rc1
documentType: "Recommendation"
elementType: Class
classes:
  - BaselineState
menu_name: vec-2.0.0-rc1
---
<p> Enumeration the define the valid states of a baseline.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | core |
| **Applied Stereotype**  | [OpenEnumeration]({{< relref "openenumeration.md" >}})<br/>  |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| Draft | <p> Draft means that the baseline is not finalized yet and new ItemVersions can be added without the necessity to create a new version of the baseline itself.      </p> |
| Frozen | <p> Frozen means that the baseline is finalized and new ItemVersions <u>must not</u> be added without creating a new version of the baseline itself.      </p> |
