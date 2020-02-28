---
title: Connectivity
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
  - Contact_point
  - Wiring_group
  - Cavity_occurrence
  - Slot_occurrence
  - Part_usage_select
  - Wire_occurrence
  - Connector_occurrence
  - Cavity_plug_occurrence
  - Core_occurrence
  - Wire_or_core_occurrence
  - Extremity
  - Harness
  - External_reference
  - Installation_instruction
  - Connection
  - Schematic_connection
  - Processing_instruction
  - Processing_instruction
menu:
  KBL-2.5:    
    parent: presentation
    identifier: presentation/connectivity
    weight: 1007 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1007
---
{{< svgfigure src="connectivity.png" width="1130" height="605" caption="Connectivity" numbered="true" >}}
  {{< svglink relref="../../classes/contact_point.md" x="246.0" y="378.0" width="110.0" height="55.0" >}}
  {{< svglink relref="../../classes/wiring_group.md" x="889.0" y="406.0" width="110.0" height="67.0" >}}
  {{< svglink relref="../../classes/cavity_occurrence.md" x="249.0" y="187.0" width="110.0" height="43.0" >}}
  {{< svglink relref="../../classes/slot_occurrence.md" x="22.0" y="189.0" width="110.0" height="43.0" >}}
  {{< svglink relref="../../classes/part_usage_select.md" x="204.0" y="483.0" width="120.0" height="58.0" >}}
  {{< svglink relref="../../classes/wire_occurrence.md" x="799.0" y="504.0" width="130.0" height="55.0" >}}
  {{< svglink relref="../../classes/connector_occurrence.md" x="15.0" y="378.0" width="135.0" height="53.0" >}}
  {{< svglink relref="../../classes/cavity_plug_occurrence.md" x="234.0" y="104.0" width="140.0" height="55.0" >}}
  {{< svglink relref="../../classes/core_occurrence.md" x="610.0" y="504.0" width="152.0" height="67.0" >}}
  {{< svglink relref="../../classes/wire_or_core_occurrence.md" x="547.0" y="411.0" width="153.0" height="58.0" >}}
  {{< svglink relref="../../classes/extremity.md" x="316.0" y="264.0" width="154.0" height="55.0" >}}
  {{< svglink relref="../../classes/harness.md" x="428.0" y="7.0" width="158.0" height="55.0" >}}
  {{< svglink relref="../../classes/external_reference.md" x="757.0" y="14.0" width="188.0" height="127.0" >}}
  {{< svglink relref="../../classes/installation_instruction.md" x="897.0" y="168.0" width="219.0" height="79.0" >}}
  {{< svglink relref="../../classes/connection.md" x="537.0" y="252.0" width="232.0" height="115.0" >}}
  {{< svglink relref="../../classes/schematic_connection.md" x="407.0" y="98.0" width="232.0" height="115.0" >}}
  {{< svglink relref="../../classes/processing_instruction.md" x="883.0" y="259.0" width="232.0" height="79.0" >}}
  {{< svglink relref="../../classes/processing_instruction.md" x="344.0" y="504.0" width="232.0" height="79.0" >}}
{{< / svgfigure >}}
<p> The diagram illustrates the relationships in the KBL necessary to represent the connectivity.      </p>      <p> <b>Important:</b> The <i>Connection</i> shall not be confused with the electrological connection. The <i>Connection</i> in the KBL&#160;is a model element introduced, in order to have a redundancy free representation of the connectivity for either <i>Wire_occurrence</i> or <i>Core_occurrence. </i>Therefore, these elements shall have a 1:0..1 relationship. However, this can not be enforced by the XML&#160;Schema technology.      </p>      <p> Both, Connection.Id and Wire_or_core_occurrence.Wire_number shall be unique within a harness. If traceability to the electrological connection is necessary, the <i>Schematic_connection</i> shall be used.      </p>      <p> &#160;      </p>