---
title: TerminalSealingType
toc: false
type: specs
date: "2021-11-30"
draft: false
specification: VEC
version: 2.0.0-rc1
documentType: "Recommendation"
elementType: Class
classes:
  - TerminalSealingType
menu_name: vec-2.0.0-rc1
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
| None | <p> The Terminal cannot be sealed by itself (e.g. a CavitySeal)      </p> |
| Sealed | <p> The Terminal can be sealed and can only be used together with a cavity seal. It is not allowed to be used unsealed.      </p> |
| Neutral | <p> The terminal can be sealed (with a cavity seal), but a seal is not mandatory for this terminal.      </p> |
| Moulded | <p> The terminal can be used in a moulded slot.      </p> |
