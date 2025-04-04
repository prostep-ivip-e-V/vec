﻿---
title: VariantStructureNode
toc: false
type: specs
date: "2022-03-09"
draft: false
specification: VEC
version: 2.0.0
documentType: "Recommendation"
elementType: Class
classes:
  - VariantStructureNode
menu_name: vec-2.0.0
---
<p> <i>VariantStructureNodes</i> can be used to define a hierarchical structure on <i>VariantGroups</i>. Every <i>VariantStructureNodes</i> can reference <i>VariantGroups</i> and <i>VariantStructureNodes</i> as children.      </p>

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
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the <i>VariantStructureNode</i>.      </p> | [VariantStructureNode]({{< relref "variantstructurenode.md" >}}) |
|aliasId | [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <p> Room to specify additional identifiers for the <i>VariantStructureNode</i>.      </p> | [VariantStructureNode]({{< relref "variantstructurenode.md" >}}) |
|abbreviation | [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..1 | <p> Room for a human readable short name, title etc. of the <i>VariantStructureNode</i>.      </p> | [VariantStructureNode]({{< relref "variantstructurenode.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> On optional human readable description of the <i>VariantStructureNode</i>.      </p> | [VariantStructureNode]({{< relref "variantstructurenode.md" >}}) |

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
