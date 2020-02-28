---
title: Connector Housings
toc: false
type: specs
layout: diagram
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Diagram
classes:
  - Coding
  - SlotGender
  - ModularSlot
  - AbstractSlot
  - Slot
  - SlotLayout
  - Cavity
  - SlotSpecification
  - ModularSlotAddOn
  - CavityAddOn
  - ConnectorHousingCapSpecification
  - CavitySpecification
  - SegmentConnectionPoint
  - ConnectorHousingSpecification
  - PartOrUsageRelatedSpecification
menu:
  VEC-1.1.2:    
    parent: description-of-components
    identifier: description-of-components/connector-housings
    weight: 1003006 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1003006
---
{{< svgfigure src="connector-housings.png" width="1333" height="665" caption="Connector Housings" numbered="true" >}}
  {{< svglink relref="../../classes/coding.md" x="715.0" y="260.0" width="114.0" height="55.0" >}}
  {{< svglink relref="../../classes/slotgender.md" x="267.0" y="365.0" width="114.0" height="94.0" >}}
  {{< svglink relref="../../classes/modularslot.md" x="764.0" y="421.0" width="126.0" height="55.0" >}}
  {{< svglink relref="../../classes/abstractslot.md" x="508.0" y="261.0" width="132.0" height="55.0" >}}
  {{< svglink relref="../../classes/slot.md" x="470.0" y="414.0" width="150.0" height="67.0" >}}
  {{< svglink relref="../../classes/slotlayout.md" x="106.0" y="386.0" width="151.0" height="79.0" >}}
  {{< svglink relref="../../classes/cavity.md" x="456.0" y="526.0" width="183.0" height="92.0" >}}
  {{< svglink relref="../../classes/slotspecification.md" x="134.0" y="232.0" width="200.0" height="103.0" >}}
  {{< svglink relref="../../classes/modularslotaddon.md" x="960.0" y="414.0" width="209.0" height="55.0" >}}
  {{< svglink relref="../../classes/cavityaddon.md" x="1030.0" y="505.0" width="209.0" height="55.0" >}}
  {{< svglink relref="../../classes/connectorhousingcapspecification.md" x="148.0" y="120.0" width="209.0" height="55.0" >}}
  {{< svglink relref="../../classes/cavityspecification.md" x="15.0" y="512.0" width="283.0" height="139.0" >}}
  {{< svglink relref="../../classes/segmentconnectionpoint.md" x="897.0" y="281.0" width="422.0" height="55.0" >}}
  {{< svglink relref="../../classes/connectorhousingspecification.md" x="442.0" y="113.0" width="477.0" height="91.0" >}}
  {{< svglink relref="../../classes/partorusagerelatedspecification.md" x="246.0" y="15.0" width="855.0" height="64.0" >}}
{{< / svgfigure >}}
<p> A <i>ConnectorHousingSpecification</i> defines the technical properties of a connector housing or similar items (e.g. modular connectors, contact modules, connector shells). A connector is normally plugged into a mating connector in order to create some kind of connectivity (this is in most cases electrical connectivity, but not limited to it). The actual contact is normally created by terminals, which are placed in cavities. The VEC supports two primary types of connectors: normal (conventional) connectors and modular connectors.     </p>      <p> A conventional connector defines a fixed number of <i>Cavities</i>, which are grouped into a fixed number of <i>Slots.</i> A modular connector defines a geometrical shape into which another component (a contact module) can be placed. The cavities are then defined by the used contact module. The combination of both is possible as well.     </p>      <p> Therefore the C<i>onnectorHousingSpecification </i>consists of a number of <i>AbstractSlots</i>, which either can be <i>Slots </i>or <i>ModularSlots </i>in an arbitrary combination.     </p>      <p> A <i>Slot </i>is used if the cavities are part of the connector housing. Therefore a <i>Slot</i> consists of a number of <i>Cavities. </i>A <i>Cavity</i> is defined in detail with a <i>CavitySpecification</i>. Normally all <i>Cavities</i> in a <i>Slot</i> satisfy the same <i>CavitySpecification.</i>     </p>      <p> A <i>ModularSlot</i> is used if the slot is just a geometrical shape into which different inserts can be placed. The insert itself is again defined by a <i>ConnectorHousingSpecification.</i> So it is possible to create recursive structures. A&#160;<i>ModularSlot</i> can reference more than one insert, because different variants of e.g. contact modules that fit into this particular <i>ModularSlot </i>might exist.     </p>      <p> A <i>SegmentConnectionPoint</i> can be used if a connector housing has more than one entry point for wires (segments). The <i>SegmentConnectionPoint</i> is used to define which <i>Cavity</i> is reachable through which entry point. In the latter this is a necessary information to support auto routing for connectors with more than one <i>SegmentConnectionPoint</i>.      </p>