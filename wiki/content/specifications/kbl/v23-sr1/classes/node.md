---
title: Node
toc: false
type: specs
date: "2005-11-01"
draft: false
specification: KBL
version: 2.3.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - Node
menu_name: kbl-2.3.sr1
---
<p>A node forms begin and end of a Segment.</p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 5_Topology |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Placed_element]({{< relref "placed_element.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Id | [String]({{< relref "string.md" >}}) | 1 | <p>The id specifies the identifier of the Node.</p> | [Node]({{< relref "node.md" >}}) |
|Alias_id | [Alias_identification]({{< relref "alias_identification.md" >}}) | 0..* | <p>The alias_id specifies additional identifiers for the Node.  Example: Node Ids may vary from one CAD system export to another.  Therefore the CAD system Id is improper for Id attribute. Id shall have a value which is unique within the harness.  Alias_id may be used for the CAD system Id.</p> | [Node]({{< relref "node.md" >}}) |
|Bend_radius | [Numerical_value]({{< relref "numerical_value.md" >}}) | 0..1 | <p>The bend_radius specifies the maximum bend radius at the Node. Example: May be used for the routing of fibre-optics.</p> | [Node]({{< relref "node.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Cartesian_point]({{< relref "cartesian_point.md" >}}) | Cartesian_point | 1 | 0..* |  |
| [Located_component]({{< relref "located_component.md" >}}) | referenced_components | 0..* | 0..* |  |
| [Processing_instruction]({{< relref "processing_instruction.md" >}}) | Processing_information | 0..* | 1 |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Segment]({{< relref "segment.md" >}}) | 0..* | End_node | 1 |  |
| [KBL_container]({{< relref "kbl_container.md" >}}) | 1 | Node | 0..* |  |
| [Segment]({{< relref "segment.md" >}}) | 0..* | Start_node | 1 |  |
