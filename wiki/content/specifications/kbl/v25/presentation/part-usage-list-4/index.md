---
title: Part usage list (4)
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
  - Length_type
  - Wire_occurrence
  - Special_wire_occurrence
  - Core_occurrence
  - General_wire_occurrence
  - Specified_wire_occurrence
  - Wire_length
  - Specified_special_wire_occurrence
  - Core
  - Installation_instruction
  - General_wire
  - Assembly_part_occurrence
menu:
  KBL-2.5:    
    parent: presentation
    identifier: presentation/part-usage-list-4
    weight: 1011 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1011
---
{{< svgfigure src="part-usage-list-4.png" width="967" height="527" caption="Part usage list (4)" numbered="true" >}}
  {{< svglink relref="../../classes/length_type.md" x="847.0" y="22.0" width="105.0" height="91.0" >}}
  {{< svglink relref="../../classes/wire_occurrence.md" x="218.0" y="159.0" width="130.0" height="55.0" >}}
  {{< svglink relref="../../classes/special_wire_occurrence.md" x="416.0" y="159.0" width="147.0" height="55.0" >}}
  {{< svglink relref="../../classes/core_occurrence.md" x="687.0" y="158.0" width="152.0" height="67.0" >}}
  {{< svglink relref="../../classes/general_wire_occurrence.md" x="299.0" y="37.0" width="152.0" height="43.0" >}}
  {{< svglink relref="../../classes/specified_wire_occurrence.md" x="207.0" y="285.0" width="159.0" height="43.0" >}}
  {{< svglink relref="../../classes/wire_length.md" x="637.0" y="22.0" width="182.0" height="67.0" >}}
  {{< svglink relref="../../classes/specified_special_wire_occurrence.md" x="421.0" y="285.0" width="204.0" height="43.0" >}}
  {{< svglink relref="../../classes/core.md" x="587.0" y="361.0" width="215.0" height="115.0" >}}
  {{< svglink relref="../../classes/installation_instruction.md" x="728.0" y="274.0" width="219.0" height="79.0" >}}
  {{< svglink relref="../../classes/general_wire.md" x="14.0" y="15.0" width="227.0" height="103.0" >}}
  {{< svglink relref="../../classes/assembly_part_occurrence.md" x="188.0" y="379.0" width="232.0" height="103.0" >}}
{{< / svgfigure >}}
<p> The diagram shows the instantiation of wires with a <i>Wire_occurrence</i> or a <i>Special_wire_occurrence.</i>      </p>      <p> A special wire /&#160;multi core is in the part master representation a <i>General_wire</i> with <i>Cores</i>. It is instantiated with a <i>Special_wire_occurrence</i> for the <i>General_wire</i> and a <i>Core_occurrence</i> for each <i>Core</i>. Instances of a multi core wire shall instantiate all <i>Cores</i> defined on the part master definition of the wire, even if they are not connected in the current harness.      </p>      <p> The attributes of such an unconnected <i>Core_occurrence</i> shall have the following values:      </p>      <ul>       <li> <b>Wire_number: </b>/NULL if no reasonable value is available in the process.        </li>       <li> <b>Length_information: </b>The length determined for the <i>Special_wire_occurrence</i>.        </li>       <li> <b>unconnected: </b>true.        </li>     </ul>     <p> &#160;      </p>