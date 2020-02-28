---
title: VariantGroup
toc: false
type: specs
date: "2017-02-21"
draft: false
specification: VEC
version: 1.1.3
documentType: "Recommendation"
elementType: Class
classes:
  - VariantGroup
menu_name: vec-1.1.3
---
<p> With a VariantGroup it is possible to group VariantCodes. The semantic of this grouping should be defined with the groupType (e.g. composition, choice, etc.).      </p>
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
|identification | [String]({{< relref "string.md" >}}) | 1 | <p>Specifies a unique identification of the variant code. </p> | [VariantGroup]({{< relref "variantgroup.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p>On optional human readable description of the variant group. </p> | [VariantGroup]({{< relref "variantgroup.md" >}}) |
|groupType | [String]({{< relref "string.md" >}}) | 0..1 | <p>Allows the classification of a VariantGroups into different types. For example: - composition (e.g. winter package) - choice (e.g. right hand / left hand driving)  </p> | [VariantGroup]({{< relref "variantgroup.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [VariantCode]({{< relref "variantcode.md" >}}) | variantCode | 0..* | 0..* | References the VariantCodes that are member of the VariantGroup. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [VariantGroupSpecification]({{< relref "variantgroupspecification.md" >}}) | 1 | variantGroup | 0..* | Specifies the individual VariantGroups defined in the VariantGroupSpecification. |
