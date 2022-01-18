---
title: PartRelationType
toc: false
type: specs
date: "2022-01-18"
draft: false
specification: VEC
version: 1.2.2
documentType: "Recommendation"
elementType: Class
classes:
  - PartRelationType
menu_name: vec-1.2.2
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
| Custom | <p> Custom means, that there is some kind of custom constraints /&#160;logic between referenced<i> PartVersions</i> that has to be evaluated to determine the selected accessories.      </p> |
