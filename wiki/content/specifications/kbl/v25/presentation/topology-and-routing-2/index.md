---
title: Topology and routing (2)
toc: false
type: specs
layout: diagram
date: "2018-07-04"
draft: false
specification: KBL
version: 2.5
documentType: "Recommendation"
elementType: Diagram
classes:
  - Fixed_component
  - Winding_firmness
  - Winding_type
  - Segment
  - Fixing_assignment
  - Wire_protection_occurrence
  - Processing_instruction
  - Fixing_occurrence
  - Accessory_occurrence
  - Protection_area
menu:
  KBL-2.5:    
    parent: presentation
    identifier: presentation/topology-and-routing-2
    weight: 1020 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1020
---
{{< svgfigure src="topology-and-routing-2.png" width="933" height="608" caption="Topology and routing (2)" numbered="true" >}}
  {{< svglink relref="../../classes/fixed_component.md" x="473.0" y="368.0" width="108.0" height="58.0" >}}
  {{< svglink relref="../../classes/winding_firmness.md" x="7.0" y="35.0" width="109.0" height="67.0" >}}
  {{< svglink relref="../../classes/winding_type.md" x="147.0" y="35.0" width="105.0" height="115.0" >}}
  {{< svglink relref="../../classes/segment.md" x="700.0" y="154.0" width="204.0" height="127.0" >}}
  {{< svglink relref="../../classes/fixing_assignment.md" x="669.0" y="360.0" width="215.0" height="103.0" >}}
  {{< svglink relref="../../classes/wire_protection_occurrence.md" x="364.0" y="0.0" width="232.0" height="127.0" >}}
  {{< svglink relref="../../classes/processing_instruction.md" x="0.0" y="182.0" width="232.0" height="79.0" >}}
  {{< svglink relref="../../classes/fixing_occurrence.md" x="273.0" y="476.0" width="232.0" height="103.0" >}}
  {{< svglink relref="../../classes/accessory_occurrence.md" x="544.0" y="476.0" width="232.0" height="103.0" >}}
  {{< svglink relref="../../classes/protection_area.md" x="359.0" y="169.0" width="243.0" height="115.0" >}}
{{< / svgfigure >}}
<p> Components that have a defined position (e.g. Fixings, Grommets, Channels) are placed on the topology with a <i>Fixing_assignment </i>(in contrast to components that are placed on an area e.g. <i>Wire_protections</i>)<i>. </i>      </p>      <p> The model explicitly allows the definition of more than on <i>Fixing_assignment</i> for a component. This is necessary for components that have more than one defined position in the topology, e.g. channels where each entry of the channel is placed. The semantics here is, that all <i>Fixing_assignments </i>are valid, if the associated component exists in a harness variant.      </p>      <p> For an illustrated example of the principle see <a data-mce-href="http://ecad-wiki.prostep.org/doku.php?id=tutorials:vec_v1_4:documentation:4_1_placements" href="http://ecad-wiki.prostep.org/doku.php?id=tutorials:vec_v1_4:documentation:4_1_placements">http://ecad-wiki.prostep.org/doku.php?id=tutorials:vec_v1_4:documentation:4_1_placements</a>      </p>