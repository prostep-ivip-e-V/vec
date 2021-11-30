---
title: ComplexProperty
toc: false
type: specs
date: "2021-11-30"
draft: false
specification: VEC
version: 2.0.0-rc1
documentType: "Recommendation"
elementType: Class
classes:
  - ComplexProperty
menu_name: vec-2.0.0-rc1
---
<p> A custom property that represents a tuple of values.      </p>

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

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [CustomProperty]({{< relref "customproperty.md" >}}) | customProperty | 0..* | 1 | <p> The customProperties that represent the individual values of the complex property.      </p> |
