---
title: Change Description
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
  - Protection_area
  - Routing
  - Segment
  - Node
  - Changed_element
  - Connection
  - Contact_point
  - Connection
  - Wiring_group
  - Fixing_assignment
  - Fixing_occurrence
  - Co_pack_occurrence
  - Terminal_occurrence
  - Module_configuration
  - Schematic_connection
  - Connector_occurrence
  - Accessory_occurrence
  - Cavity_seal_occurrence
  - Cavity_plug_occurrence
  - Component_occurrence
  - Dimension_specification
  - General_wire_occurrence
  - Assembly_part_occurrence
  - Wire_protection_occurrence
  - Component_box_occurrence
  - Special_terminal_occurrence
  - External_reference
  - KBL_container
  - Part
  - Change
  - Change_description
menu:
  KBL-2.5:    
    parent: presentation
    identifier: presentation/change-description
    weight: 1023 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1023
---
{{< svgfigure src="change-description.png" width="1131" height="959" caption="Change Description" numbered="true" >}}
  {{< svglink relref="../../classes/protection_area.md" x="662.0" y="840.0" width="95.0" height="34.0" >}}
  {{< svglink relref="../../classes/routing.md" x="46.0" y="903.0" width="95.0" height="34.0" >}}
  {{< svglink relref="../../classes/segment.md" x="186.0" y="903.0" width="95.0" height="34.0" >}}
  {{< svglink relref="../../classes/node.md" x="291.0" y="903.0" width="95.0" height="34.0" >}}
  {{< svglink relref="../../classes/changed_element.md" x="417.0" y="497.0" width="109.0" height="58.0" >}}
  {{< svglink relref="../../classes/connection.md" x="690.0" y="770.0" width="110.0" height="34.0" >}}
  {{< svglink relref="../../classes/contact_point.md" x="39.0" y="840.0" width="110.0" height="34.0" >}}
  {{< svglink relref="../../classes/connection.md" x="158.0" y="840.0" width="110.0" height="34.0" >}}
  {{< svglink relref="../../classes/wiring_group.md" x="277.0" y="840.0" width="110.0" height="34.0" >}}
  {{< svglink relref="../../classes/fixing_assignment.md" x="543.0" y="840.0" width="112.0" height="34.0" >}}
  {{< svglink relref="../../classes/fixing_occurrence.md" x="354.0" y="700.0" width="120.0" height="34.0" >}}
  {{< svglink relref="../../classes/co_pack_occurrence.md" x="816.0" y="637.0" width="124.0" height="34.0" >}}
  {{< svglink relref="../../classes/terminal_occurrence.md" x="382.0" y="770.0" width="126.0" height="34.0" >}}
  {{< svglink relref="../../classes/module_configuration.md" x="74.0" y="637.0" width="128.0" height="34.0" >}}
  {{< svglink relref="../../classes/schematic_connection.md" x="396.0" y="903.0" width="132.0" height="34.0" >}}
  {{< svglink relref="../../classes/connector_occurrence.md" x="214.0" y="700.0" width="135.0" height="34.0" >}}
  {{< svglink relref="../../classes/accessory_occurrence.md" x="207.0" y="637.0" width="136.0" height="34.0" >}}
  {{< svglink relref="../../classes/cavity_seal_occurrence.md" x="662.0" y="637.0" width="139.0" height="34.0" >}}
  {{< svglink relref="../../classes/cavity_plug_occurrence.md" x="515.0" y="637.0" width="140.0" height="34.0" >}}
  {{< svglink relref="../../classes/component_occurrence.md" x="67.0" y="700.0" width="142.0" height="34.0" >}}
  {{< svglink relref="../../classes/dimension_specification.md" x="396.0" y="840.0" width="143.0" height="34.0" >}}
  {{< svglink relref="../../classes/general_wire_occurrence.md" x="46.0" y="770.0" width="152.0" height="34.0" >}}
  {{< svglink relref="../../classes/assembly_part_occurrence.md" x="347.0" y="637.0" width="161.0" height="34.0" >}}
  {{< svglink relref="../../classes/wire_protection_occurrence.md" x="515.0" y="770.0" width="165.0" height="34.0" >}}
  {{< svglink relref="../../classes/component_box_occurrence.md" x="949.0" y="637.0" width="168.0" height="34.0" >}}
  {{< svglink relref="../../classes/special_terminal_occurrence.md" x="207.0" y="770.0" width="168.0" height="34.0" >}}
  {{< svglink relref="../../classes/external_reference.md" x="15.0" y="245.0" width="188.0" height="127.0" >}}
  {{< svglink relref="../../classes/kbl_container.md" x="760.0" y="308.0" width="220.0" height="103.0" >}}
  {{< svglink relref="../../classes/part.md" x="746.0" y="7.0" width="232.0" height="187.0" >}}
  {{< svglink relref="../../classes/change.md" x="354.0" y="14.0" width="232.0" height="151.0" >}}
  {{< svglink relref="../../classes/change_description.md" x="347.0" y="259.0" width="232.0" height="151.0" >}}
{{< / svgfigure >}}
<p> The Change_description can be used to define / highlight the actual content of a Change. Therefore the Change_description can reference a set of Changed_elements in order to highlight that these elements have been affected by the change (in a paper based process this would have been done with &quot;red circles&quot;). However, deleted elements can not be highlighted with this mechanism.      </p>      <p> Since a physical change (the Change_description) can result in multiple changed parts (e.g. Modules) with different meta data, a Change_description can have a number of &quot;related_changes&quot;. For example if a segment length is changed, all Modules that have wires through this segment will be changed. So the initial Change_description is the same for all Modules, but the meta data of the Change might be different for each Module (e.g. change index, approver)      </p>