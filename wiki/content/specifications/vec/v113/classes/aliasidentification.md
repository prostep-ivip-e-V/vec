---
title: AliasIdentification
toc: false
type: specs
date: "2017-02-21"
draft: false
specification: VEC
version: 1.1.3
documentType: "Recommendation"
elementType: Class
classes:
  - AliasIdentification
menu_name: vec-1.1.3
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
|IdentificationValue | [String]({{< relref "string.md" >}}) | 1 | <p>Specifies the identification value.  </p> | [AliasIdentification]({{< relref "aliasidentification.md" >}}) |
|Scope | [String]({{< relref "string.md" >}}) | 0..1 | <p>The scope in which the AliasIdentification is valid.  </p> | [AliasIdentification]({{< relref "aliasidentification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p>On optional human readable description of the AliasIdentification.  </p> | [AliasIdentification]({{< relref "aliasidentification.md" >}}) |

