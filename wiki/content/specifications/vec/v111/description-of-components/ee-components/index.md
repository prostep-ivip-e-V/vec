---
title: EE-Components
toc: false
type: specs
layout: diagram
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Diagram
classes:
  - AbstractSlot
  - RelaySpecification
  - FuseSpecification
  - Slot
  - BatterySpecification
  - TerminalSpecification
  - AntennaSpecification
  - Cavity
  - PinComponent
  - ConnectorHousingSpecification
  - HousingComponent
  - EEComponentSpecification
  - PartOrUsageRelatedSpecification
menu:
  VEC-1.1.1:    
    parent: description-of-components
    identifier: description-of-components/ee-components
    weight: 1003009 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1003009
---
{{< svgfigure src="ee-components.png" width="1160" height="829" caption="EE-Components" numbered="true" >}}
  {{< svglink relref="../../classes/abstractslot.md" x="102.0" y="512.0" width="132.0" height="55.0" >}}
  {{< svglink relref="../../classes/relayspecification.md" x="480.0" y="211.0" width="147.0" height="67.0" >}}
  {{< svglink relref="../../classes/fusespecification.md" x="837.0" y="211.0" width="147.0" height="67.0" >}}
  {{< svglink relref="../../classes/slot.md" x="102.0" y="603.0" width="150.0" height="76.0" >}}
  {{< svglink relref="../../classes/batteryspecification.md" x="760.0" y="316.0" width="166.0" height="91.0" >}}
  {{< svglink relref="../../classes/terminalspecification.md" x="452.0" y="652.0" width="175.0" height="79.0" >}}
  {{< svglink relref="../../classes/antennaspecification.md" x="641.0" y="211.0" width="177.0" height="79.0" >}}
  {{< svglink relref="../../classes/cavity.md" x="95.0" y="736.0" width="181.0" height="79.0" >}}
  {{< svglink relref="../../classes/pincomponent.md" x="396.0" y="365.0" width="217.0" height="141.0" >}}
  {{< svglink relref="../../classes/connectorhousingspecification.md" x="53.0" y="365.0" width="254.0" height="91.0" >}}
  {{< svglink relref="../../classes/housingcomponent.md" x="60.0" y="211.0" width="393.0" height="67.0" >}}
  {{< svglink relref="../../classes/eecomponentspecification.md" x="60.0" y="113.0" width="876.0" height="55.0" >}}
  {{< svglink relref="../../classes/partorusagerelatedspecification.md" x="60.0" y="15.0" width="876.0" height="55.0" >}}
{{< / svgfigure >}}
<p> An <i>EEComponentSpecification </i>is used to describe the technical aspects of an EE-component. An EE-component is an electrical component to which the wiring harness is attached to (e.g. an ECU, a sensor, a relay, an antenna, a battery, a fuse). All EE-components have in common that they have a certain electrical interface (e.g. to which the wiring harness is attached). To describe this interface, the <i>EEComponentSpecification</i> is used.     </p>      <p> An <i>EEComponentSpecification </i>can define a couple of <i>HousingComponents. </i>A <i>HousingComponent </i>is one interface to which other components can be attached (e.g. the wiring harness). To describe a <i>HousingComponent </i>satisfyingly two aspects are necessary: its geometrical shape and its electrical behavior. In order to describe the geometrical shape of a <i>HousingComponent </i>it can reference a <i>ConnectorHousingSpecification, </i>so the same concept is used to describe a connector in the wiring harness and in an EE-component. The electrical behavior of a <i>HousingComponent </i>is defined by a number of <i>PinComponents.</i> A <i>PinComponent</i> references a <i>Cavity</i> to define its location in the geometrical shape of the <i>HousingComponent. </i>To define its physical properties a <i>PinComponent</i> references a <i>TerminalSpecification. </i>These properties are defined inherently by the material and the type of the pin. It is quite probable that most of the <i>PinComponents </i>of a single <i>HousingComponent</i> are referencing the same <i>TerminalSpecification</i>. The definition of properties regarding the behavior of a <i>PinComponent</i> (e.g. defined by the software deployed on an ECU) is explained in the next diagram.     </p>      <p> In order to define additional aspects of an EE-component there are some subclasses of the <i>EEComponentSpecification</i>. Notable is the <i>RelaySpecification</i> which can reference certain <i>PinComponents</i> to give them a special semantic (<i>switchContact</i> and <i>coilContact</i>).      </p>