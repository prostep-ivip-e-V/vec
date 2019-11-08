---
title: TerminalSealingType
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Defines the possible sealing types for a terminal, if the terminal shall be sealed in its usage.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  | [OpenEnumeration]({{< relref "openenumeration.md" >}})<br/>  |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| None | <html>   <head>     </head>   <body>     <p> The Terminal can not be sealed by itself (e.g. a CavitySeal)      </p>    </body> </html>  |
| Sealed | <html>   <head>     </head>   <body>     <p> The Terminal can be sealed and can only be used together with a cavity seal. It is not allowed to be used unsealed.      </p>    </body> </html>  |
| Neutral | <html>   <head>     </head>   <body>     <p> The terminal can be sealed (with a cavity seal), but a seal is not mandatory for this terminal.      </p>    </body> </html>  |
| Moulded | <html>   <head>     </head>   <body>     <p> The terminal can be used in a moulded slot.      </p>    </body> </html>  |
