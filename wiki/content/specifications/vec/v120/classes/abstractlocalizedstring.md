---
title: AbstractLocalizedString
toc: false
type: specs
date: "2020-05-11"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - AbstractLocalizedString
menu_name: vec-1.2.0
---
Abstract super-class for Localized text values.

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | core |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | true |
| **Derived Classifiers** | [LocalizedString]({{< relref "localizedstring.md" >}}), [LocalizedTypedString]({{< relref "localizedtypedstring.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|languageCode | [LanguageCode]({{< relref "languagecode.md" >}}) | 1 | <p>References the corresponding languageCode of the value.  </p> | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) |
|value | [String]({{< relref "string.md" >}}) | 1 | <p>The value of the LocalizedString in language defined by the languageCode. </p> | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) |

