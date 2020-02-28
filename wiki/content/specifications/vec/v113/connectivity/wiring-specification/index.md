---
title: Wiring Specification
toc: false
type: specs
layout: diagram
date: "2017-02-21"
draft: false
specification: VEC
version: 1.1.3
documentType: "Recommendation"
elementType: Diagram
classes:
  - CavityReference
  - EEComponentRole
  - WireElementReference
  - ConnectorHousingRole
  - TerminalRole
  - WireRole
  - WireEnd
  - HousingComponentReference
  - ConnectionEnd
  - OccurrenceOrUsage
  - ComponentPort
  - Connection
  - ComponentConnector
  - SignalSpecification
  - PartUsage
  - ComponentNode
  - Signal
  - PartUsageSpecification
  - ConnectionSpecification
  - Role
menu:
  VEC-1.1.3:    
    parent: connectivity
    identifier: connectivity/wiring-specification
    weight: 1006004 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1006004
---
{{< svgfigure src="wiring-specification.png" width="1003" height="1063" caption="Wiring Specification" numbered="true" >}}
  {{< svglink relref="../../classes/cavityreference.md" x="320.0" y="539.0" width="169.0" height="55.0" >}}
  {{< svglink relref="../../classes/eecomponentrole.md" x="29.0" y="707.0" width="169.0" height="43.0" >}}
  {{< svglink relref="../../classes/wireelementreference.md" x="796.0" y="511.0" width="169.0" height="55.0" >}}
  {{< svglink relref="../../classes/connectorhousingrole.md" x="68.0" y="525.0" width="169.0" height="55.0" >}}
  {{< svglink relref="../../classes/terminalrole.md" x="238.0" y="616.0" width="169.0" height="55.0" >}}
  {{< svglink relref="../../classes/wirerole.md" x="565.0" y="623.0" width="169.0" height="43.0" >}}
  {{< svglink relref="../../classes/wireend.md" x="523.0" y="518.0" width="169.0" height="67.0" >}}
  {{< svglink relref="../../classes/housingcomponentreference.md" x="49.0" y="602.0" width="175.0" height="55.0" >}}
  {{< svglink relref="../../classes/connectionend.md" x="341.0" y="336.0" width="198.0" height="91.0" >}}
  {{< svglink relref="../../classes/occurrenceorusage.md" x="292.0" y="883.0" width="217.0" height="91.0" >}}
  {{< svglink relref="../../classes/componentport.md" x="75.0" y="378.0" width="217.0" height="79.0" >}}
  {{< svglink relref="../../classes/connection.md" x="306.0" y="108.0" width="217.0" height="79.0" >}}
  {{< svglink relref="../../classes/componentconnector.md" x="84.0" y="259.0" width="217.0" height="67.0" >}}
  {{< svglink relref="../../classes/signalspecification.md" x="560.0" y="7.0" width="225.0" height="43.0" >}}
  {{< svglink relref="../../classes/partusage.md" x="22.0" y="903.0" width="227.0" height="55.0" >}}
  {{< svglink relref="../../classes/componentnode.md" x="22.0" y="108.0" width="255.0" height="91.0" >}}
  {{< svglink relref="../../classes/signal.md" x="581.0" y="112.0" width="355.0" height="196.0" >}}
  {{< svglink relref="../../classes/partusagespecification.md" x="21.0" y="991.0" width="491.0" height="50.0" >}}
  {{< svglink relref="../../classes/connectionspecification.md" x="21.0" y="7.0" width="505.0" height="43.0" >}}
  {{< svglink relref="../../classes/role.md" x="21.0" y="778.0" width="750.0" height="55.0" >}}
{{< / svgfigure >}}
<p> The VEC model breaks down the information that is usually included on an electrical system wiring plan into three aspects: part usage information, contacting information and mating information. As part usage information is for instance also relevant in the geometry respectively part placement context and as contacting and mating information is also relevant in the KBL context (the final definition of wiring harnesses and harness modules), the VEC model does not define an integrated WiringSpecification class for all these aspects. Instead, the VEC model defines for each of the three mentioned aspects a separate specification class, which can be reused when necessary (see also &quot;Instances of Components&quot;).     </p>      <p> EE-components in a wiring diagram are intended to be described as <i>PartUsages</i> with an <i>EEComponentRole</i>. Each of these <i>PartUsages </i>can<i> </i>reference an <i>EEComponentSpecification</i> in order to describe relevant technical properties. The <i>EEComponentRole</i> can specify a <i>TerminalRole</i> for each EE-component pin. This can act as the basis for a mating definition between the EE-component pins and harness connector pins.     </p>      <p> Harness connectors in a wiring diagram are intended to be described as <i>PartUsages</i> with a <i>ConnectorHousingRole</i>. Each of these <i>PartUsages</i> can reference a <i>ConnectorHousingSpecification</i> in order to describe relevant technical properties.     </p>      <p> Harness connector pins in a wiring diagram are intended to be described as <i>PartUsages</i> with a <i>PluggableTerminalRole</i>. Each of these <i>PartUsages </i>can<i> </i>reference a <i>PluggableTerminalSpecification</i> in order to describe relevant technical properties. The relationship between harness connector and harness connector pin is intended to be described by a <i>ContactingSpecification</i> which defines an appropriate <i>CavityMounting</i>.     </p>      <p> Wiring connections are intended to be described as <i>PartUsages</i> with a <i>WireRole</i> in combination with a <i>ContactingSpecification</i> which defines an appropriate <i>WireMounting</i>. Each of these <i>PartUsages</i> can reference a <i>WireSpecification</i> in order to describe relevant technical properties.     </p>      <p> The <i>PartUsages</i> with <i>EEComponentRole</i> respectively <i>ConnectorHousingRole</i>, <i>TerminalRole</i> or <i>WireRole</i> can each reference their specific corresponding element within a <i>ConnectionSpecification</i> in order to express a refinement-relationship.      </p>