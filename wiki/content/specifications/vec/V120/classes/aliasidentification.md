---
title: AliasIdentification
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Class for the definition of alias identifications. Alias identifications are additional identifications for VEC-elements, which are valid in a certain scope (e.g. PPS-ID's).      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | core |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Parts and Documents]({{< relref "../key-concepts/parts-and-documents" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identificationValue | [String]({{< relref "string.md" >}}) | 1 | <html><body><p>Specifies the identification value.  </p></body></html> | [AliasIdentification]({{< relref "aliasidentification.md" >}}) |
|type | [AliasIdentificationType]({{< relref "aliasidentificationtype.md" >}}) | 0..1 | <html>   <head>     </head>   <body> Defines the type (or the role)&#160;of the AliasIdentification. Defined literals are contained in an OpenEnumeration.</body> </html> | [AliasIdentification]({{< relref "aliasidentification.md" >}}) |
|scope | [String]({{< relref "string.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> The scope in which the AliasIdentification is valid /&#160;or the issuer of the alias id. This could be for example a certain process, a company or an IT-System.      </p>  </body> </html> | [AliasIdentification]({{< relref "aliasidentification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <html><body><p>On optional human readable description of the AliasIdentification.  </p></body></html> | [AliasIdentification]({{< relref "aliasidentification.md" >}}) |

