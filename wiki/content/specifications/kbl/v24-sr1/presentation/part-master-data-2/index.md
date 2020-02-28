---
title: Part master data (2)
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
  - Part
  - Component
  - Abstract_slot
  - Modular_slot
  - Cavity
  - Component_cavity
  - Connector_housing
  - Fuse_type
  - Component_box_connector
  - Component_box_connection
  - Slot
  - Component_slot
  - Fuse
  - Component_box
menu:
  KBL-2.4.sr1:    
    parent: presentation
    identifier: presentation/part-master-data-2
    weight: 1006 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1006
---
{{< svgfigure src="part-master-data-2.png" width="1141" height="574" caption="Part master data (2)" numbered="true" >}}
  {{< svglink relref="../../classes/part.md" x="406.0" y="7.0" width="76.0" height="34.0" >}}
  {{< svglink relref="../../classes/component.md" x="133.0" y="98.0" width="76.0" height="43.0" >}}
  {{< svglink relref="../../classes/abstract_slot.md" x="777.0" y="259.0" width="84.0" height="43.0" >}}
  {{< svglink relref="../../classes/modular_slot.md" x="658.0" y="343.0" width="86.0" height="55.0" >}}
  {{< svglink relref="../../classes/cavity.md" x="819.0" y="497.0" width="138.0" height="55.0" >}}
  {{< svglink relref="../../classes/component_cavity.md" x="238.0" y="378.0" width="138.0" height="55.0" >}}
  {{< svglink relref="../../classes/connector_housing.md" x="966.0" y="168.0" width="153.0" height="79.0" >}}
  {{< svglink relref="../../classes/fuse_type.md" x="266.0" y="476.0" width="158.0" height="67.0" >}}
  {{< svglink relref="../../classes/component_box_connector.md" x="623.0" y="189.0" width="161.0" height="55.0" >}}
  {{< svglink relref="../../classes/component_box_connection.md" x="434.0" y="210.0" width="166.0" height="55.0" >}}
  {{< svglink relref="../../classes/slot.md" x="805.0" y="343.0" width="167.0" height="67.0" >}}
  {{< svglink relref="../../classes/component_slot.md" x="224.0" y="210.0" width="190.0" height="103.0" >}}
  {{< svglink relref="../../classes/fuse.md" x="7.0" y="210.0" width="207.0" height="79.0" >}}
  {{< svglink relref="../../classes/component_box.md" x="259.0" y="98.0" width="498.0" height="43.0" >}}
{{< / svgfigure >}}
<p> This diagram illustrates the part master data of component boxes. A component box is used to mount components (e.g. relais and fuses). Component boxes exist in a great variety from rather simple to quite complex.     </p>      <p> Basically a component box consists of Component_slots &amp;&#160;Component_cavities. These can be used to mount components.     </p>      <p> The harness can be attached to a component box in two ways. either with a connector or directly with wires that are mounted into cavities (with terminals) or attached to bolts (with ring terminals). Both aspects are covered by the Component_box_connector.     </p>      <p> A Component_box_connector consist of both Slots (the same class that is used for Connector_housings) and Modular_slots. A Modular_slot is used if the Component_box itself is modular and consists of one more insets.     </p>      <p> The Component_box_connection can be used to define the internal connectivity of a component box.      </p>