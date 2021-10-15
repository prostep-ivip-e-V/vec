---
title: Wire Grouping Specification
toc: false
type: specs
layout: diagram
date: "2021-10-18"
draft: false
specification: VEC
version: 1.2.1
documentType: "Recommendation"
elementType: Diagram
classes:
  - WireRole
  - WireGrouping
  - WireGroupingSpecification
  - WireElementReference
  - WireGroupSpecification
  - Specification
menu:
  VEC-1.2.1:    
    parent: connectivity
    identifier: connectivity/wire-grouping-specification
    weight: 1009007 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1009007
---
{{< svgfigure src="wire-grouping-specification.png" width="551" height="499" caption="Wire Grouping Specification" numbered="true" >}}
  {{< svglink relref="../../classes/wirerole.md" x="238.0" y="441.0" width="169.0" height="43.0" >}}
  {{< svglink relref="../../classes/wiregrouping.md" x="238.0" y="224.0" width="169.0" height="55.0" >}}
  {{< svglink relref="../../classes/wiregroupingspecification.md" x="239.0" y="124.0" width="169.0" height="43.0" >}}
  {{< svglink relref="../../classes/wireelementreference.md" x="231.0" y="336.0" width="188.0" height="67.0" >}}
  {{< svglink relref="../../classes/wiregroupspecification.md" x="14.0" y="124.0" width="193.0" height="67.0" >}}
  {{< svglink relref="../../classes/specification.md" x="14.0" y="14.0" width="393.0" height="67.0" >}}
{{< / svgfigure >}}
<p> A <i>WireGroupingSpecification</i> is used to describe grouping requirements (e.g. twisted pair) in a certain context of usage (e.g. in the context of a 150% harness description). For this, a <i>WireGroupingSpecification</i> is a container for various <i>WireGroupings</i>. For more details, please refer to the description of the <i>WireGrouping.</i>      </p>