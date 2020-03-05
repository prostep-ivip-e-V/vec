---
title: Fixing_assignment
toc: false
type: specs
date: "2018-07-04"
draft: false
specification: KBL
version: 2.5
documentType: "Recommendation"
elementType: Class
classes:
  - Fixing_assignment
menu_name: kbl-2.5
---
<p>A Fixing_assignment assigns a Fixing_occurrence or an Accessory_occurrence to a Segment.</p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 5_Topology |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Changed_element]({{< relref "changed_element.md" >}})<br/> [Placed_element]({{< relref "placed_element.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Id | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies the id of the <i>Fixing_assignment. </i>This is especially useful for traceability of changes or when a component (e.g. channel) has more than one <i>Fixing_assignment.</i>      </p> | [Fixing_assignment]({{< relref "fixing_assignment.md" >}}) |
|Alias_id | [Alias_identification]({{< relref "alias_identification.md" >}}) | 0..* | <p> The alias_id specifies additional identifiers for the Fixing_assignment.      </p> | [Fixing_assignment]({{< relref "fixing_assignment.md" >}}) |
|Location | [Double]({{< relref "double.md" >}}) | 1 | <p>The location specifies the position of the fixing on the Segment. The value is given in curve parameters running from 0.0 to 1.0.</p> | [Fixing_assignment]({{< relref "fixing_assignment.md" >}}) |
|Absolute_location | [Numerical_value]({{< relref "numerical_value.md" >}}) | 0..1 | <p> The absolute location defines the location of a fixing with an absolute value. This is an extension to the relative value of the &quot;location&quot; attribute. The absolute value is necessary to prevent unintended changes due to segment length changes or rounding errors.     </p>      <p> A creating system is responsible to generate this redundant information in a consistent way. If both values are present, the absolute value is the more binding value.      </p> | [Fixing_assignment]({{< relref "fixing_assignment.md" >}}) |
|Orientation | [Double]({{< relref "double.md" >}}) | 2..3 | <p>The orientation specifies the direction of the z-axis and is given by 2 or 3 values. The y-axis is defined by the tangent of the center curve at the location.</p> | [Fixing_assignment]({{< relref "fixing_assignment.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Processing_instruction]({{< relref "processing_instruction.md" >}}) | Processing_information | 0..* | 0..1 |  |
| [Fixed_component]({{< relref "fixed_component.md" >}}) | Fixing | 1 | 0..* |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Segment]({{< relref "segment.md" >}}) | 1 | Fixing_assignment  | 0..* |  |
