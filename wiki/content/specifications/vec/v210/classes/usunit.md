---
title: USUnit
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - USUnit
menu_name: vec-2.1.0
---
<p> The USUnit class can define quantities in the terms of the US-Unit-System by specifying the corresponding US unit name. The US Unit System is quite similar to the imperial unit system; however, some units are defined slightly different.      </p>

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
|usUnitName| [USUnitName]({{< relref "usunitname.md" >}}) | 1 | <p> Specifies the name of the <i>USUnit</i>.      </p> | [USUnit]({{< relref "usunit.md" >}}) |





