---
title: DoubleValueProperty
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body> A custom property with a double value.   </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | custom_properties |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [CustomProperty]({{< relref "customproperty.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Extensibility with Custom Properties]({{< relref "../key-concepts/extensibility-with-custom-properties" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|propertyType | [String]({{< relref "string.md" >}}) | 1 |  | [CustomProperty]({{< relref "customproperty.md" >}}) |
|value | [Double]({{< relref "double.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Defines the value of the CustomProperty.      </p>    </body> </html>  | [DoubleValueProperty]({{< relref "doublevalueproperty.md" >}}) |

