---
title: TubeSlitStyle
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Defines valid types / styles of a slitted tube.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | non_electrical_parts |
| **Applied Stereotype**  | [OpenEnumeration]({{< relref "openenumeration.md" >}})<br/>  |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| Slit | <html>   <head>     </head>   <body>     <p> The tube has just a simple slit.      </p>    </body> </html>  |
| SelfClosing | <html>   <head>     </head>   <body>     <p> The slit of the tube is self closing.      </p>    </body> </html>  |
| Closable | <html>   <head>     </head>   <body> The slit can be closed manually.   </body> </html>  |
| Overlapping | <html>   <head>     </head>   <body>     <p> The edges of the slit are overlapping.      </p>    </body> </html>  |
| TwoParts | <html>   <head>     </head>   <body>     <p> Two-parted tubes consist of inner tube and an outer tube (normally defined as one <i>PartNumber)</i>. Both tubes are slit and are combined into each other during assembly, thus creating one closed tube.      </p>    </body> </html>  |
