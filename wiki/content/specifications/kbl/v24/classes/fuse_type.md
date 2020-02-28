---
title: Fuse_type
toc: false
type: specs
date: "2015-03-16"
draft: false
specification: KBL
version: 2.4
documentType: "Recommendation"
elementType: Class
classes:
  - Fuse_type
menu_name: kbl-2.4
---
Allows the definition of fuse type information.

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 2_Parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Key | [String]({{< relref "string.md" >}}) | 1 | The key of the fuse type in the corresponding fuse type reference system. | [Fuse_type]({{< relref "fuse_type.md" >}}) |
|Reference_system | [String]({{< relref "string.md" >}}) | 1 | The identification of the fuse type reference system, which is defining possible values and the semantic of fuse type keys. | [Fuse_type]({{< relref "fuse_type.md" >}}) |

