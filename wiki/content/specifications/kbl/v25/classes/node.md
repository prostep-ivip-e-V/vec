---
title: Node
toc: false
type: specs
date: "2018-07-04"
draft: false
specification: KBL
version: 2.5
documentType: "Recommendation"
elementType: Class
classes:
  - Node
menu_name: kbl-2.5
---
<p> A node forms begin and end of a Segment.      </p>      <p> &#160;A <i>Node</i> can define a <i>Folding_direction</i>. It specifies the direction into which the <i>Node </i>and its adjacent branch is folded in the finished harness product. This definition is necessary for example for end splices, where the splice is placed on a short branch, that is folded into /&#160;onto another segment after the assembly of the splice. In the finished product, such branches are cover by the the <i>Wire_protection</i> that covers the <i>Segment</i> into which the branch is folded.      </p>      <p> For the sake of a clear interpretation, the following restrictions apply:      </p>      <ol>       <li> A branch is a linear subset of the topology (Node -&gt; Segment -&gt; Node -&gt; Segment -&gt; Node -&gt;...), with at least one segment. No splitting or branching is allowed.        </li>       <li> A <i>Folding_direction</i> shall be defined only for Nodes that are at the end of a branch (The <i>Node</i> is only referenced by 1 <i>Segment</i>).        </li>       <li> The branch is folded completely into the direction defined by the <i>Folding_direction .</i>All <i>Segments</i> starting at the <i>Node</i> defining the Folding_direction, till the first <i>Node</i> that has more than two <i>Segments</i> pointing to it. This <i>Node</i> is the beginning of the branch.        </li>       <li> The <i>Segment</i> referenced in the <i>Folding_direction</i> shall be a <i>Segment</i> that is adjacent to the Node where the branch is beginning.        </li>     </ol>
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
|Id | [String]({{< relref "string.md" >}}) | 1 | <p>The id specifies the identifier of the Node.</p> | [Node]({{< relref "node.md" >}}) |
|Alias_id | [Alias_identification]({{< relref "alias_identification.md" >}}) | 0..* | <p>The alias_id specifies additional identifiers for the Node.  Example: Node Ids may vary from one CAD system export to another.  Therefore the CAD system Id is improper for Id attribute. Id shall have a value which is unique within the harness.  Alias_id may be used for the CAD system Id.</p> | [Node]({{< relref "node.md" >}}) |
|Bend_radius | [Numerical_value]({{< relref "numerical_value.md" >}}) | 0..1 | <p>The bend_radius specifies the maximum bend radius at the Node. Example: May be used for the routing of fibre-optics.</p> | [Node]({{< relref "node.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Cartesian_point]({{< relref "cartesian_point.md" >}}) | Cartesian_point | 1 | 0..* |  |
| [Processing_instruction]({{< relref "processing_instruction.md" >}}) | Processing_information | 0..* | 1 |  |
| [Located_component]({{< relref "located_component.md" >}}) | referenced_components | 0..* | 0..* |  |
| [Segment]({{< relref "segment.md" >}}) | Folding_direction | 0..1 |  | <p> Defines the direction (Segment)&#160;in which this <i>Node</i> will be folded (see Description of <i>Node</i>).      </p> |
| [Cavity_occurrence]({{< relref "cavity_occurrence.md" >}}) | referenced_cavities | 0..* | 0..* |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Segment]({{< relref "segment.md" >}}) | 0..* | End_node | 1 |  |
| [KBL_container]({{< relref "kbl_container.md" >}}) | 1 | Node | 0..* |  |
| [Segment]({{< relref "segment.md" >}}) | 0..* | Start_node | 1 |  |
