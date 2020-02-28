---
title: Cross_section_area
toc: false
type: specs
date: "2015-03-16"
draft: false
specification: KBL
version: 2.4
documentType: "Recommendation"
elementType: Class
classes:
  - Cross_section_area
menu_name: kbl-2.4
---
<p>A Cross_section_area </p>

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
|Value_determination | [Value_determination]({{< relref "value_determination.md" >}}) | 1 | <p>The value_determinates specifies whether the value is calculated, reserved, or measured.</p> | [Cross_section_area]({{< relref "cross_section_area.md" >}}) |
|Area | [Numerical_value]({{< relref "numerical_value.md" >}}) | 1 | <p>The area specifies the value of the Cross_section_area.</p> | [Cross_section_area]({{< relref "cross_section_area.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Segment]({{< relref "segment.md" >}}) | 1 | Cross_section_area_information | 0..* |  |
