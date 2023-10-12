---
title: IECUnit
toc: false
type: specs
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - IECUnit
menu_name: vec-2.1.0
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
|exponent| [Integer]({{< relref "integer.md" >}}) | 0..1 | <p> Defines the exponent with which this unit instance should be used. In order to define square meters for example, the SIUnit &quot;metre&quot; with an exponent of 2 will be used. If no exponent is defined it is equivalent to the value 1.      </p> | [Unit]({{< relref "unit.md" >}}) |
|unEceCode| [String]({{< relref "string.md" >}}) | 0..1 | <p> The UNECE&#160;provides a list of &quot;<a href="https://unece.org/trade/cefact/UNLOCODE-Download">Codes for Units of Measurement used in the International Trade</a>&quot;. This attribute shall be used for traceability of&#160;<i>Units </i>defined in the VEC&#160;into the UNECE&#160;system only. It provides <u>additional</u> meta information about the unit, but shall not be used as the only definition of a <i>Unit.</i> Specifying a UNECE code does not exempt the creating system from generating a correct VEC mapping of the corresponding unit. In case of doubt, the VEC&#160;mapping has priority.      </p> | [Unit]({{< relref "unit.md" >}}) |
|iecUnitName| [IECUnitName]({{< relref "iecunitname.md" >}}) | 1 | <p> Specifies the name of the IEC unit.      </p> | [IECUnit]({{< relref "iecunit.md" >}}) |
|iecPrefix| [IECPrefix]({{< relref "iecprefix.md" >}}) | 0..1 | <p> Specifies the prefix of the IEC unit.      </p> | [IECUnit]({{< relref "iecunit.md" >}}) |





