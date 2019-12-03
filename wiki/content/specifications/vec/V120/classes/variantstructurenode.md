---
title: VariantStructureNode
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body> <i>VariantStructureNodes</i> can be used to define a hierarchical structure on <i>VariantGroups</i>. Every <i>VariantStructureNodes</i> can reference <i>VariantGroups</i> and <i>VariantStructureNodes</i> as children.</body> </html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | variants |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Variant Structure]({{< relref "../key-concepts/variant-structure" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <html><body><p>Specifies a unique identification of the variant code. </p></body></html> | [VariantStructureNode]({{< relref "variantstructurenode.md" >}}) |
|aliasId | [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Room to specify additional identifiers for the VariantStructureNode.      </p>  </body> </html> | [VariantStructureNode]({{< relref "variantstructurenode.md" >}}) |
|abbreviation | [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Room for a human readable short name, title etc. of the VariantGroup.      </p>  </body> </html> | [VariantStructureNode]({{< relref "variantstructurenode.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <html><body><p>On optional human readable description of the variant group. </p></body></html> | [VariantStructureNode]({{< relref "variantstructurenode.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [VariantGroup]({{< relref "variantgroup.md" >}}) | containedGroups | 0..* | 0..* |  |
| [VariantStructureNode]({{< relref "variantstructurenode.md" >}}) | childNodes | 0..* |  |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [VariantStructureNode]({{< relref "variantstructurenode.md" >}}) |  | childNodes | 0..* |  |
| [VariantStructureSpecification]({{< relref "variantstructurespecification.md" >}}) | 0..1 | rootNode | 1 |  |
