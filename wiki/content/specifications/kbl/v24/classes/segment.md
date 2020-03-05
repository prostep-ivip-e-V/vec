---
title: Segment
toc: false
type: specs
date: "2015-03-16"
draft: false
specification: KBL
version: 2.4
documentType: "Recommendation"
elementType: Class
classes:
  - Segment
menu_name: kbl-2.4
---
<p>Verbindungsabschnitt  A Segment is a section of a Connection where no intermediate electrical contacts appear. At the beginning and at the end the same wires go in and out. Cables and wires are divided in segments. Every segment has its conditions like length, temperature range, etc.</p>

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
|Id | [String]({{< relref "string.md" >}}) | 1 | <p>The id specifies the identifier of the Segment.</p> | [Segment]({{< relref "segment.md" >}}) |
|Alias_id | [Alias_identification]({{< relref "alias_identification.md" >}}) | 0..* | <p>The alias_id specifies additional identifiers for the Segment.  Example: Segement Ids may vary from one CAD system export to another.  Therefore the CAD system Id is improper for Id attribute. Id shall have a value which is unique within the harness.  Alias_id may be used for the CAD system Id.</p> | [Segment]({{< relref "segment.md" >}}) |
|Start_vector | [Double]({{< relref "double.md" >}}) | 0..3 | <p>The start_vector specifies the tangent of the center curve at the start position. Note:  The value can be derived from the center_curve. To avoid that the receiving system has to calculate the value, it can be explicitly specified.</p> | [Segment]({{< relref "segment.md" >}}) |
|End_vector | [Double]({{< relref "double.md" >}}) | 0..3 | <p>The end_vector specifies the tangent of the center curve at the end position. Note:  The value can be derived from the center_curve. To avoid that the receiving system has to calculate the value, it can be explicitly specified.</p> | [Segment]({{< relref "segment.md" >}}) |
|Virtual_length | [Numerical_value]({{< relref "numerical_value.md" >}}) | 0..1 | <p>The virtual_length specifies the represented length of the neutral phase of the segment in 3d.</p> | [Segment]({{< relref "segment.md" >}}) |
|Physical_length | [Numerical_value]({{< relref "numerical_value.md" >}}) | 0..1 | <p>The physical_length specifies the arc length of the neutral phase of the segment in 3d.</p> | [Segment]({{< relref "segment.md" >}}) |
|Form | [Segment_form]({{< relref "segment_form.md" >}}) | 0..1 | <p>The form specifies information on the geometric shape of the Segment. The following values shall be used: - 'circular' - 'noncircular'</p> | [Segment]({{< relref "segment.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Fixing_assignment]({{< relref "fixing_assignment.md" >}}) | Fixing_assignment  | 0..* | 1 |  |
| [B_spline_curve]({{< relref "b_spline_curve.md" >}}) | Center_curve | 0..* | 1 |  |
| [Node]({{< relref "node.md" >}}) | Start_node | 1 | 0..* |  |
| [Cross_section_area]({{< relref "cross_section_area.md" >}}) | Cross_section_area_information | 0..* | 1 |  |
| [Protection_area]({{< relref "protection_area.md" >}}) | Protection_area | 0..* | 1 |  |
| [Node]({{< relref "node.md" >}}) | End_node | 1 | 0..* |  |
| [Processing_instruction]({{< relref "processing_instruction.md" >}}) | Processing_information | 0..* | 1 |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [KBL_container]({{< relref "kbl_container.md" >}}) | 1 | Segment | 0..* |  |
| [Dimension_specification]({{< relref "dimension_specification.md" >}}) | 0..* | Segments | 0..* | <p> Defines an ordered list of segments along which the dimension specification is defined.      </p> |
| [Routing]({{< relref "routing.md" >}}) | 0..* | Segments | 0..* |  |
