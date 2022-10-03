---
title: BaselineContent
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - BaselineContent
menu_name: vec-2.0.1
---
<p> Enumeration to define the state of the content of the baseline in regard of its defined scope.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | core |
| **Applied Stereotype**  | [OpenEnumeration]({{< relref "openenumeration.md" >}})<br/>  |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| Partial | <p> A partial baseline does not contain all elements of the final scope of the baseline (e.g. it is a baseline created during the development process).      </p> |
| Complete | <p> A complete baseline contains <u>all</u> elements of the final scope of the baseline.      </p> |
