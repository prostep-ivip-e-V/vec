---
title: WireLengthType
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body> Specifies possible values for the <i>lengthType </i>of <i>WireLength</i>.</body> </html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_electrical_parts |
| **Applied Stereotype**  | [OpenEnumeration]({{< relref "openenumeration.md" >}})<br/>  |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| DMU | <html>   <head>     </head>   <body>     <p> The length of the wire is calculated from the sum of the lengths of the neutral axes of the corresponding segments in the DMU model.      </p>  </body> </html> |
| Drawing | <html>   <head>     </head>   <body>     <p> The length is rounded length from the DMU model (shown on the drawing), without any add-ons      </p>  </body> </html> |
| Contract | <html>   <head>     </head>   <body>     <p> The agreed length for any negotiations and calculations.      </p>  </body> </html> |
| Production | <html>   <head>     </head>   <body>     <p> The cutting length for the used in production environments.      </p>  </body> </html> |
