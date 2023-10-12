---
title: VariantGroupType
toc: false
type: specs
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - VariantGroupType
menu_name: vec-2.1.0
---
<p> Defines valid values for the type of VariantGroups.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | variants |
| **Applied Stereotype**  |   |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| Family | <p> A group with the type &quot;Family&quot; defines a set of variant codes that are mutually exclusive, and a valid configuration <u>must</u> contain one variant code from the group.      </p> |
| OptionalFamily | <p> A group with the type &quot;OptionalFamily&quot; defines a set of variant codes that are mutually exclusive, and a valid configuration can, but does not have to contain one variant code from the group.      </p> |
| LogicalGroup | Defines a logical grouping on variant codes. However, no semantic constraint is implied. |
