---
title: VariantCode
toc: false
type: specs
date: "2020-02-01"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - VariantCode
menu_name: vec-1.2.0
---
<p> VariantCodes are defining the literals on which VariantConfiguration are stated. Possible VariantCodes might be different for steering types, optional equipment, engine-power class.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | variants |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the variant code. This is also the literal value for the VariantCode, which shall be used in the logisticControlExpressions of VariantConfigurations.      </p> | [VariantCode]({{< relref "variantcode.md" >}}) |
|aliasId | [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <p> Room to specify additional identifiers for the VariantCode.      </p> | [VariantCode]({{< relref "variantcode.md" >}}) |
|abbreviation | [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..1 | <p> Room for a human readable short name, title etc. of the VariantConfiguration.      </p> | [VariantCode]({{< relref "variantcode.md" >}}) |
|codeType | [String]({{< relref "string.md" >}}) | 0..1 | <p> Allows the classification of a VariantCodes (e.g. Base-Option, Extra-Option, ...).      </p> | [VariantCode]({{< relref "variantcode.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p>On optional human readable description of the variant code. </p> | [VariantCode]({{< relref "variantcode.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [VariantCodeSpecification]({{< relref "variantcodespecification.md" >}}) | 1 | variantCode | 0..* | Specifies the individual VariantCodes defined in the VariantCodeSpecification. |
| [VariantGroup]({{< relref "variantgroup.md" >}}) | 0..* | variantCode | 0..* | References the VariantCodes that are member of the VariantGroup. |
