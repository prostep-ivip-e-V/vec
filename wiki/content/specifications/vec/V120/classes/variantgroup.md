---
title: VariantGroup
toc: false
type: specs
date: "2020-02-01"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - VariantGroup
menu_name: vec-1.2.0
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
|aliasId | [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <p> Room to specify additional identifiers for the VariantGroup.      </p> | [VariantGroup]({{< relref "variantgroup.md" >}}) |
|abbreviation | [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..1 | <p> Room for a human readable short name, title etc. of the VariantGroup.      </p> | [VariantGroup]({{< relref "variantgroup.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p>On optional human readable description of the variant group. </p> | [VariantGroup]({{< relref "variantgroup.md" >}}) |
|groupType | [VariantGroupType]({{< relref "variantgrouptype.md" >}}) | 0..1 | <p> Allows the classification of a VariantGroups into different types. For example: - composition (e.g. winter package) - choice (e.g. right hand / left hand driving). Agreed literals for this attribute are defined in the OpenEnumeration <i>VariantGroupType.</i>      </p> | [VariantGroup]({{< relref "variantgroup.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [VariantCode]({{< relref "variantcode.md" >}}) | variantCode | 0..* | 0..* | References the VariantCodes that are member of the VariantGroup. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [VariantStructureNode]({{< relref "variantstructurenode.md" >}}) | 0..* | containedGroups | 0..* |  |
| [VariantGroupSpecification]({{< relref "variantgroupspecification.md" >}}) | 1 | variantGroup | 0..* | Specifies the individual VariantGroups defined in the VariantGroupSpecification. |
