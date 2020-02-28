---
title: Fuse_type
toc: false
type: specs
date: "2018-07-04"
draft: false
specification: KBL
version: 2.5
documentType: "Recommendation"
elementType: Class
classes:
  - Fuse_type
menu_name: kbl-2.5
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
|Key | [String]({{< relref "string.md" >}}) | 1 | <p> The key of the fuse type in the corresponding fuse type reference system.      </p> | [Fuse_type]({{< relref "fuse_type.md" >}}) |
|Reference_system | [String]({{< relref "string.md" >}}) | 1 | <p> The identification of the fuse type reference system, which is defining possible values and the semantics of fuse type keys.      </p> | [Fuse_type]({{< relref "fuse_type.md" >}}) |

