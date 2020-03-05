---
title: SlotSealingType
toc: false
type: specs
date: "2017-02-21"
draft: false
specification: VEC
version: 1.1.3
documentType: "Recommendation"
elementType: Class
classes:
  - SlotSealingType
menu_name: vec-1.1.3
---
<p> Defines the possible sealing types for a slot, if the slot shall be sealed in its usage.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  | [OpenEnumeration]({{< relref "openenumeration.md" >}})<br/>  |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| None | <p> The <i>Slot </i>can not be sealed at all.      </p> |
| SingleSealing | <p> The <i>Slot</i> is sealed with a single <i>Seal </i>per <i>Cavity</i> e.g. a <i>CavitySeal </i>or a <i>CavityPlug.</i>      </p> |
| MultiSealing | <p> The <i>Slot </i>is sealed with a more complex sealing variant, typically sealing multiple cavities with a single seal (e.g. a <i>MulitCavityPlug </i>or a combination of those).       </p> |
| Moulded | <p> The <i>Slot</i> is sealed by moulding it with some sort of sealing compound.      </p> |
