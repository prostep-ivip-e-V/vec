---
title: Color
toc: false
type: specs
date: "2017-02-21"
draft: false
specification: VEC
version: 1.1.3
documentType: "Recommendation"
elementType: Class
classes:
  - Color
menu_name: vec-1.1.3
---
<p> Specifies a color value. A color is always defined by a key value. What color is meant by this key value is defined by a standard reference systems (e.g. RAL).     </p>      <p> For example if a RAL color should be expressed in the terms of the VEC the <i>referenceSystem</i> would be &quot;RAL&quot;, the <i>key</i> would be the RAL number defined by the standard (e.g. &quot;1003&quot; for signal yellow).     </p>      <p> Attributes of the type Color normally have the multiplicity [0..*]. This means that such an attribute can have a value for different referenceSystems (e.g. RAL, RGB,...). It must not have multiple values for the same ReferenceSystem.     </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | physical_information |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|key | [String]({{< relref "string.md" >}}) | 1 | <p>The key of the color in the corresponding color reference system. </p> | [Color]({{< relref "color.md" >}}) |
|referenceSystem | [String]({{< relref "string.md" >}}) | 1 | <p> The identification of the color reference system, which is defining possible values and the semantic of color keys. (see KBLFRM-315)      </p> | [Color]({{< relref "color.md" >}}) |
|description | [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..* | <p>On optional human readable description of the color (e.g. the name).  </p> | [Color]({{< relref "color.md" >}}) |

