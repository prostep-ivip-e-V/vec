---
title: Protection_area
toc: false
type: specs
date: "2005-11-01"
draft: false
specification: KBL
version: 2.3.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - Protection_area
menu_name: kbl-2.3.sr1
---
<p>Schutzzone  A Protection_area is a a mechanism to describe the area on a Segment covered by a Wire_protection_occurrence. Some segments of a harness are crossing areas with critical conditions like higher temperatures, higher humidity, etc. To prevent the damage of the cable, protect shields are mounted for that segment. Note: For each Segment covered by a particular Wire_protection_occurrence a separate Protection_area has to be instantiated.</p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 5_Topology |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Start_location | [Double]({{< relref "double.md" >}}) | 1 | <p>The start_location specifies the start position of the Wire_protection_occurrence on the Segment. The value is given in curve parameters running from 0.0 to 1.0.</p> | [Protection_area]({{< relref "protection_area.md" >}}) |
|End_location | [Double]({{< relref "double.md" >}}) | 1 | <p>The end_location specifies the end position of the Wire_protection_occurrence on the Segment. The value is given in curve parameters running from 0.0 to 1.0.</p> | [Protection_area]({{< relref "protection_area.md" >}}) |
|Taping_direction | [String]({{< relref "string.md" >}}) | 0..1 | <p>The taping_direction specifies the direction of the taping (left/right) regarding to the Segment direction.</p> | [Protection_area]({{< relref "protection_area.md" >}}) |
|Gradient | [Value_with_unit]({{< relref "value_with_unit.md" >}}) | 0..1 | <p>The gradient specifies the gradient of the protection. Note: The gradient is defined in mm. Gradient 15 mms means that the winding screws within a turn 15 mms along the bundle.</p> | [Protection_area]({{< relref "protection_area.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Processing_instruction]({{< relref "processing_instruction.md" >}}) | Processing_information | 0..* | 1 |  |
| [Wire_protection_occurrence]({{< relref "wire_protection_occurrence.md" >}}) | Associated_protection | 1 | 0..* |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Segment]({{< relref "segment.md" >}}) | 1 | Protection_area | 0..* |  |
