---
title: Connector Housings
toc: false
type: specs
layout: diagram
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Diagram
classes:
  - SlotGender
  - SlotSealingType
  - WireAddOnType
  - ModularSlot
  - Coding
  - AbstractSlot
  - CodingName
  - SecondaryLockingType
  - ConnectorLockingType
  - SlotLayout
  - PartOrUsageRelatedSpecification
  - Cavity
  - ConnectorPositionAssuranceType
  - ModularSlotAddOn
  - CavityAddOn
  - ConnectorOutletDirection
  - PrimaryLockingType
  - ConnectorHousingCoverSpecification
  - TerminalSpecification
  - ConnectorHousingCapSpecification
  - Slot
  - SlotSpecification
  - CavitySpecification
  - SlotLayoutType
  - SegmentConnectionPoint
  - ConnectorHousingSpecification
menu:
  VEC-2.1.0:    
    parent: component-characteristics
    identifier: component-characteristics/connector-housings
    weight: 1005009 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1005009
---
{{< svgfigure src="connector-housings.png" width="1554" height="925" caption="Connector Housings" numbered="true" >}}
  {{< svglink relref="../../classes/slotgender.md" x="462.0" y="407.0" width="114.0" height="94.0" >}}
  {{< svglink relref="../../classes/slotsealingtype.md" x="574.0" y="547.0" width="114.0" height="106.0" >}}
  {{< svglink relref="../../classes/wireaddontype.md" x="1183.0" y="540.0" width="114.0" height="82.0" >}}
  {{< svglink relref="../../classes/modularslot.md" x="959.0" y="463.0" width="126.0" height="55.0" >}}
  {{< svglink relref="../../classes/coding.md" x="910.0" y="302.0" width="130.0" height="55.0" >}}
  {{< svglink relref="../../classes/abstractslot.md" x="703.0" y="303.0" width="132.0" height="55.0" >}}
  {{< svglink relref="../../classes/codingname.md" x="910.0" y="365.0" width="133.0" height="49.0" >}}
  {{< svglink relref="../../classes/secondarylockingtype.md" x="63.0" y="540.0" width="137.0" height="82.0" >}}
  {{< svglink relref="../../classes/connectorlockingtype.md" x="56.0" y="743.0" width="137.0" height="130.0" >}}
  {{< svglink relref="../../classes/slotlayout.md" x="301.0" y="456.0" width="151.0" height="79.0" >}}
  {{< svglink relref="../../classes/partorusagerelatedspecification.md" x="616.0" y="15.0" width="188.0" height="55.0" >}}
  {{< svglink relref="../../classes/cavity.md" x="651.0" y="666.0" width="195.0" height="92.0" >}}
  {{< svglink relref="../../classes/connectorpositionassurancetype.md" x="0.0" y="631.0" width="205.0" height="94.0" >}}
  {{< svglink relref="../../classes/modularslotaddon.md" x="1155.0" y="456.0" width="209.0" height="55.0" >}}
  {{< svglink relref="../../classes/cavityaddon.md" x="1225.0" y="645.0" width="209.0" height="67.0" >}}
  {{< svglink relref="../../classes/connectoroutletdirection.md" x="1316.0" y="148.0" width="209.0" height="82.0" >}}
  {{< svglink relref="../../classes/primarylockingtype.md" x="231.0" y="736.0" width="209.0" height="94.0" >}}
  {{< svglink relref="../../classes/connectorhousingcoverspecification.md" x="525.0" y="134.0" width="214.0" height="34.0" >}}
  {{< svglink relref="../../classes/terminalspecification.md" x="651.0" y="820.0" width="219.0" height="91.0" >}}
  {{< svglink relref="../../classes/connectorhousingcapspecification.md" x="238.0" y="134.0" width="238.0" height="67.0" >}}
  {{< svglink relref="../../classes/slot.md" x="630.0" y="442.0" width="277.0" height="79.0" >}}
  {{< svglink relref="../../classes/slotspecification.md" x="329.0" y="274.0" width="277.0" height="115.0" >}}
  {{< svglink relref="../../classes/cavityspecification.md" x="231.0" y="554.0" width="283.0" height="163.0" >}}
  {{< svglink relref="../../classes/slotlayouttype.md" x="63.0" y="127.0" width="130.0" height="406.0" >}}
  {{< svglink relref="../../classes/segmentconnectionpoint.md" x="1092.0" y="323.0" width="422.0" height="55.0" >}}
  {{< svglink relref="../../classes/connectorhousingspecification.md" x="749.0" y="120.0" width="477.0" height="127.0" >}}
{{< / svgfigure >}}
<p> A <i>ConnectorHousingSpecification</i> defines the technical properties of a connector housing or similar items (e.g. modular connectors, contact modules, connector shells). A connector is normally plugged into a mating connector in order to create connectivity (this is in most cases electrical connectivity, but not limited to it). The actual electrical connection is normally established by terminals, mated to each other, which are placed in cavities. The VEC supports two primary types of connectors: normal (conventional) connectors and modular connectors.      </p>      <p> A conventional connector defines a fixed number of <i>Cavities</i>, which are grouped into a fixed number of <i>Slots.</i> A modular connector defines a geometrical shape into which another component (a contact module) can be placed. The cavities are then defined by the used contact module. The combination of both is possible as well.      </p>      <p> Therefore, the C<i>onnectorHousingSpecification </i>consists of <i>AbstractSlots</i>, which either can be <i>Slots </i>or <i>ModularSlots </i>in an arbitrary combination.      </p>      <p> A <i>Slot </i>is used if the cavities are part of the connector housing. Therefore, a <i>Slot</i> consists of <i>Cavities. </i>A <i>Cavity</i> is defined in detail with a <i>CavitySpecification</i>.      </p>      <p> A <i>ModularSlot</i> is used if the slot is just a geometrical shape into which different inserts can be placed. The insert itself is again defined by a <i>ConnectorHousingSpecification.</i> So, it is possible to create recursive structures. A&#160;<i>ModularSlot</i> can reference more than one insert, because different variants of e.g. contact modules that fit into this particular <i>ModularSlot </i>might exist.      </p>      <p> A <i>SegmentConnectionPoint</i> can be used if a connector housing has more than one entry point for wires (segments). The <i>SegmentConnectionPoint</i> is used to define which <i>Cavity</i> is reachable through which entry point. In the latter this is a necessary information to support auto routing for connectors with more than one <i>SegmentConnectionPoint</i>.      </p>