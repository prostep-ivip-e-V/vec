---
title: Terminals
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
  - WireAddOnType
  - CrimpShape
  - ConductorMaterial
  - TerminalType
  - TerminalBoltNominalSize
  - TerminalReceptionGender
  - SpliceTerminalSpecification
  - InternalTerminalConnection
  - BridgeTerminalSpecification
  - WireReceptionAddOn
  - PrimaryLockingType
  - PartOrUsageRelatedSpecification
  - WireReception
  - TerminalReception
  - WireReceptionType
  - TerminalSealingType
  - PluggableTerminalType
  - OpenWireEndTerminalSpecification
  - TerminalBoltType
  - TerminalDistanceInformation
  - TerminalDistanceType
  - TerminalSpecification
  - TerminalCurrentInformation
  - PluggableTerminalSpecification
  - RingTerminalSpecification
  - BoltTerminalSpecification
  - TerminalReceptionSpecification
  - HoleTerminalSpecification
  - ResourceVersion
  - WireReceptionSpecification
  - Specification
menu:
  VEC-2.1.0:    
    parent: component-characteristics
    identifier: component-characteristics/terminals
    weight: 1005003 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1005003
---
{{< svgfigure src="terminals.png" width="1421" height="1130" caption="Terminals" numbered="true" >}}
  {{< svglink relref="../../classes/wireaddontype.md" x="1134.0" y="903.0" width="114.0" height="82.0" >}}
  {{< svglink relref="../../classes/crimpshape.md" x="1022.0" y="441.0" width="114.0" height="94.0" >}}
  {{< svglink relref="../../classes/conductormaterial.md" x="994.0" y="126.0" width="122.0" height="55.0" >}}
  {{< svglink relref="../../classes/terminaltype.md" x="1239.0" y="315.0" width="135.0" height="67.0" >}}
  {{< svglink relref="../../classes/terminalboltnominalsize.md" x="553.0" y="966.0" width="145.0" height="92.0" >}}
  {{< svglink relref="../../classes/terminalreceptiongender.md" x="987.0" y="546.0" width="153.0" height="94.0" >}}
  {{< svglink relref="../../classes/spliceterminalspecification.md" x="322.0" y="777.0" width="160.0" height="43.0" >}}
  {{< svglink relref="../../classes/internalterminalconnection.md" x="770.0" y="567.0" width="162.0" height="55.0" >}}
  {{< svglink relref="../../classes/bridgeterminalspecification.md" x="518.0" y="777.0" width="163.0" height="34.0" >}}
  {{< svglink relref="../../classes/wirereceptionaddon.md" x="945.0" y="203.0" width="169.0" height="67.0" >}}
  {{< svglink relref="../../classes/primarylockingtype.md" x="1204.0" y="476.0" width="171.0" height="94.0" >}}
  {{< svglink relref="../../classes/partorusagerelatedspecification.md" x="392.0" y="126.0" width="188.0" height="55.0" >}}
  {{< svglink relref="../../classes/wirereception.md" x="770.0" y="462.0" width="197.0" height="79.0" >}}
  {{< svglink relref="../../classes/terminalreception.md" x="770.0" y="665.0" width="208.0" height="67.0" >}}
  {{< svglink relref="../../classes/wirereceptiontype.md" x="945.0" y="287.0" width="209.0" height="142.0" >}}
  {{< svglink relref="../../classes/terminalsealingtype.md" x="294.0" y="196.0" width="209.0" height="106.0" >}}
  {{< svglink relref="../../classes/pluggableterminaltype.md" x="1197.0" y="777.0" width="209.0" height="118.0" >}}
  {{< svglink relref="../../classes/openwireendterminalspecification.md" x="707.0" y="777.0" width="209.0" height="34.0" >}}
  {{< svglink relref="../../classes/terminalbolttype.md" x="770.0" y="861.0" width="209.0" height="106.0" >}}
  {{< svglink relref="../../classes/terminaldistanceinformation.md" x="294.0" y="315.0" width="209.0" height="67.0" >}}
  {{< svglink relref="../../classes/terminaldistancetype.md" x="189.0" y="511.0" width="209.0" height="82.0" >}}
  {{< svglink relref="../../classes/terminalspecification.md" x="420.0" y="511.0" width="219.0" height="91.0" >}}
  {{< svglink relref="../../classes/terminalcurrentinformation.md" x="329.0" y="651.0" width="224.0" height="79.0" >}}
  {{< svglink relref="../../classes/pluggableterminalspecification.md" x="931.0" y="777.0" width="238.0" height="67.0" >}}
  {{< svglink relref="../../classes/ringterminalspecification.md" x="280.0" y="833.0" width="241.0" height="127.0" >}}
  {{< svglink relref="../../classes/boltterminalspecification.md" x="525.0" y="833.0" width="241.0" height="115.0" >}}
  {{< svglink relref="../../classes/terminalreceptionspecification.md" x="1127.0" y="126.0" width="244.0" height="115.0" >}}
  {{< svglink relref="../../classes/holeterminalspecification.md" x="14.0" y="833.0" width="244.0" height="115.0" >}}
  {{< svglink relref="../../classes/resourceversion.md" x="938.0" y="1001.0" width="252.0" height="79.0" >}}
  {{< svglink relref="../../classes/wirereceptionspecification.md" x="600.0" y="137.0" width="267.0" height="283.0" >}}
  {{< svglink relref="../../classes/specification.md" x="420.0" y="7.0" width="687.0" height="67.0" >}}
{{< / svgfigure >}}
<p> A <i>TerminalSpecification</i> can define <i>WireReceptions</i> and <i>TerminalReceptions</i> and on that basis <i>InternalTerminalConnections</i>. A <i>WireReception</i> can reference a <i>WireReceptionSpecification</i> in order to provide technical details about the wires which can be accommodated. A <i>TerminalReception</i> can reference a <i>TerminalReceptionSpecification</i> which provides technical details about compatible cavities and mating-terminals. An <i>InternalTerminalConnection</i> states which <i>WireReceptions</i> and <i>Terminal­Receptions</i> are electrically connected. This is especially important in case of a coax terminal.      </p>