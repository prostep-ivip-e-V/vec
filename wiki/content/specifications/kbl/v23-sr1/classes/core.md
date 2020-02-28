---
title: Core
toc: false
type: specs
date: "2005-11-01"
draft: false
specification: KBL
version: 2.3.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - Core
menu_name: kbl-2.3.sr1
---
<p>Kabelader  A core is part of a cable. A cable consists of 1-n cores  A Core is a single conductor of a multi-core wire including its isolation.</p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 2_Parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Id | [String]({{< relref "string.md" >}}) | 1 | <p>The id specifies the identifier of the Core.</p> | [Core]({{< relref "core.md" >}}) |
|Cable_designator | [String]({{< relref "string.md" >}}) | 0..1 | <p>The cable_designator specifies additional information to refer to a Core. </p> | [Core]({{< relref "core.md" >}}) |
|Wire_type | [String]({{< relref "string.md" >}}) | 0..1 | <p>The wire_type specifies the type of a Core. Note: There are no values pre-defined. Special values have to be negotiated between exchange partners.  Example:  'protected wire', 'flat band'.</p> | [Core]({{< relref "core.md" >}}) |
|Cross_section_area | [Numerical_value]({{< relref "numerical_value.md" >}}) | 1 | <p>The cross_section_area specifies the electrical cross section of the Core.</p> | [Core]({{< relref "core.md" >}}) |
|Outside_diameter | [Numerical_value]({{< relref "numerical_value.md" >}}) | 0..1 | <p>The outside_diameter specifies the outer width of the Core.</p> | [Core]({{< relref "core.md" >}}) |
|Bend_radius | [Numerical_value]({{< relref "numerical_value.md" >}}) | 0..1 | <p>The bend_radius specifies the bend radius of a core.</p> | [Core]({{< relref "core.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Wire_colour]({{< relref "wire_colour.md" >}}) | Core_colour | 1..* | 1 |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [General_wire]({{< relref "general_wire.md" >}}) | 1 | Core | 0..* |  |
| [Core_occurrence]({{< relref "core_occurrence.md" >}}) | 1..* | Part | 1 |  |
