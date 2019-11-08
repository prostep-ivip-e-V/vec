---
title: PartRelationType
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Defines how the set of <i>acessoryParts </i>referenced by a <i>PartRelation</i> should be interpreted.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  | [ClosedEnumeration]({{< relref "closedenumeration.md" >}})<br/>  |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| Mandatory | <html>   <head>     </head>   <body>     <p> <i>Mandatory </i>means that in a usage of a component <u>all</u> referenced <i>acessoryParts</i> must be used.      </p>    </body> </html>  |
| Optional | <html>   <head>     </head>   <body>     <p> <i>Optional </i>means that in a usage of a component <u>some</u> referenced <i>acessoryParts</i> can be used by choice.      </p>    </body> </html>  |
| OneOfAll | <html>   <head>     </head>   <body>     <p> <i>OneOfAll </i>means that in a usage of a component exactly <u>one</u> of the referenced <i>acessoryParts</i> must be selected.      </p>    </body> </html>  |
