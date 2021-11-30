---
title: Wire Tupel
toc: false
type: specs
layout: diagram
date: "2021-11-30"
draft: false
specification: VEC
version: 2.0.0-rc1
documentType: "Recommendation"
elementType: Diagram
classes:
  - PartRelation
  - Specification
  - WireTupleSpecification
menu:
  VEC-2.0.0-rc1:    
    parent: component-characteristics
    identifier: component-characteristics/wire-tupel
    weight: 1005002 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1005002
---
{{< svgfigure src="wire-tupel.png" width="651" height="260" caption="Wire Tupel" numbered="true" >}}
  {{< svglink relref="../../classes/partrelation.md" x="428.0" y="162.0" width="209.0" height="67.0" >}}
  {{< svglink relref="../../classes/specification.md" x="29.0" y="15.0" width="217.0" height="67.0" >}}
  {{< svglink relref="../../classes/wiretuplespecification.md" x="15.0" y="155.0" width="262.0" height="91.0" >}}
{{< / svgfigure >}}
<p> A <i>Specification</i> to define requirements for the handling of wire / wire element tuples (pairs, triple,...) with the focus on twisting. More precisely, the allowed untwisting at the wire ends and required measures against it.      </p>      <p> This definition is made independent from the <i>WireGroup</i>, as the might be defined for the part master data (the wire on the roller). The specifications for untwisting are based on the concrete usage.      </p>