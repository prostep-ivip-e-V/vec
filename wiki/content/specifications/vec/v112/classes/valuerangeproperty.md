---
title: ValueRangeProperty
toc: false
type: specs
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Class
classes:
  - ValueRangeProperty
menu_name: vec-1.1.2
---
<p>A custom property with a value range. (see KBLFRM-319) </p>
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
|value | [ValueRange]({{< relref "valuerange.md" >}}) | 1 | <p> Defines the value of the CustomProperty.      </p> | [ValueRangeProperty]({{< relref "valuerangeproperty.md" >}}) |

