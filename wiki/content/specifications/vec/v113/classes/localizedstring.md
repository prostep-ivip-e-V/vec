---
title: LocalizedString
toc: false
type: specs
date: "2017-02-21"
draft: false
specification: VEC
version: 1.1.3
documentType: "Recommendation"
elementType: Class
classes:
  - LocalizedString
menu_name: vec-1.1.3
---
<p> Allows the internationalization of text contents. Attributes of the type LocalizedString normally have the multiplicity [0..*]. This means that such an attribute can have multiple values for different locales. It must not have multiple values for the same locale.      </p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | core |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|languageCode | [LanguageCode]({{< relref "languagecode.md" >}}) | 1 | <p>References the corresponding languageCode of the value.  </p> | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) |
|value | [String]({{< relref "string.md" >}}) | 1 | <p>The value of the LocalizedString in language defined by the languageCode. </p> | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) |

