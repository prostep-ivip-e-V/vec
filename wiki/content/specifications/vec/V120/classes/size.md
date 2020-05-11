---
title: Size
toc: false
type: specs
date: "2020-05-11"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - Size
menu_name: vec-1.2.0
---
<p> Defines the size of an element by width &amp; height. Per definition is width &gt; height.      </p>

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
|width | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <p> The width of the element.      </p> | [Size]({{< relref "size.md" >}}) |
|height | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <p>The height of the element. </p> | [Size]({{< relref "size.md" >}}) |

