---
title: WireType
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Specifies a wire type. A wire type is always defined by a key value. What wire type is meant by this key value is defined by a standard reference system.     </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |


## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|type | [String]({{< relref "string.md" >}}) | 1 | <html><body><p>Specifies the type of the wire (e.g. FLRY, NYFAZw). Valid values are defined by the wireTypeReferenceSystem.  </p></body></html> | [WireType]({{< relref "wiretype.md" >}}) |
|referenceSystem | [String]({{< relref "string.md" >}}) | 1 | <html><body><p>Specifies the reference system for the wire type.  </p></body></html> | [WireType]({{< relref "wiretype.md" >}}) |

