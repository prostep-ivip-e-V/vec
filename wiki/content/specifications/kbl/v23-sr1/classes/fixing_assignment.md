---
title: Fixing_assignment
toc: false
type: specs
date: "2005-11-01"
draft: false
specification: KBL
version: 2.3.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - Fixing_assignment
menu_name: kbl-2.3.sr1
---
<p>A Fixing_assignment assigns a Fixing_occurrence or an Accessory_occurrence to a Segment.</p>
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
|Location | [Double]({{< relref "double.md" >}}) | 1 | <p>The location specifies the position of the fixing on the Segment. The value is given in curve parameters running from 0.0 to 1.0.</p> | [Fixing_assignment]({{< relref "fixing_assignment.md" >}}) |
|Orientation | [Double]({{< relref "double.md" >}}) | 2..3 | <p>The orientation specifies the direction of the z-axis and is given by 2 or 3 values. The y-axis is defined by the tangent of the center curve at the location.</p> | [Fixing_assignment]({{< relref "fixing_assignment.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Fixed_component]({{< relref "fixed_component.md" >}}) | Fixing | 1 | 0..* |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Segment]({{< relref "segment.md" >}}) | 1 | Fixing_assignment  | 0..* |  |
