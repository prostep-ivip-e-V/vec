---
title: BaselineState
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body> Enumeration the define the valid states of a baseline.</body> </html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | core |
| **Applied Stereotype**  | [OpenEnumeration]({{< relref "openenumeration.md" >}})<br/>  |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| Draft | <html>   <head>     </head>   <body> Draft means that the baseline is not finalized yet and new ItemVersions can be added without the necessity to create a new version of the baseline itself.</body> </html> |
| Frozen | <html>   <head>     </head>   <body> Frozen means that the baseline is finalized and new ItemVersions <u>must not</u> be added without creating a new version of the baseline itself.</body> </html> |
