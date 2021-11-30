---
title: OtherUnit
toc: false
type: specs
date: "2021-11-30"
draft: false
specification: VEC
version: 2.0.0-rc1
documentType: "Recommendation"
elementType: Class
classes:
  - OtherUnit
menu_name: vec-2.0.0-rc1
---
<p>The OtherUnit class can be used to define a unit, which is necessary in the context of data exchange but not contained in the standard systems (e.g. Piece).  </p>

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
|otherUnitName | [OtherUnitName]({{< relref "otherunitname.md" >}}) | 1 | <p> Specifies the name of the unit.      </p> | [OtherUnit]({{< relref "otherunit.md" >}}) |

