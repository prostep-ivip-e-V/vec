---
title: Wire Tuple Termination
toc: false
type: specs
layout: diagram
date: "2022-03-09"
draft: false
specification: VEC
version: 2.0.0
documentType: "Recommendation"
elementType: Diagram
classes:
  - WireEnd
  - WireTupleTerminationSpecification
  - WireTupleTermination
  - WireElementReference
  - WireTupleSpecification
  - Specification
menu:
  VEC-2.0.0:    
    parent: connectivity
    identifier: connectivity/wire-tuple-termination
    weight: 1010010 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1010010
---
{{< svgfigure src="wire-tuple-termination.png" width="709" height="564" caption="Wire Tuple Termination" numbered="true" >}}
  {{< svglink relref="../../classes/wireend.md" x="414.0" y="316.0" width="169.0" height="67.0" >}}
  {{< svglink relref="../../classes/wiretupleterminationspecification.md" x="398.0" y="120.0" width="201.0" height="34.0" >}}
  {{< svglink relref="../../classes/wiretupletermination.md" x="396.0" y="197.0" width="206.0" height="79.0" >}}
  {{< svglink relref="../../classes/wireelementreference.md" x="380.0" y="435.0" width="238.0" height="115.0" >}}
  {{< svglink relref="../../classes/wiretuplespecification.md" x="15.0" y="190.0" width="262.0" height="91.0" >}}
  {{< svglink relref="../../classes/specification.md" x="302.0" y="15.0" width="393.0" height="67.0" >}}
{{< / svgfigure >}}
<p> A <i>Specification</i> to define requirements for the handling of wire / wire element tuples (pairs, triple,...) with the focus on twisting&#160;/&#160;untwisting. The <i>WireTupleSpecification</i> defines the technical properties of the untwisting from a part master data perspective&#160;(see also the diagram &quot;Wire&#160;Tupel&quot;&#160;in &quot;Component&#160;Characteristics&quot;). The <i>WireTupleTermination</i> defines properties for a specific end of a specific wire tupel (a concrete usage).      </p>      <p> &#160;      </p>