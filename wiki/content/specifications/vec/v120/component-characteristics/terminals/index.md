---
title: Terminals
toc: false
type: specs
layout: diagram
date: "2020-05-11"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Diagram
classes:
  - WireAddOnType
  - ConductorMaterial
  - TerminalReception
  - TerminalType
  - SpliceTerminalSpecification
  - InternalTerminalConnection
  - BridgeTerminalSpecification
  - WireReceptionAddOn
  - PrimaryLockingType
  - WireReception
  - PartOrUsageRelatedSpecification
  - TerminalSpecification
  - RingTerminalSpecification
  - WireReceptionType
  - TerminalSealingType
  - PluggableTerminalType
  - BoltTerminalSpecification
  - OpenWireEndTerminalSpecification
  - PluggableTerminalSpecification
  - TerminalCurrentInformation
  - TerminalReceptionSpecification
  - WireReceptionSpecification
  - Specification
menu:
  VEC-1.2.0:    
    parent: component-characteristics
    identifier: component-characteristics/terminals
    weight: 1005002 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1005002
---
{{< svgfigure src="terminals.png" width="1183" height="788" caption="Terminals" numbered="true" >}}
  {{< svglink relref="../../classes/wireaddontype.md" x="756.0" y="665.0" width="114.0" height="82.0" >}}
  {{< svglink relref="../../classes/conductormaterial.md" x="714.0" y="126.0" width="122.0" height="55.0" >}}
  {{< svglink relref="../../classes/terminalreception.md" x="501.0" y="374.0" width="126.0" height="67.0" >}}
  {{< svglink relref="../../classes/terminaltype.md" x="805.0" y="434.0" width="135.0" height="67.0" >}}
  {{< svglink relref="../../classes/spliceterminalspecification.md" x="42.0" y="595.0" width="160.0" height="43.0" >}}
  {{< svglink relref="../../classes/internalterminalconnection.md" x="505.0" y="504.0" width="162.0" height="55.0" >}}
  {{< svglink relref="../../classes/bridgeterminalspecification.md" x="238.0" y="595.0" width="163.0" height="34.0" >}}
  {{< svglink relref="../../classes/wirereceptionaddon.md" x="665.0" y="203.0" width="169.0" height="67.0" >}}
  {{< svglink relref="../../classes/primarylockingtype.md" x="931.0" y="273.0" width="171.0" height="82.0" >}}
  {{< svglink relref="../../classes/wirereception.md" x="497.0" y="294.0" width="183.0" height="67.0" >}}
  {{< svglink relref="../../classes/partorusagerelatedspecification.md" x="112.0" y="126.0" width="188.0" height="55.0" >}}
  {{< svglink relref="../../classes/terminalspecification.md" x="140.0" y="329.0" width="207.0" height="67.0" >}}
  {{< svglink relref="../../classes/ringterminalspecification.md" x="28.0" y="651.0" width="209.0" height="115.0" >}}
  {{< svglink relref="../../classes/wirereceptiontype.md" x="959.0" y="434.0" width="209.0" height="142.0" >}}
  {{< svglink relref="../../classes/terminalsealingtype.md" x="14.0" y="196.0" width="209.0" height="106.0" >}}
  {{< svglink relref="../../classes/pluggableterminaltype.md" x="917.0" y="595.0" width="209.0" height="118.0" >}}
  {{< svglink relref="../../classes/boltterminalspecification.md" x="245.0" y="651.0" width="209.0" height="115.0" >}}
  {{< svglink relref="../../classes/openwireendterminalspecification.md" x="427.0" y="595.0" width="209.0" height="34.0" >}}
  {{< svglink relref="../../classes/pluggableterminalspecification.md" x="651.0" y="595.0" width="221.0" height="55.0" >}}
  {{< svglink relref="../../classes/terminalcurrentinformation.md" x="49.0" y="469.0" width="224.0" height="79.0" >}}
  {{< svglink relref="../../classes/terminalreceptionspecification.md" x="847.0" y="126.0" width="244.0" height="91.0" >}}
  {{< svglink relref="../../classes/wirereceptionspecification.md" x="320.0" y="137.0" width="267.0" height="127.0" >}}
  {{< svglink relref="../../classes/specification.md" x="140.0" y="7.0" width="687.0" height="67.0" >}}
{{< / svgfigure >}}
<p> A <i>TerminalSpecification</i> can define <i>WireReceptions</i> and <i>TerminalReceptions</i> and on that basis <i>InternalTerminalConnections</i>. A <i>WireReception</i> can reference a <i>WireReceptionSpecification</i> in order to provide technical details about the wires which can be accommodated. A <i>TerminalReception</i> can reference a <i>TerminalReceptionSpecification</i> which provides technical details about compatible cavities and mating-terminals. An <i>InternalTerminalConnection</i> states which <i>WireReceptions</i> and <i>Terminal­Receptions</i> are electrically connected. This is especially important in case of a coax terminal.      </p>