﻿---
title: Coupling Specification
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
  - MatingDetail
  - SlotCoupling
  - CavityCoupling
  - TerminalReceptionReference
  - TerminalRole
  - CavityReference
  - AbstractSlotReference
  - Connection
  - SlotReference
  - ConnectorHousingRole
  - MatingPoint
  - CouplingSpecification
  - CouplingPoint
menu:
  VEC-2.1.0:    
    parent: connectivity
    identifier: connectivity/coupling-specification
    weight: 1010008 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1010008
---
{{< svgfigure src="coupling-specification.png" width="1219" height="586" caption="Coupling Specification" numbered="true" >}}
  {{< svglink relref="../../classes/matingdetail.md" x="261.0" y="406.0" width="126.0" height="55.0" >}}
  {{< svglink relref="../../classes/slotcoupling.md" x="645.0" y="308.0" width="138.0" height="55.0" >}}
  {{< svglink relref="../../classes/cavitycoupling.md" x="652.0" y="476.0" width="138.0" height="55.0" >}}
  {{< svglink relref="../../classes/terminalreceptionreference.md" x="246.0" y="509.0" width="169.0" height="55.0" >}}
  {{< svglink relref="../../classes/terminalrole.md" x="435.0" y="410.0" width="169.0" height="55.0" >}}
  {{< svglink relref="../../classes/cavityreference.md" x="953.0" y="476.0" width="169.0" height="55.0" >}}
  {{< svglink relref="../../classes/abstractslotreference.md" x="946.0" y="308.0" width="169.0" height="55.0" >}}
  {{< svglink relref="../../classes/connection.md" x="15.0" y="224.0" width="217.0" height="79.0" >}}
  {{< svglink relref="../../classes/slotreference.md" x="953.0" y="392.0" width="246.0" height="55.0" >}}
  {{< svglink relref="../../classes/connectorhousingrole.md" x="946.0" y="161.0" width="259.0" height="79.0" >}}
  {{< svglink relref="../../classes/matingpoint.md" x="260.0" y="301.0" width="344.0" height="57.0" >}}
  {{< svglink relref="../../classes/couplingspecification.md" x="267.0" y="21.0" width="393.0" height="50.0" >}}
  {{< svglink relref="../../classes/couplingpoint.md" x="253.0" y="161.0" width="470.0" height="55.0" >}}
{{< / svgfigure >}}
<p> A <i>CouplingSpecification</i> is a container for various <i>CouplingPoints</i>. Each <i>CouplingPoint</i> defines a pluggable connection. All sub elements are disconnected if the coupling is disconnected. A coupling can occur with a connector (e.g. Inliner) or without a connector (e.g. ring terminal).      </p>      <p> The <i>CouplingPoint</i>, the <i>SlotCoupling</i> and the <i>CavityCoupling</i> defines the mapping between two coupled connectors.      </p>      <p> The <i>MatingPoint</i> defines the mapping between terminals and therefore the electrical properties of the coupling.      </p>      <p> Each <i>MatingPoint</i> references two <i>TerminalRoles</i> as a pair of terminals that are intended to be connected in the vehicle electric system. This can either be a female and a male pluggable terminal or a ring terminal and a bolt. In cases of ambiguity a <i>MatingPoint</i> can additionally specify various <i>MatingDetails</i> in order to reference the relevant <i>TerminalReceptions</i>.      </p>      <p> Note: <i>MatingPoints</i> are <i>ConfigurableElements</i> and so can reference a VariantCondition.      </p>      <p> In the development process exist multiple scenarios, where a coupling will not be specified completely. E.g. in the electro logical design, a coupling might be defined based on terminals only (e.g. between the wiring harness and an ECU), while the used connector is not yet known. The opposite scenario can occur in the geometric development.      </p>