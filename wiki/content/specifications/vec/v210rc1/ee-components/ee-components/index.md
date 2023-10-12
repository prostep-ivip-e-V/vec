---
title: EE-Components
toc: false
type: specs
layout: diagram
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Diagram
classes:
  - SwitchingState
  - AbstractSlot
  - HousingComponentType
  - PinComponentType
  - PowerConsumptionType
  - PowerConsumption
  - Cavity
  - ExtensionSlot
  - ConductorSpecification
  - TerminalSpecification
  - PinComponent
  - ConnectorHousingSpecification
  - Slot
  - InternalComponentConnection
  - HousingComponent
  - EEComponentSpecification
  - PartOrUsageRelatedSpecification
menu:
  VEC-2.1.0:    
    parent: ee-components
    identifier: ee-components/ee-components
    weight: 1006001 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1006001
---
{{< svgfigure src="ee-components.png" width="1154" height="878" caption="EE-Components" numbered="true" >}}
  {{< svglink relref="../../classes/switchingstate.md" x="795.0" y="232.0" width="126.0" height="55.0" >}}
  {{< svglink relref="../../classes/abstractslot.md" x="88.0" y="561.0" width="132.0" height="55.0" >}}
  {{< svglink relref="../../classes/housingcomponenttype.md" x="445.0" y="267.0" width="145.0" height="142.0" >}}
  {{< svglink relref="../../classes/pincomponenttype.md" x="459.0" y="533.0" width="126.0" height="154.0" >}}
  {{< svglink relref="../../classes/powerconsumptiontype.md" x="963.0" y="190.0" width="155.0" height="142.0" >}}
  {{< svglink relref="../../classes/powerconsumption.md" x="963.0" y="106.0" width="177.0" height="67.0" >}}
  {{< svglink relref="../../classes/cavity.md" x="81.0" y="785.0" width="195.0" height="79.0" >}}
  {{< svglink relref="../../classes/extensionslot.md" x="543.0" y="204.0" width="209.0" height="55.0" >}}
  {{< svglink relref="../../classes/conductorspecification.md" x="669.0" y="533.0" width="213.0" height="175.0" >}}
  {{< svglink relref="../../classes/terminalspecification.md" x="410.0" y="722.0" width="219.0" height="91.0" >}}
  {{< svglink relref="../../classes/pincomponent.md" x="333.0" y="414.0" width="234.0" height="79.0" >}}
  {{< svglink relref="../../classes/connectorhousingspecification.md" x="39.0" y="414.0" width="254.0" height="103.0" >}}
  {{< svglink relref="../../classes/slot.md" x="88.0" y="652.0" width="277.0" height="88.0" >}}
  {{< svglink relref="../../classes/internalcomponentconnection.md" x="627.0" y="428.0" width="295.0" height="55.0" >}}
  {{< svglink relref="../../classes/housingcomponent.md" x="39.0" y="211.0" width="393.0" height="79.0" >}}
  {{< svglink relref="../../classes/eecomponentspecification.md" x="46.0" y="113.0" width="876.0" height="55.0" >}}
  {{< svglink relref="../../classes/partorusagerelatedspecification.md" x="46.0" y="15.0" width="876.0" height="55.0" >}}
{{< / svgfigure >}}
<p> An <i>EEComponentSpecification </i>is used to describe the technical aspects of an EE-component. An EE-component is an electrical component to which the wiring harness is attached to (e.g. an ECU, a sensor, a relay, an antenna, a battery, a fuse). All EE-components have in common that they have a certain electrical interface (e.g. to which the wiring harness is attached). To describe this interface, the <i>EEComponentSpecification</i> is used. The content of an <i>EEComponentSpecification</i> is highlighted in blue.      </p>      <p> An <i>EEComponentSpecification </i>can define a couple of <i>HousingComponents. </i>A <i>HousingComponent </i>is one interface to which other components can be attached (e.g. the wiring harness). To describe a <i>HousingComponent </i>satisfyingly two aspects are necessary:       </p>      <ul>       <li> its geometrical shape and,        </li>       <li> its electrical behavior.         </li>     </ul>     <p> In order to describe the geometrical shape of a <i>HousingComponent </i>it can reference a <i>ConnectorHousingSpecification, </i>so the same concept is used in the wiring harness and in an EE-component (highlighted in yellow). The electrical behavior of a <i>HousingComponent </i>is defined by several <i>PinComponents.</i> A <i>PinComponent</i> references a <i>Cavity</i> to define its location in the geometrical shape of the <i>HousingComponent. </i>To define its physical properties a <i>PinComponent</i> references a <i>TerminalSpecification. </i>These properties are defined inherently by the material and the type of the pin. It is a common case that some of the <i>PinComponents </i>(sometimes all)<i> </i>of a single <i>HousingComponent</i> are referencing the same <i>TerminalSpecification</i>. The definition of properties regarding the behavior of a <i>PinComponent</i> (e.g. defined by the software deployed on an ECU) is explained in the diagram &quot;Pinning Information &amp;&#160;Pinning Variance&quot;.      </p>