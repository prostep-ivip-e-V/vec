---
title: ItemEquivalence
toc: false
type: specs
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Class
classes:
  - ItemEquivalence
menu_name: vec-1.1.1
---
<p> Defines two or more ItemVersions to be equivalent out of the view of a certain company. The ItemEquivalence class will most likely be used by a company to express which PartNumber a certain PartVersion has in the context of other companies. However, for every other company separate ItemVersion-instances are needed as the statement of equivalence can be very subjective.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | pdm |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|companyName | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies the company which states the ItemEquivalence.      </p> | [ItemEquivalence]({{< relref "itemequivalence.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [ItemVersion]({{< relref "itemversion.md" >}}) | item | 2..* | 0..* | References all ItemVersion that are considered to be equivalent by the ItemEquivalence. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [DocumentVersion]({{< relref "documentversion.md" >}}) | 1 | itemEquivalence | 0..* | Specifies ItemEquivalances defined by the DocumentVersion. |
