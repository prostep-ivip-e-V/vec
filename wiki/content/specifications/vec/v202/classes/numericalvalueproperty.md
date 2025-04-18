﻿---
title: NumericalValueProperty
toc: false
type: specs
date: "2023-03-24"
draft: false
specification: VEC
version: 2.0.2
documentType: "Recommendation"
elementType: Class
classes:
  - NumericalValueProperty
menu_name: vec-2.0.2
---
<p>A custom property with a numerical value. (see KBLFRM-319) </p>

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
|value| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <p> Defines the value of the <i>CustomProperty.</i>      </p> | [NumericalValueProperty]({{< relref "numericalvalueproperty.md" >}}) |





