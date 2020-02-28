---
title: Part usage list (10)
toc: false
type: specs
layout: diagram
date: "2015-03-20"
draft: false
specification: KBL
version: 2.4.sr1
documentType: "Recommendation"
elementType: Diagram
classes:
  - Abstract_slot
  - Modular_slot
  - Component_box
  - Contact_point
  - Slot_occurrence
  - Cavity_occurrence
  - Cavity
  - Modular_slot_occurrence
  - Abstract_slot_occurrence
  - Component_box_connector
  - Slot
  - Component_box_connector_occurrence
  - Connector_occurrence
  - Component_box_occurrence
menu:
  KBL-2.4.sr1:    
    parent: presentation
    identifier: presentation/part-usage-list-10
    weight: 1017 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1017
---
{{< svgfigure src="part-usage-list-10.png" width="1030" height="636" caption="Part usage list (10)" numbered="true" >}}
  {{< svglink relref="../../classes/abstract_slot.md" x="168.0" y="15.0" width="84.0" height="43.0" >}}
  {{< svglink relref="../../classes/modular_slot.md" x="266.0" y="92.0" width="86.0" height="55.0" >}}
  {{< svglink relref="../../classes/component_box.md" x="756.0" y="15.0" width="99.0" height="43.0" >}}
  {{< svglink relref="../../classes/contact_point.md" x="560.0" y="519.0" width="110.0" height="55.0" >}}
  {{< svglink relref="../../classes/slot_occurrence.md" x="273.0" y="449.0" width="110.0" height="43.0" >}}
  {{< svglink relref="../../classes/cavity_occurrence.md" x="77.0" y="449.0" width="110.0" height="43.0" >}}
  {{< svglink relref="../../classes/cavity.md" x="21.0" y="232.0" width="138.0" height="55.0" >}}
  {{< svglink relref="../../classes/modular_slot_occurrence.md" x="455.0" y="358.0" width="149.0" height="43.0" >}}
  {{< svglink relref="../../classes/abstract_slot_occurrence.md" x="364.0" y="246.0" width="151.0" height="43.0" >}}
  {{< svglink relref="../../classes/component_box_connector.md" x="532.0" y="15.0" width="161.0" height="55.0" >}}
  {{< svglink relref="../../classes/slot.md" x="63.0" y="99.0" width="167.0" height="67.0" >}}
  {{< svglink relref="../../classes/component_box_connector_occurrence.md" x="371.0" y="148.0" width="230.0" height="43.0" >}}
  {{< svglink relref="../../classes/connector_occurrence.md" x="665.0" y="344.0" width="232.0" height="115.0" >}}
  {{< svglink relref="../../classes/component_box_occurrence.md" x="763.0" y="134.0" width="232.0" height="103.0" >}}
{{< / svgfigure >}}
The diagram illustrates the instantiation of a component box. For tan explanation see the part master data description of the Component_box. Additionally a Component_box_occurrence can define its own Contact_points. This necessary when wires are attached directly (without a harness connector) to the Component_box.