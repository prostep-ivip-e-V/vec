---
title: Modular Connector Housings
toc: false
type: specs
layout: diagram
date: "2025-09-19"
draft: false
specification: VEC
version: 2.2.0
documentType: "Recommendation"
elementType: Diagram
classes:
  - ModularSlot
  - Coding
  - AbstractSlot
  - Cavity
  - PartRelation
  - CavityAddOn
  - ModularSlotAddOn
  - CavityLayout
  - ModularSlotConfiguration
  - SegmentConnectionPoint
  - ConnectorHousingSpecification
menu:
  VEC-2.2.0:    
    parent: component-characteristics
    identifier: component-characteristics/modular-connector-housings
    weight: 1005010 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1005010
---
{{< svgfigure src="modular-connector-housings.png" width="1141" height="763" caption="Modular Connector Housings" numbered="true" >}}
  {{< svglink relref="../../classes/modularslot.md" x="320.0" y="344.0" width="126.0" height="55.0" >}}
  {{< svglink relref="../../classes/coding.md" x="523.0" y="197.0" width="130.0" height="55.0" >}}
  {{< svglink relref="../../classes/abstractslot.md" x="316.0" y="198.0" width="132.0" height="55.0" >}}
  {{< svglink relref="../../classes/cavity.md" x="299.0" y="652.0" width="195.0" height="92.0" >}}
  {{< svglink relref="../../classes/partrelation.md" x="523.0" y="470.0" width="205.0" height="67.0" >}}
  {{< svglink relref="../../classes/cavityaddon.md" x="838.0" y="540.0" width="209.0" height="67.0" >}}
  {{< svglink relref="../../classes/modularslotaddon.md" x="768.0" y="351.0" width="209.0" height="55.0" >}}
  {{< svglink relref="../../classes/cavitylayout.md" x="278.0" y="484.0" width="209.0" height="55.0" >}}
  {{< svglink relref="../../classes/modularslotconfiguration.md" x="54.0" y="344.0" width="209.0" height="55.0" >}}
  {{< svglink relref="../../classes/segmentconnectionpoint.md" x="705.0" y="218.0" width="422.0" height="55.0" >}}
  {{< svglink relref="../../classes/connectorhousingspecification.md" x="362.0" y="15.0" width="477.0" height="139.0" >}}
{{< / svgfigure >}}
<p> A modular connector defines a geometrical feature, the <i>ModularSlot</i>, into which another component—a contact module—can be inserted. The actual cavities are defined by the contact module used. It is also possible to combine regular <i>Slots</i> and <i>ModularSlots</i> within the same connector. The inserts themselves are defined by a <i>ConnectorHousingSpecification</i>, allowing the creation of recursive structures. A <i>ModularSlot</i> can reference multiple inserts, since different insert variants often fit into the same <i>ModularSlot</i>. The allowed inserts are referenced via a <i>PartRelation</i>, enabling part master data to be distributed across multiple VEC files.      </p>      <p> In the perspective of many use cases, an assembled modular connector is treated in the same way as a regular one-piece connector. For example, the system schematic will typically define a single <i>ComponentConnector</i> with continuous pin numbering. The same applies in many cases to the mating connector, such as the interface on an E/E component. In both scenarios, the decision whether to use a one-piece or a modular connector is often made later in the process.      </p>      <p> The <i>ConnectorHousingSpecification</i> of the contact module, on the other hand, is independent of its usage context. This means that both the cavity numbering and any defined <i>MappingSpecification</i> apply to the contact module itself, regardless of the collector housing. For example, cavity 1 in a contact module may correspond to cavity 1 in one collector housing, and to cavity 11 in another. Similarly, the same contact module may fit into different <i>ModularSlots</i> within a housing, causing its logical cavity positions to vary depending on the context.      </p>      <p> Therefore, even in the case of modular connectors, it is necessary to define a consistent cavity numbering across its different assembly variants. This is essential to enable the mapping to potential mating connectors and to ensure continuity with upstream data, such as the system schematic.      </p>      <p> The <i>CavityLayout</i> serves as a template for a valid configuration of a <i>ModularSlot</i>. A <i>ModularSlot</i> can support various configuration variants (e.g., single-pole, five-pole, ten-pole, etc.). The cavities defined within the <i>CavityLayout</i> are referred to as <i>virtualCavities</i>, as they merely act as placeholders for the actual cavities defined by the contact module. The technical properties of the cavities are determined by the contact module itself.      </p>      <p> The virtual cavities serve multiple purposes. Using a <i>MappingSpecification</i>, it is possible to define a mapping between the cavities of a modular connector and those of a mating connector. The <i>MappingSpecification</i> can also be used to map virtual cavities to the actual cavities of a valid contact module (see Diagram &quot;Cavity&#160;Mapping&quot;).      </p>      <p> In addition, virtual cavities allow the assignment of individual <i>CavityAddOns</i> to specific cavities within modular assemblies.      </p>      <p> Depending on the specific methodology used for such modular connectors, certain <i>ModularSlotLayouts</i> may only be valid in relation to the configuration of other <i>ModularSlots</i>. For example, if continuous cavity numbering is required, the same insert may have different cavity numbers depending on how many cavities a preceding slot is populated with. The <i>ModularSlotConfiguration</i> allows the definition of such valid combinations.      </p>      <p> <i>&#160;</i>      </p>      <p> <i>However, it should be noted that applying such a methodology can led to a rapid, potentially exponential increase in the number of valid configuration variants, depending on the degree of flexibility in the connector&rsquo;s population. </i>      </p>