---
title: Localized_string
toc: false
type: specs
date: "2018-07-04"
draft: false
specification: KBL
version: 2.5
documentType: "Recommendation"
elementType: Class
classes:
  - Localized_string
menu_name: kbl-2.5
---
<p> Allows the internationalization of text contents. Attributes of the type LocalizedString normally have the multiplicity [0..*]. This means that such an attribute can have multiple values for different locales. It must not have multiple values for the same locale.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 6_Foundation |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Language_code | [Language_code]({{< relref "language_code.md" >}}) | 1 | <p>References the corresponding languageCode of the value.  </p> | [Localized_string]({{< relref "localized_string.md" >}}) |
|Value | [String]({{< relref "string.md" >}}) | 1 | <p>The value of the LocalizedString in language defined by the languageCode. </p> | [Localized_string]({{< relref "localized_string.md" >}}) |

