---
title: AbstractLocalizedString
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
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
|languageCode | [LanguageCode]({{< relref "languagecode.md" >}}) | 1 | <html><body><p>References the corresponding languageCode of the value.  </p></body></html> | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) |
|value | [String]({{< relref "string.md" >}}) | 1 | <html><body><p>The value of the LocalizedString in language defined by the languageCode. </p></body></html> | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) |

