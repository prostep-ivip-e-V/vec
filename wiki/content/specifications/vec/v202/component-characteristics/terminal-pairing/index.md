---
title: Terminal Pairing
toc: false
type: specs
layout: diagram
date: "2023-03-24"
draft: false
specification: VEC
version: 2.0.2
documentType: "Recommendation"
elementType: Diagram
classes:
  - TerminalPairingSpecification
  - PartVersion
  - ConductorSpecification
  - TerminalPairing
  - Specification
menu:
  VEC-2.0.2:    
    parent: component-characteristics
    identifier: component-characteristics/terminal-pairing
    weight: 1005006 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1005006
---
{{< svgfigure src="terminal-pairing.png" width="664" height="489" caption="Terminal Pairing" numbered="true" >}}
  {{< svglink relref="../../classes/terminalpairingspecification.md" x="42.0" y="131.0" width="165.0" height="43.0" >}}
  {{< svglink relref="../../classes/partversion.md" x="51.0" y="348.0" width="212.0" height="127.0" >}}
  {{< svglink relref="../../classes/conductorspecification.md" x="437.0" y="152.0" width="213.0" height="163.0" >}}
  {{< svglink relref="../../classes/terminalpairing.md" x="47.0" y="225.0" width="215.0" height="79.0" >}}
  {{< svglink relref="../../classes/specification.md" x="43.0" y="15.0" width="217.0" height="67.0" >}}
{{< / svgfigure >}}
<p> A <i>TerminalPairingSpecification</i> is a container for various <i>TerminalPairing</i>. A <i>TerminalPairing</i> is an aspect of part master definition of terminals and represents a specific pair of terminals pluggable to each other. It specifies properties of that terminal pair in combination with a specific <i>ConductorSpecification.</i>      </p>