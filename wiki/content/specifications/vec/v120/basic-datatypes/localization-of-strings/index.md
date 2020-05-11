---
title: Localization of Strings
toc: false
type: specs
layout: diagram
date: "2020-05-11"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Diagram
classes:
  - LocalizedString
  - LanguageCode
  - LocalizedTypedStringType
  - AbstractLocalizedString
  - LocalizedTypedString
menu:
  VEC-1.2.0:    
    parent: basic-datatypes
    identifier: basic-datatypes/localization-of-strings
    weight: 1002001 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1002001
---
{{< svgfigure src="localization-of-strings.png" width="540" height="335" caption="Localization of Strings" numbered="true" >}}
  {{< svglink relref="../../classes/localizedstring.md" x="15.0" y="155.0" width="93.0" height="43.0" >}}
  {{< svglink relref="../../classes/languagecode.md" x="414.0" y="15.0" width="112.0" height="152.0" >}}
  {{< svglink relref="../../classes/localizedtypedstringtype.md" x="169.0" y="239.0" width="154.0" height="82.0" >}}
  {{< svglink relref="../../classes/abstractlocalizedstring.md" x="57.0" y="22.0" width="180.0" height="67.0" >}}
  {{< svglink relref="../../classes/localizedtypedstring.md" x="169.0" y="155.0" width="187.0" height="55.0" >}}
{{< / svgfigure >}}
<p> The VEC provides a concept for the localization of string values. Every attribute that can be localized has the type of <i>AbstractLocalizedString</i> or one of its subclasses.      </p>      <p> An <i>AbstractLocalizedString</i> consists of an ISO <i>languageCode</i> and a <i>value</i>. Attributes of this type have a multiplicity of [0..*].      </p>      <p> In the case of a <i>LocalizedString</i> the attribute represents a human readable text with a specific semantic. All <i>LocalizedString</i> instances for a single attribute must represent the same meaning in different languages.      </p>      <p> When a <i>LocalizedTypedString </i>is used,<i> </i>the semantics of the attribute values can be further detailed by the <i>type</i> attribute. For example, an <i>ItemVersion</i> can have more than one description with a more specific semantic of each description type. In this case, all <i>LocalizedTypedString</i> instances for an attribute must represent the same meaning for their type value in different languages.      </p>