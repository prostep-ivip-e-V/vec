---
title: PartRelationType
toc: false
type: specs
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Class
classes:
  - PartRelationType
menu_name: vec-1.1.1
---
<p> Defines how the set of <i>acessoryParts </i>referenced by a <i>PartRelation</i> should be interpreted.      </p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  | [ClosedEnumeration]({{< relref "closedenumeration.md" >}})<br/>  |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| Mandatory | <p> <i>Mandatory </i>means that in a usage of a component <u>all</u> referenced <i>acessoryParts</i> must be used.      </p> |
| Optional | <p> <i>Optional </i>means that in a usage of a component <u>some</u> referenced <i>acessoryParts</i> can be used by choice.      </p> |
| OneOfAll | <p> <i>OneOfAll </i>means that in a usage of a component exactly <u>one</u> of the referenced <i>acessoryParts</i> must be selected.      </p> |
