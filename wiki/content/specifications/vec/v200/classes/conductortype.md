﻿---
title: ConductorType
toc: false
type: specs
date: "2022-03-09"
draft: false
specification: VEC
version: 2.0.0
documentType: "Recommendation"
elementType: Class
classes:
  - ConductorType
menu_name: vec-2.0.0
---
<p> Specifies the type of the conductor, e.g. if it is rigid or stranded.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  | [OpenEnumeration]({{< relref "openenumeration.md" >}})<br/>  |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| Rigid | <p> Used for conductors that are made of solid material.      </p> |
| Stranded | <p> Used for conductors that are made of multiple individual strands (used for most automotive cores).      </p> |
| Foil | <p> Used for conductors that are a foil (e.g. some shields).      </p> |
| Braided | <p> Used for conductors that are made of multiple individual strands that are braided together&#160;(often used for shields).      </p> |
