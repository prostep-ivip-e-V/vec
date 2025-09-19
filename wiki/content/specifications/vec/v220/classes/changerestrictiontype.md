---
title: ChangeRestrictionType
toc: false
type: specs
date: "2025-09-19"
draft: false
specification: VEC
version: 2.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - ChangeRestrictionType
menu_name: vec-2.2.0
---
The <i>ChangeRestrictionType</i> defines the reason for a <i>changeRestriction</i> (see <i>ItemVersion.changeRestriction</i> for more details)<i>.</i>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | core |
| **Applied Stereotype**  |   |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| Legal | The <i>ItemVersion</i> falls under legal and other regulatory aspects (e.g. it defines type approval characteristics). |
| Safety | The <i>ItemVersion </i>influences safety critical elements, and their changes are underlying specific restrictions. |
| Function | A change of the <i>ItemVersion</i> might create a heavy impact on the function of the product, e.g. because of critical interdependencies like a bearing fit. |
