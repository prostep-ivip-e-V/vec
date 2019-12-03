---
title: LocalizedTypedString
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
Allows the internationalization of text contents in a typed way. Attributes of the type LocalizedTypedString normally have the multiplicity [0..*]. This means that such an attribute can have multiple values for different locales and types. It must not have multiple values for the same locale and type.
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | core |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Localization of Values]({{< relref "../key-concepts/localization-of-values" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|languageCode | [LanguageCode]({{< relref "languagecode.md" >}}) | 1 | <html><body><p>References the corresponding languageCode of the value.  </p></body></html> | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) |
|value | [String]({{< relref "string.md" >}}) | 1 | <html><body><p>The value of the LocalizedString in language defined by the languageCode. </p></body></html> | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) |
|type | [LocalizedTypedStringType]({{< relref "localizedtypedstringtype.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Defines the <i>type</i> of the <i>LocalizedTypedString</i>. This allows the definition of a more detailed semantic than the semantic of the attribute itself with the type <i>LocalizedTypedString. </i>Agreed type values are defined in an OpenEnumeration.      </p>  </body> </html> | [LocalizedTypedString]({{< relref "localizedtypedstring.md" >}}) |

