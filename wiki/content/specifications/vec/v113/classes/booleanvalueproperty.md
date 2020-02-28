---
title: BooleanValueProperty
toc: false
type: specs
date: "2017-02-21"
draft: false
specification: VEC
version: 1.1.3
documentType: "Recommendation"
elementType: Class
classes:
  - BooleanValueProperty
menu_name: vec-1.1.3
---
<p> A custom property with a boolean value.      </p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | custom_properties |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [CustomProperty]({{< relref "customproperty.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|propertyType | [String]({{< relref "string.md" >}}) | 1 |  | [CustomProperty]({{< relref "customproperty.md" >}}) |
|value | [Boolean]({{< relref "boolean.md" >}}) | 1 | <p> Defines the value of the CustomProperty.      </p> | [BooleanValueProperty]({{< relref "booleanvalueproperty.md" >}}) |

