---
title: Unit
toc: false
type: specs
date: "2015-03-20"
draft: false
specification: KBL
version: 2.4.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - Unit
menu_name: kbl-2.4.sr1
---
<p>A Unit is a quantity chosen as a standard in terms of which other quantities may be expressed. Example: A unit of square milli metre is defined as a SI_unit with Si_unit_name "metre", Si_prefix "milli" and Si_dimension "square".</p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 6_Foundation |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Unit_name | [String]({{< relref "string.md" >}}) | 0..1 | <p>The unit_name specifies the name for a non SI unit. Note: This attribute shall be used to specify units like 'kg/100 pieces'</p> | [Unit]({{< relref "unit.md" >}}) |
|Si_unit_name | [SI_unit_name]({{< relref "si_unit_name.md" >}}) | 0..1 | <p>The si_ unit_name specifies the name for a SI unit. Example:  'gram', 'metre'</p> | [Unit]({{< relref "unit.md" >}}) |
|Si_prefix | [SI_prefix]({{< relref "si_prefix.md" >}}) | 0..1 | <p>The si_prefix specifies the prefix for a SI unit. Example: 'milli', 'kilo'</p> | [Unit]({{< relref "unit.md" >}}) |
|Si_dimension | [Unit_dimension]({{< relref "unit_dimension.md" >}}) | 0..1 | <p>The Dimension specifies the dimension of a SI_unit. Example: "square", "cubic".</p> | [Unit]({{< relref "unit.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [KBL_container]({{< relref "kbl_container.md" >}}) | 1 | Unit | 0..* |  |
| [Value_with_unit]({{< relref "value_with_unit.md" >}}) | 0..* | Unit_component | 1 |  |
