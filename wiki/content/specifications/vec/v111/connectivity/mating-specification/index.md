---
title: Mating Specification
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
  - MatingDetail
  - TerminalReceptionReference
  - TerminalRole
  - MatingSpecification
  - MatingPoint
menu:
  VEC-1.1.1:    
    parent: connectivity
    identifier: connectivity/mating-specification
    weight: 1006006 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1006006
---
{{< svgfigure src="mating-specification.png" width="520" height="400" caption="Mating Specification" numbered="true" >}}
  {{< svglink relref="../../classes/matingdetail.md" x="281.0" y="220.0" width="126.0" height="55.0" >}}
  {{< svglink relref="../../classes/terminalreceptionreference.md" x="294.0" y="331.0" width="169.0" height="55.0" >}}
  {{< svglink relref="../../classes/terminalrole.md" x="56.0" y="222.0" width="169.0" height="55.0" >}}
  {{< svglink relref="../../classes/matingspecification.md" x="56.0" y="15.0" width="393.0" height="50.0" >}}
  {{< svglink relref="../../classes/matingpoint.md" x="61.0" y="113.0" width="393.0" height="55.0" >}}
{{< / svgfigure >}}
<p> A <i>MatingSpecification</i> is a container for various <i>MatingPoints</i>. Each <i>MatingPoint</i> references two <i>TerminalRoles</i> as a pair of terminals that are intended to be connected in the vehicle electric system. This can either be a female and a male pluggable terminal or a ring terminal and a bolt. In cases of ambiguity a <i>MatingPoint</i> can additionally specify various <i>MatingDetails</i> in order to reference the relevant <i>TerminalReceptions</i>.     </p>      <p> Note: <i>MatingPoints</i> are <i>ConfigurableElements</i> and so can reference a VariantCondition.      </p>