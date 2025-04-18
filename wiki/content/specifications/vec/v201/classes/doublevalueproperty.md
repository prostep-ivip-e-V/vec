﻿---
title: DoubleValueProperty
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - DoubleValueProperty
menu_name: vec-2.0.1
---
<p> A custom property with a double value.      </p>

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
|value| [Double]({{< relref "double.md" >}}) | 1 | <p> Defines the value of the CustomProperty.      </p> | [DoubleValueProperty]({{< relref "doublevalueproperty.md" >}}) |





