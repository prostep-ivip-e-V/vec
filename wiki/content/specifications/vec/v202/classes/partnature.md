---
title: PartNature
toc: false
type: specs
date: "2023-03-24"
draft: false
specification: VEC
version: 2.0.2
documentType: "Recommendation"
elementType: Class
classes:
  - PartNature
menu_name: vec-2.0.2
---
<p> <i>OpenEnumeration</i> that defines the nature of a <i>PartVersion</i>. The nature specifies how the <i>PartVersion </i>can be used in the different processes or the significance of the <i>PartVersion</i> in the process.       </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | core |
| **Applied Stereotype**  |   |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| Preliminary | <p> <i>Preliminary</i> <i>PartVersion</i> represent part numbers which are used as place holders for parts that are not yet developed, or which are representing prototype parts that are not allowed in serial production.      </p> |
| Productive | <p> <i>Productive</i> <i>PartVersions</i> represent regular part numbers that are used in serial production.      </p> |
| CustomerOrder | <p> <i>CustomerOrder</i> <i>PartVersions</i> represent part numbers that are <u>not </u>regularly used in serial production. They are only used to fulfil special customer orders (e.g. an adapter connector for equipment of a special purpose vehicle).      </p> |
