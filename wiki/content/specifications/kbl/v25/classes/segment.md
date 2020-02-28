---
title: Segment
toc: false
type: specs
date: "2018-07-04"
draft: false
specification: KBL
version: 2.5
documentType: "Recommendation"
elementType: Class
classes:
  - Segment
menu_name: kbl-2.5
---
<p> A Segment is a distance in the Topology where no intermediate electrical contacts appear. If a Topology contains routed wires, then the wires at the beginning of a Segment have to be the same as in the ending. Every segment has its conditions like length, temperature range, etc.      </p>      <p> Segments are a logical construct to describe the physical representation of a wiring harness topology. Therefore a segment is only valid if it has a physical manifestation. Segments with a length of 0 or less do not have a physical manifestation and are therefore <u>not</u> valid.      </p>      <p> Additionally the usage of segments with a length of 0 create problems in the overall process. For example the synchronization of 3D /&#160;2D&#160;systems becomes harder or even impossible and the handling of wire protections on those segments is also unclear.      </p>

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
|Virtual_length | [Numerical_value]({{< relref "numerical_value.md" >}}) | 0..1 | <p> A designed (virtual) length means that the value is derived automatically in a CAD Tool (e.g. from a 3D Geometry).      </p> | [Segment]({{< relref "segment.md" >}}) |
|Physical_length | [Numerical_value]({{< relref "numerical_value.md" >}}) | 0..1 | <p> An adapted (physical) length means that the value is not the exact value taken from the CAD tool, but is adapted in some way. Adapted values are supposed for further use in the process, especially as basis for the product specification. Adapted values are normally created for example by rounding the designed values.      </p> | [Segment]({{< relref "segment.md" >}}) |
|Form | [Segment_form]({{< relref "segment_form.md" >}}) | 0..1 | <p>The form specifies information on the geometric shape of the Segment. The following values shall be used: - 'circular' - 'noncircular'</p> | [Segment]({{< relref "segment.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Node]({{< relref "node.md" >}}) | Start_node | 1 | 0..* |  |
| [Cross_section_area]({{< relref "cross_section_area.md" >}}) | Cross_section_area_information | 0..* | 1 |  |
| [Protection_area]({{< relref "protection_area.md" >}}) | Protection_area | 0..* | 1 |  |
| [Node]({{< relref "node.md" >}}) | End_node | 1 | 0..* |  |
| [B_spline_curve]({{< relref "b_spline_curve.md" >}}) | Center_curve | 0..* | 1 |  |
| [Processing_instruction]({{< relref "processing_instruction.md" >}}) | Processing_information | 0..* | 1 |  |
| [Fixing_assignment]({{< relref "fixing_assignment.md" >}}) | Fixing_assignment  | 0..* | 1 |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Node]({{< relref "node.md" >}}) |  | Folding_direction | 0..1 | <p> Defines the direction (Segment)&#160;in which this <i>Node</i> will be folded (see Description of <i>Node</i>).      </p> |
| [Routing]({{< relref "routing.md" >}}) | 0..* | Mandatory_segments | 0..* | <p> References a list of segments that are mandatory to be visited during the routing process. As a consequence the <i>Segments</i> determined by a routing algorithm shall contain these <i>Mandatory_segments.</i>      </p> |
| [KBL_container]({{< relref "kbl_container.md" >}}) | 1 | Segment | 0..* |  |
| [Routing]({{< relref "routing.md" >}}) | 0..* | Segments | 0..* | <p> Represents the result of a routing algorithm.      </p> |
| [Dimension_specification]({{< relref "dimension_specification.md" >}}) | 0..* | Segments | 0..* | <p> Defines an ordered list of segments along which the dimension specification is defined.      </p> |
