---
title: LocalizedString
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Allows the internationalization of text contents. Attributes of the type LocalizedString normally have the multiplicity [0..*]. This means that such an attribute can have multiple values for different locales. It must not have multiple values for the same locale.      </p>    </body> </html> 
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

