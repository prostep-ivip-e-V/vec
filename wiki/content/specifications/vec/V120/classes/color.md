---
title: Color
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Specifies a color value. A color is always defined by a key value. What color is meant by this key value is defined by a standard reference systems (e.g. RAL).     </p>      <p> For example if a RAL color should be expressed in the terms of the VEC the <i>referenceSystem</i> would be &quot;RAL&quot;, the <i>key</i> would be the RAL number defined by the standard (e.g. &quot;1003&quot; for signal yellow).     </p>      <p> Attributes of the type Color normally have the multiplicity [0..*]. This means that such an attribute can have a value for different referenceSystems (e.g. RAL, RGB,...). It must not have multiple values for the same ReferenceSystem.     </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | physical_information |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Foundation Classes for Physical Properties]({{< relref "../description-of-components/foundation-classes-for-physical-properties" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|key | [String]({{< relref "string.md" >}}) | 1 | <html><body><p>The key of the color in the corresponding color reference system. </p></body></html> | [Color]({{< relref "color.md" >}}) |
|referenceSystem | [ColorReferenceSystem]({{< relref "colorreferencesystem.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> The identification of the color reference system, which is defining possible values and the semantic of color keys. (see KBLFRM-315). For common color reference systems the literals defined in the open enumeration <i>ColorReferenceSystem </i>shall be used.      </p>  </body> </html> | [Color]({{< relref "color.md" >}}) |
|description | [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..* | <html><body><p>On optional human readable description of the color (e.g. the name).  </p></body></html> | [Color]({{< relref "color.md" >}}) |

