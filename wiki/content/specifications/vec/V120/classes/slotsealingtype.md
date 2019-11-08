---
title: SlotSealingType
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Defines the possible sealing types for a slot, if the slot shall be sealed in its usage.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  | [OpenEnumeration]({{< relref "openenumeration.md" >}})<br/>  |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| None | <html>   <head>     </head>   <body>     <p> The <i>Slot </i>can not be sealed at all.      </p>    </body> </html>  |
| SingleSealing | <html>   <head>     </head>   <body>     <p> The <i>Slot</i> is sealed with a single <i>Seal </i>per <i>Cavity</i> e.g. a <i>CavitySeal </i>or a <i>CavityPlug.</i>      </p>    </body> </html>  |
| MultiSealing | <html>   <head>     </head>   <body>     <p> The <i>Slot </i>is sealed with a more complex sealing variant, typically sealing multiple cavities with a single seal (e.g. a <i>MulitCavityPlug </i>or a combination of those).       </p>    </body> </html>  |
| Moulded | <html>   <head>     </head>   <body>     <p> The <i>Slot</i> is sealed by moulding it with some sort of sealing compound.      </p>    </body> </html>  |
