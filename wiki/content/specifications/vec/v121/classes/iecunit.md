---
title: IECUnit
toc: false
type: specs
date: "2021-10-18"
draft: false
specification: VEC
version: 1.2.1
documentType: "Recommendation"
elementType: Class
classes:
  - IECUnit
menu_name: vec-1.2.1
---
<p> The IECUnit class can define quantities in the terms of the IEC-Unit-System by specifying the corresponding IEC prefix (optional) and an IEC unit name.      </p>

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
|iecUnitName | [IECUnitName]({{< relref "iecunitname.md" >}}) | 1 | <p> Specifies the name of the IEC unit.      </p> | [IECUnit]({{< relref "iecunit.md" >}}) |
|iecPrefix | [IECPrefix]({{< relref "iecprefix.md" >}}) | 0..1 | <p> Specifies the prefix of the IEC unit.      </p> | [IECUnit]({{< relref "iecunit.md" >}}) |

