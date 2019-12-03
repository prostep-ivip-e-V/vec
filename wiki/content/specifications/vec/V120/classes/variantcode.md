---
title: VariantCode
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> VariantCodes are defining the literals on which VariantConfiguration are stated. Possible VariantCodes might be different for steering types, optional equipment, engine-power class.      </p>    </body> </html> 
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
|identification | [String]({{< relref "string.md" >}}) | 1 | <html><body><p>Specifies a unique identification of the variant code. This is also the literal value for the VariantCode, which shall be used in the logisticControlExrpessions of VariantConfigurations.  </p></body></html> | [VariantCode]({{< relref "variantcode.md" >}}) |
|aliasId | [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Room to specify additional identifiers for the VariantCode.      </p>  </body> </html> | [VariantCode]({{< relref "variantcode.md" >}}) |
|abbreviation | [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Room for a human readable short name, title etc. of the VariantConfiguration.      </p>  </body> </html> | [VariantCode]({{< relref "variantcode.md" >}}) |
|codeType | [String]({{< relref "string.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Allows the classification of a VariantCodes (e.g. Base-Option, Extra-Option, ...).      </p>    </body> </html>  | [VariantCode]({{< relref "variantcode.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <html><body><p>On optional human readable description of the variant code. </p></body></html> | [VariantCode]({{< relref "variantcode.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [VariantCodeSpecification]({{< relref "variantcodespecification.md" >}}) | 1 | variantCode | 0..* | Specifies the individual VariantCodes defined in the VariantCodeSpecification.  |
| [VariantGroup]({{< relref "variantgroup.md" >}}) | 0..* | variantCode | 0..* | References the VariantCodes that are member of the VariantGroup.   |
