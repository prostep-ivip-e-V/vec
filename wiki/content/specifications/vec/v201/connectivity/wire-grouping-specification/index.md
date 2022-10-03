---
title: Wire Grouping Specification
toc: false
type: specs
layout: diagram
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Diagram
classes:
  - WireRole
  - WireGrouping
  - WireGroupingSpecification
  - WireGroupSpecification
  - WireElementReference
  - Specification
menu:
  VEC-2.0.1:    
    parent: connectivity
    identifier: connectivity/wire-grouping-specification
    weight: 1010009 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1010009
---
{{< svgfigure src="wire-grouping-specification.png" width="551" height="548" caption="Wire Grouping Specification" numbered="true" >}}
  {{< svglink relref="../../classes/wirerole.md" x="238.0" y="490.0" width="169.0" height="43.0" >}}
  {{< svglink relref="../../classes/wiregrouping.md" x="238.0" y="224.0" width="169.0" height="55.0" >}}
  {{< svglink relref="../../classes/wiregroupingspecification.md" x="238.0" y="124.0" width="169.0" height="43.0" >}}
  {{< svglink relref="../../classes/wiregroupspecification.md" x="14.0" y="124.0" width="193.0" height="67.0" >}}
  {{< svglink relref="../../classes/wireelementreference.md" x="203.0" y="336.0" width="238.0" height="115.0" >}}
  {{< svglink relref="../../classes/specification.md" x="14.0" y="14.0" width="393.0" height="67.0" >}}
{{< / svgfigure >}}
<p> A <i>WireGroupingSpecification</i> is used to describe grouping requirements (e.g. twisted pair) in a certain context of usage (e.g. in the context of a 150% harness description). For this, a <i>WireGroupingSpecification</i> is a container for various <i>WireGroupings</i>. For more details, please refer to the description of the <i>WireGrouping.</i>      </p>