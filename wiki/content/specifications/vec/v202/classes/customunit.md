---
title: CustomUnit
toc: false
type: specs
date: "2023-03-24"
draft: false
specification: VEC
version: 2.0.2
documentType: "Recommendation"
elementType: Class
classes:
  - CustomUnit
menu_name: vec-2.0.2
---
<p>A CustomUnit can be used to define "FreeText"-Units. Custom units must not be used for units that can be expressed by any of the other subclasses of Unit. Custom units are only allowed if a unit  is needed that cannot be handled by any of the other classes.  </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | physical_information |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Unit]({{< relref "unit.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|exponent| [Integer]({{< relref "integer.md" >}}) | 0..1 | <p> Defines the exponent with which this unit instance should be used. In order to define square meters for example, the SIUnit &quot;metre&quot; with an exponent of 2 will be used. If no exponent is defined it is equivalent to the value 1.      </p> | [Unit]({{< relref "unit.md" >}}) |
|identification| [String]({{< relref "string.md" >}}) | 1 | <p>A unique identification of the custom unit.  </p> | [CustomUnit]({{< relref "customunit.md" >}}) |





