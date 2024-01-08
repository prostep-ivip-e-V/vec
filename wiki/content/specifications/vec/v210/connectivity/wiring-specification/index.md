---
title: Wiring Specification
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
  - CavityReference
  - EEComponentRole
  - TerminalRole
  - WireRole
  - WireGrouping
  - BridgeTerminalRole
  - HousingComponentReference
  - ConnectionEnd
  - WireEnd
  - ComponentPort
  - Connection
  - ComponentConnector
  - WireElementReference
  - ConnectionGroup
  - ComponentNode
  - ConnectorHousingRole
  - Signal
  - Role
menu:
  VEC-2.1.0:    
    parent: connectivity
    identifier: connectivity/wiring-specification
    weight: 1010006 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1010006
---
{{< svgfigure src="wiring-specification.png" width="1801" height="1026" caption="Wiring Specification" numbered="true" >}}
  {{< svglink relref="../../classes/cavityreference.md" x="365.0" y="532.0" width="169.0" height="55.0" >}}
  {{< svglink relref="../../classes/eecomponentrole.md" x="50.0" y="875.0" width="169.0" height="43.0" >}}
  {{< svglink relref="../../classes/terminalrole.md" x="540.0" y="700.0" width="169.0" height="55.0" >}}
  {{< svglink relref="../../classes/wirerole.md" x="1009.0" y="728.0" width="169.0" height="43.0" >}}
  {{< svglink relref="../../classes/wiregrouping.md" x="1289.0" y="518.0" width="169.0" height="55.0" >}}
  {{< svglink relref="../../classes/bridgeterminalrole.md" x="771.0" y="637.0" width="169.0" height="34.0" >}}
  {{< svglink relref="../../classes/housingcomponentreference.md" x="190.0" y="763.0" width="175.0" height="55.0" >}}
  {{< svglink relref="../../classes/connectionend.md" x="540.0" y="105.0" width="198.0" height="91.0" >}}
  {{< svglink relref="../../classes/wireend.md" x="624.0" y="525.0" width="199.0" height="91.0" >}}
  {{< svglink relref="../../classes/componentport.md" x="379.0" y="378.0" width="217.0" height="91.0" >}}
  {{< svglink relref="../../classes/connection.md" x="841.0" y="105.0" width="217.0" height="79.0" >}}
  {{< svglink relref="../../classes/componentconnector.md" x="176.0" y="259.0" width="217.0" height="67.0" >}}
  {{< svglink relref="../../classes/wireelementreference.md" x="988.0" y="539.0" width="238.0" height="115.0" >}}
  {{< svglink relref="../../classes/connectiongroup.md" x="1128.0" y="231.0" width="253.0" height="91.0" >}}
  {{< svglink relref="../../classes/componentnode.md" x="85.0" y="84.0" width="255.0" height="103.0" >}}
  {{< svglink relref="../../classes/connectorhousingrole.md" x="258.0" y="616.0" width="259.0" height="79.0" >}}
  {{< svglink relref="../../classes/signal.md" x="1415.0" y="252.0" width="355.0" height="211.0" >}}
  {{< svglink relref="../../classes/role.md" x="260.0" y="953.0" width="1233.0" height="55.0" >}}
{{< / svgfigure >}}
<p> The VEC model breaks down the information that is usually included on an electrical system wiring plan into three aspects: part usage information, contacting information and mating information. As part usage information is for instance also relevant in the geometry respectively part placement context and as contacting and mating information is also relevant in the KBL context (the final definition of wiring harnesses and harness modules), the VEC model does not define an integrated WiringSpecification class for all these aspects. Instead, the VEC model defines for each of the three mentioned aspects a separate specification class, which can be reused when necessary (see also &quot;Instances of Components&quot;).     </p>      <p> EE-components in a wiring diagram are intended to be described as <i>PartUsages</i> with an <i>EEComponentRole</i>. Each of these <i>PartUsages </i>can<i> </i>reference an <i>EEComponentSpecification</i> in order to describe relevant technical properties. The <i>EEComponentRole</i> can specify a <i>TerminalRole</i> for each EE-component pin. This can act as the basis for a mating definition between the EE-component pins and harness connector pins.     </p>      <p> Harness connectors in a wiring diagram are intended to be described as <i>PartUsages</i> with a <i>ConnectorHousingRole</i>. Each of these <i>PartUsages</i> can reference a <i>ConnectorHousingSpecification</i> in order to describe relevant technical properties.     </p>      <p> Harness connector pins in a wiring diagram are intended to be described as <i>PartUsages</i> with a <i>PluggableTerminalRole</i>. Each of these <i>PartUsages </i>can<i> </i>reference a <i>PluggableTerminalSpecification</i> in order to describe relevant technical properties. The relationship between harness connector and harness connector pin is intended to be described by a <i>ContactingSpecification</i> which defines an appropriate <i>CavityMounting</i>.     </p>      <p> Wiring connections are intended to be described as <i>PartUsages</i> with a <i>WireRole</i> in combination with a <i>ContactingSpecification</i> which defines an appropriate <i>WireMounting</i>. Each of these <i>PartUsages</i> can reference a <i>WireSpecification</i> in order to describe relevant technical properties.     </p>      <p> The <i>PartUsages</i> with <i>EEComponentRole</i> respectively <i>ConnectorHousingRole</i>, <i>TerminalRole</i> or <i>WireRole</i> can each reference their specific corresponding element within a <i>ConnectionSpecification</i> in order to express a refinement-relationship.      </p>