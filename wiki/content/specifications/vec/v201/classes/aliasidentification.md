---
title: AliasIdentification
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - AliasIdentification
menu_name: vec-2.0.1
---
<p> Class for the definition of alias identifications. Alias identifications are additional identifications for VEC-elements, which are valid in a certain scope (e.g. PPS-ID's).      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | core |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identificationValue| [String]({{< relref "string.md" >}}) | 1 | <p>Specifies the identification value.  </p> | [AliasIdentification]({{< relref "aliasidentification.md" >}}) |
|type| [AliasIdentificationType]({{< relref "aliasidentificationtype.md" >}}) | 0..1 | <p> Defines the type (or the role)&#160;of the AliasIdentification. Defined literals are contained in an OpenEnumeration.      </p> | [AliasIdentification]({{< relref "aliasidentification.md" >}}) |
|scope| [String]({{< relref "string.md" >}}) | 0..1 | <p> The scope in which the AliasIdentification is valid /&#160;or the issuer of the alias id. This could be for example a certain process, a company or an IT-System.      </p> | [AliasIdentification]({{< relref "aliasidentification.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p>On optional human readable description of the AliasIdentification.  </p> | [AliasIdentification]({{< relref "aliasidentification.md" >}}) |





