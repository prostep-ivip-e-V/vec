---
title: PartNature
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> <i>OpenEnumeration</i> that defines the nature of a <i>PartVersion</i>. The nature specifies how the <i>PartVersion </i>can be used in the different processes or the significance of the <i>PartVersion</i> in the process.       </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | core |
| **Applied Stereotype**  | [OpenEnumeration]({{< relref "openenumeration.md" >}})<br/>  |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| Preliminary | <html>   <head>     </head>   <body>     <p> <i>Preliminary</i> <i>PartVersion</i> represent part numbers which are used as place holders for parts that are not yet developed or which are representing prototype parts that are not allowed in serial production.       </p>    </body> </html>  |
| Productive | <html>   <head>     </head>   <body>     <p> <i>Productive</i> <i>PartVersions</i> represent regular part numbers that are used in serial production.      </p>    </body> </html>  |
| CustomerOrder | <html>   <head>     </head>   <body>     <p> <i>CustomerOrder</i> <i>PartVersions</i> represent part numbers that are <u>not </u>regularly used in serial production. They are only used to fulfill special customer orders (e.g. an adapter connector for equipment of a special purpose vehicle).      </p>    </body> </html>  |
