﻿---
title: IntegerValueProperty
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - IntegerValueProperty
menu_name: vec-2.1.0
---
<p> A custom property with an integer value.      </p>

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
|propertyType| [String]({{< relref "string.md" >}}) | 1 |  | [CustomProperty]({{< relref "customproperty.md" >}}) |
|value| [Integer]({{< relref "integer.md" >}}) | 1 | <p> Defines the value of the CustomProperty.      </p> | [IntegerValueProperty]({{< relref "integervalueproperty.md" >}}) |





