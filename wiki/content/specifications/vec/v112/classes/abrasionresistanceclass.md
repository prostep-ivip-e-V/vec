---
title: AbrasionResistanceClass
toc: false
type: specs
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Class
classes:
  - AbrasionResistanceClass
menu_name: vec-1.1.2
---
<p> Allows the definition of an abrasion resistance class. The abrasion resistance class of a component is specified as a level of resistance against abrasion. The level is specified by the ClassKey. Valid keys are specified by the reference system.     </p>      <p> Attributes of the type AbrasionResistanceClass normally have the multiplicity [0..*]. This means that such an attribute can have AbrasionResistanceClass entries for different ReferenceSystems. It must not have multiple entries for the same reference system.      </p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | physical_information |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|classKey | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a key for the level defined in the abrasion resistance class (e.g. A, B, C).      </p> | [AbrasionResistanceClass]({{< relref "abrasionresistanceclass.md" >}}) |
|referenceSystem | [String]({{< relref "string.md" >}}) | 1 | <p> The identification of the abrasion resistance class reference system, which is defining possible values and the semantic of abrasion resistance keys.      </p> | [AbrasionResistanceClass]({{< relref "abrasionresistanceclass.md" >}}) |

