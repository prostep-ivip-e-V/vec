---
title: ImperialUnit
toc: false
type: specs
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Class
classes:
  - ImperialUnit
menu_name: vec-1.1.2
---
<p>The ImperialUnit class can define quantities in the terms of the Imperial-Unit-System by specifying the corresponding Imperial unit name. </p>

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
|exponent | [Integer]({{< relref "integer.md" >}}) | 0..1 | <p> Defines the exponent with which this unit instance should be used. In order to define square meters for example, the SIUnit &quot;metre&quot; with an exponent of 2 will be used. If no exponent is defined it is equivalent to the value 1.      </p> | [Unit]({{< relref "unit.md" >}}) |
|imperialUnitName | [ImperialUnitName]({{< relref "imperialunitname.md" >}}) | 1 | <p> Specifies the name of the imperial unit.      </p> | [ImperialUnit]({{< relref "imperialunit.md" >}}) |

