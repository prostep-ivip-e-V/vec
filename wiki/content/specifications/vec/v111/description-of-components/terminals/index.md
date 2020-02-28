---
title: Terminals
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
  - TerminalReception
  - TerminalType
  - SpliceTerminalSpecification
  - InternalTerminalConnection
  - TerminalSpecification
  - PluggableTerminalSpecification
  - WireReception
  - TerminalReceptionSpecification
  - PartOrUsageRelatedSpecification
  - RingTerminalSpecification
  - TerminalCurrentInformation
  - WireReceptionSpecification
  - Specification
menu:
  VEC-1.1.1:    
    parent: description-of-components
    identifier: description-of-components/terminals
    weight: 1003005 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1003005
---
{{< svgfigure src="terminals.png" width="815" height="727" caption="Terminals" numbered="true" >}}
  {{< svglink relref="../../classes/terminalreception.md" x="467.0" y="374.0" width="126.0" height="67.0" >}}
  {{< svglink relref="../../classes/terminaltype.md" x="666.0" y="490.0" width="135.0" height="67.0" >}}
  {{< svglink relref="../../classes/spliceterminalspecification.md" x="15.0" y="658.0" width="160.0" height="43.0" >}}
  {{< svglink relref="../../classes/internalterminalconnection.md" x="471.0" y="504.0" width="162.0" height="55.0" >}}
  {{< svglink relref="../../classes/terminalspecification.md" x="108.0" y="312.0" width="175.0" height="79.0" >}}
  {{< svglink relref="../../classes/pluggableterminalspecification.md" x="99.0" y="602.0" width="181.0" height="43.0" >}}
  {{< svglink relref="../../classes/wirereception.md" x="463.0" y="308.0" width="183.0" height="55.0" >}}
  {{< svglink relref="../../classes/terminalreceptionspecification.md" x="580.0" y="136.0" width="186.0" height="91.0" >}}
  {{< svglink relref="../../classes/partorusagerelatedspecification.md" x="85.0" y="140.0" width="188.0" height="55.0" >}}
  {{< svglink relref="../../classes/ringterminalspecification.md" x="291.0" y="602.0" width="209.0" height="103.0" >}}
  {{< svglink relref="../../classes/terminalcurrentinformation.md" x="22.0" y="455.0" width="224.0" height="79.0" >}}
  {{< svglink relref="../../classes/wirereceptionspecification.md" x="286.0" y="137.0" width="267.0" height="127.0" >}}
  {{< svglink relref="../../classes/specification.md" x="106.0" y="7.0" width="687.0" height="67.0" >}}
{{< / svgfigure >}}
<p> A <i>TerminalSpecification</i> can define <i>WireReceptions</i> and <i>TerminalReceptions</i> and on that basis <i>InternalTerminalConnections</i>. A <i>WireReception</i> can reference a <i>WireReceptionSpecification</i> in order to provide technical details about which wires are able to accommodate. A <i>TerminalReception</i> can reference a <i>TerminalReceptionSpecification</i> in order to provide technical details about in which cavities it fits and for which mating-terminals is it applicable. An <i>InternalTerminalConnection</i> states which <i>WireReceptions</i> and <i>Terminal­Receptions</i> are electrically connected. (This is especially important in case of a coax terminal.)      </p>