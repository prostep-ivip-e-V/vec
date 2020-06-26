---
title: Protection_area
toc: false
type: specs
date: "2020-06-25"
draft: false
specification: KBL
version: 2.5.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - Protection_area
menu_name: kbl-2.5.sr1
---
<p>Schutzzone  A Protection_area is a a mechanism to describe the area on a Segment covered by a Wire_protection_occurrence. Some segments of a harness are crossing areas with critical conditions like higher temperatures, higher humidity, etc. To prevent the damage of the cable, protect shields are mounted for that segment. Note: For each Segment covered by a particular Wire_protection_occurrence a separate Protection_area has to be instantiated.</p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 5_Topology |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Changed_element]({{< relref "changed_element.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Start_location | [Double]({{< relref "double.md" >}}) | 1 | <p>The start_location specifies the start position of the Wire_protection_occurrence on the Segment. The value is given in curve parameters running from 0.0 to 1.0.</p> | [Protection_area]({{< relref "protection_area.md" >}}) |
|Absolute_start_location | [Numerical_value]({{< relref "numerical_value.md" >}}) | 0..1 | <p> The absolute start location defines the start position of a wire protection with an absolute value. This is an extension to the relative value of the &quot;location&quot; attribute. The absolute value is necessary to prevent unintended changes due to segment length changes or rounding errors.     </p>      <p> A creating system is responsible to generate this redundant information in a consistent way. If both values are present, the absolute value is the more binding value.      </p> | [Protection_area]({{< relref "protection_area.md" >}}) |
|End_location | [Double]({{< relref "double.md" >}}) | 1 | <p>The end_location specifies the end position of the Wire_protection_occurrence on the Segment. The value is given in curve parameters running from 0.0 to 1.0.</p> | [Protection_area]({{< relref "protection_area.md" >}}) |
|Absolute_end_location | [Numerical_value]({{< relref "numerical_value.md" >}}) | 0..1 | <p> The absolute end location defines the end position of a wire protection with an absolute value. This is an extension to the relative value of the &quot;location&quot; attribute. The absolute value is necessary to prevent unintended changes due to segment length changes or rounding errors.     </p>      <p> A creating system is responsible to generate this redundant information in a consistent way. If both values are present, the absolute value is the more binding value.      </p> | [Protection_area]({{< relref "protection_area.md" >}}) |
|Taping_direction | [String]({{< relref "string.md" >}}) | 0..1 | <p>The taping_direction specifies the direction of the taping (left/right) regarding to the Segment direction.</p> | [Protection_area]({{< relref "protection_area.md" >}}) |
|Gradient | [Value_with_unit]({{< relref "value_with_unit.md" >}}) | 0..1 | <p>The gradient specifies the gradient of the protection. Note: The gradient is defined in mm. Gradient 15 mms means that the winding screws within a turn 15 mms along the bundle.</p> | [Protection_area]({{< relref "protection_area.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Processing_instruction]({{< relref "processing_instruction.md" >}}) | Processing_information | 0..* | 1 |  |
| [Wire_protection_occurrence]({{< relref "wire_protection_occurrence.md" >}}) | Associated_protection | 1 | 0..* |  |
| [Protection_area]({{< relref "protection_area.md" >}}) | Is_on_top_of | 0..* | 0..* | <p> Specifies constraints on ordering of Protection_areas. All referenced Protection_areas have to be below (nearer to the center of the Segment) this Protection_area. (see KBLFRM-171, KBLFRM-750)      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Protection_area]({{< relref "protection_area.md" >}}) | 0..* | Is_on_top_of | 0..* | <p> Specifies constraints on ordering of Protection_areas. All referenced Protection_areas have to be below (nearer to the center of the Segment) this Protection_area. (see KBLFRM-171, KBLFRM-750)      </p> |
| [Segment]({{< relref "segment.md" >}}) | 1 | Protection_area | 0..* |  |
