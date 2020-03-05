---
title: Dimension_specification
toc: false
type: specs
date: "2015-03-16"
draft: false
specification: KBL
version: 2.4
documentType: "Recommendation"
elementType: Class
classes:
  - Dimension_specification
menu_name: kbl-2.4
---
<p>A Dimension_specification is the definition of the distance between two elements.</p>

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
|Id | [String]({{< relref "string.md" >}}) | 0..1 | <p> The id specifies the identifier of the Dimension_specification. This shall be unique within a single KBL-File. For reasons of backwards compatibility to KBL Version 2.3 SR-1 this new attribute is optional.      </p> | [Dimension_specification]({{< relref "dimension_specification.md" >}}) |
|Dimension_value | [Numerical_value]({{< relref "numerical_value.md" >}}) | 0..1 | <p> Defines the value of the dimension. This field can be used to define a user defined value for the dimension, which overrides the normal value of the dimension. The normal value of a dimension is calculated from the topology information (e.g. segment length and placements)      </p> | [Dimension_specification]({{< relref "dimension_specification.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Tolerance]({{< relref "tolerance.md" >}}) | Tolerance_indication | 0..1 | 1 |  |
| [Placed_element]({{< relref "placed_element.md" >}}) | target | 1 | 0..* |  |
| [Segment]({{< relref "segment.md" >}}) | Segments | 0..* | 0..* | <p> Defines an ordered list of segments along which the dimension specification is defined.      </p> |
| [Processing_instruction]({{< relref "processing_instruction.md" >}}) | Processing_information | 0..* | 0..1 |  |
| [Placed_element]({{< relref "placed_element.md" >}}) | origin | 1 | 0..* |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [KBL_container]({{< relref "kbl_container.md" >}}) | 1 | Dimension_specification | 0..* |  |
