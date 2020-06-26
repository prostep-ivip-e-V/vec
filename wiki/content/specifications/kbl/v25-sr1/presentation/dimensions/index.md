---
title: Dimensions
toc: false
type: specs
layout: diagram
date: "2020-06-25"
draft: false
specification: KBL
version: 2.5.sr1
documentType: "Recommendation"
elementType: Diagram
classes:
  - Placed_element
  - Tolerance_type
  - Located_component
  - Tolerance
  - External_reference
  - Node
  - Segment
  - Dimension_specification
  - KBL_container
  - Fixing_assignment
  - Default_dimension_specification
  - Processing_instruction
menu:
  KBL-2.5.sr1:    
    parent: presentation
    identifier: presentation/dimensions
    weight: 1022 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1022
---
{{< svgfigure src="dimensions.png" width="817" height="797" caption="Dimensions" numbered="true" >}}
  {{< svglink relref="../../classes/placed_element.md" x="420.0" y="154.0" width="99.0" height="58.0" >}}
  {{< svglink relref="../../classes/tolerance_type.md" x="336.0" y="679.0" width="105.0" height="91.0" >}}
  {{< svglink relref="../../classes/located_component.md" x="243.0" y="53.0" width="123.0" height="58.0" >}}
  {{< svglink relref="../../classes/tolerance.md" x="147.0" y="399.0" width="184.0" height="67.0" >}}
  {{< svglink relref="../../classes/external_reference.md" x="532.0" y="504.0" width="188.0" height="127.0" >}}
  {{< svglink relref="../../classes/node.md" x="498.0" y="42.0" width="190.0" height="79.0" >}}
  {{< svglink relref="../../classes/segment.md" x="567.0" y="364.0" width="204.0" height="127.0" >}}
  {{< svglink relref="../../classes/dimension_specification.md" x="140.0" y="161.0" width="210.0" height="79.0" >}}
  {{< svglink relref="../../classes/kbl_container.md" x="98.0" y="672.0" width="214.0" height="103.0" >}}
  {{< svglink relref="../../classes/fixing_assignment.md" x="7.0" y="7.0" width="215.0" height="103.0" >}}
  {{< svglink relref="../../classes/default_dimension_specification.md" x="161.0" y="553.0" width="227.0" height="67.0" >}}
  {{< svglink relref="../../classes/processing_instruction.md" x="490.0" y="231.0" width="232.0" height="79.0" >}}
{{< / svgfigure >}}
<p> A <i>Dimension_specification</i> defines a tolerance between two <i>Placed_elements</i> (Origin &amp;&#160;Target). <i>Placed_elements </i>can be either a <i>Located_component,</i> a <i>Node</i> or a <i>Fixing_assignment.</i>      </p>      <p> The semantics that applies is the following:      </p>      <ol>       <li> If a <i>Located_component</i> is used, the dimension applies to the reference measurement point of the component (e.g. the front edge of a connector).        </li>       <li> If a component has no unique measurement point (e.g. cable ducts) and is placed on multiple positions in the topology the corresponding Fixing_assignment can be referenced, in order to create an unambigious reference.        </li>       <li> If a Node is used as Placed_element, the dimension applies to the corresponding position of the node (e.g. the bundle position point of a connector, if a connector is placed on the node).        </li>     </ol>