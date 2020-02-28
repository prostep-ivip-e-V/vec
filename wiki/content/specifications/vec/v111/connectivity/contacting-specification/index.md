---
title: Contacting Specification
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
  - WireMounting
  - WireMountingDetail
  - CavityMountingDetail
  - CavityMounting
  - TerminalReceptionReference
  - WireReceptionReference
  - CavityReference
  - CavityPlugRole
  - CavitySealRole
  - TerminalRole
  - WireEnd
  - ContactingSpecification
  - ContactPoint
menu:
  VEC-1.1.1:    
    parent: connectivity
    identifier: connectivity/contacting-specification
    weight: 1006005 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1006005
---
{{< svgfigure src="contacting-specification.png" width="1000" height="539" caption="Contacting Specification" numbered="true" >}}
  {{< svglink relref="../../classes/wiremounting.md" x="436.0" y="205.0" width="90.0" height="43.0" >}}
  {{< svglink relref="../../classes/wiremountingdetail.md" x="442.0" y="308.0" width="115.0" height="120.0" >}}
  {{< svglink relref="../../classes/cavitymountingdetail.md" x="277.0" y="303.0" width="123.0" height="43.0" >}}
  {{< svglink relref="../../classes/cavitymounting.md" x="274.0" y="203.0" width="141.0" height="43.0" >}}
  {{< svglink relref="../../classes/terminalreceptionreference.md" x="250.0" y="462.0" width="169.0" height="55.0" >}}
  {{< svglink relref="../../classes/wirereceptionreference.md" x="678.0" y="389.0" width="169.0" height="55.0" >}}
  {{< svglink relref="../../classes/cavityreference.md" x="20.0" y="94.0" width="169.0" height="55.0" >}}
  {{< svglink relref="../../classes/cavityplugrole.md" x="7.0" y="400.0" width="169.0" height="43.0" >}}
  {{< svglink relref="../../classes/cavitysealrole.md" x="703.0" y="203.0" width="169.0" height="43.0" >}}
  {{< svglink relref="../../classes/terminalrole.md" x="640.0" y="93.0" width="169.0" height="55.0" >}}
  {{< svglink relref="../../classes/wireend.md" x="682.0" y="306.0" width="169.0" height="67.0" >}}
  {{< svglink relref="../../classes/contactingspecification.md" x="274.0" y="7.0" width="316.0" height="43.0" >}}
  {{< svglink relref="../../classes/contactpoint.md" x="274.0" y="84.0" width="316.0" height="62.0" >}}
{{< / svgfigure >}}
<p> A <i>ContactingSpecification</i> is used to describe contacting information in several uses cases: It can be used to describe both the more abstract contacting information which is contained on an electrical system wiring plan and the very concrete contacting of an assembly / module/ harness configuration or even a 150% harness description.     </p>      <p> A <i>ContactingSpecification</i> is a container for various <i>ContactPoints</i>. Each <i>ContactPoint</i> can specify several <i>CavityMountings</i> and <i>WireMountings</i> and will in most cases reference a <i>TerminalRole</i>.     </p>      <p> A <i>WiringMounting</i> references one or more <i>WireEnds</i> stating they are contacted with the <i>TerminalRole </i>referenced by the <i>ContactPoint</i>. In cases of ambiguity a <i>WireMounting</i> can specify various <i>WireMountingDetails</i> in order to describe which <i>WireEnd</i> is contacted to which <i>WireReception</i> of the referenced <i>TerminalRole</i>. Finally, a <i>WireMounting</i> can reference a <i>CavitySealRole</i>.     </p>      <p> A <i>CavityMounting</i> references one or more <i>CavityReferences</i> expressing they are equipped by the <i>TerminalRole</i> referenced by the <i>ContactPoint</i>. In cases of ambiguity a <i>CavityMounting</i> can specify various <i>CavityMountingDetails</i> in order to describe which <i>TerminalReception</i> is mounted in which <i>CavityReference</i>. Finally, a <i>CavityMounting</i> can reference various <i>CavityPlugRoles</i> stating the <i>CavityMounting</i> replaces those <i>CavityPlugs</i>.     </p>      <p> Note: <i>ContactPoints</i> are <i>ConfigurableElements</i> and therefore can reference a <i>VariantCondition</i>.     </p>      <p> Note: There may be use cases where a <i>ContactingSpecification</i> is wanted to describe an incomplete contacting. An example might be an assembly or module with wires together with mounted terminals but without a mounting of the terminals into a connector housing. The missing contacting information (the mounting of the terminals into a connector housings) may be subject of other <i>ContactingSpecifications</i> respectively <i>ContactPoints</i> which may be specified configuration dependent.      </p>