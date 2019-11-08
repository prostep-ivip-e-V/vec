---
title: NodeType
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Enumeration for the definition of the type of a TopologyNode.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | topology |
| **Applied Stereotype**  | [OpenEnumeration]({{< relref "openenumeration.md" >}})<br/>  |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| EndNode | <html>   <head>     </head>   <body>     <p> Electrical components are normally placed on an EndNode.      </p>    </body> </html>  |
| Junction | <html><body><p>A Junction is a TopologyNode where no electrical component is placed.  </p></body></html> |
| Inliner | <html><body><p>An Inliner is a TopologyNode where one section of the electrical system is connected to another section. </p></body></html> |
