---
title: TerminalSealingType
toc: false
type: specs
date: "2017-02-21"
draft: false
specification: VEC
version: 1.1.3
documentType: "Recommendation"
elementType: Class
classes:
  - TerminalSealingType
menu_name: vec-1.1.3
---
<p> Defines the possible sealing types for a terminal, if the terminal shall be sealed in its usage.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  | [OpenEnumeration]({{< relref "openenumeration.md" >}})<br/>  |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| None | <p> The Terminal can not be sealed by itself (e.g. a CavitySeal)      </p> |
| Sealed | <p> The Terminal can be sealed and can only be used together with a cavity seal. It is not allowed to be used unsealed.      </p> |
| Neutral | <p> The terminal can be sealed (with a cavity seal), but a seal is not mandatory for this terminal.      </p> |
| Moulded | <p> The terminal can be used in a moulded slot.      </p> |
