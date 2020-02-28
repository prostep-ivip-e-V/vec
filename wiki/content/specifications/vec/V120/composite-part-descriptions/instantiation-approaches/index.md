---
title: Instantiation Approaches
toc: false
type: specs
layout: diagram
date: "2020-02-01"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Diagram
classes:
menu:
  VEC-1.2.0:    
    parent: composite-part-descriptions
    identifier: composite-part-descriptions/instantiation-approaches
    weight: 1010003 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1010003
---
{{< svgfigure src="instantiation-approaches.png" width="919" height="1212" caption="Instantiation Approaches" numbered="true" >}}
{{< / svgfigure >}}
<p> When a composite part is instantiated, an <i>OccurrenceOrUsage </i>with a <i>PartWithSubComponentsRole </i>is created and references the instantiated <i>OccurenceOrUsages</i> that belong to the composite part instance. The instantiated occurrences are owned by a <i>PartUsageSpecification / CompositionSpecification </i>that is related to the context where the composite part is instantiated.      </p>      <p> There are two approaches of how the definition and instantiation of composite parts is achieved: the library approach and the &quot;in place&quot; definition.      </p>      <p> In the library approach, a composite part (e.g. a predefined USB&#160;cable) is defined in the component library and later used in different products. In this case, the part master definition of the composite part contains the <i>OccurrenceOrUsages </i>(&quot;A:&#160;P1&quot;, &quot;B: P2&quot;, &quot;C:&#160;P2&quot;) that are required by the composite part and those are referenced by the <i>PartStructureSpecification </i>(P3)<i>.</i> When the composite part is used (instantiated), the <i>OccurrenceOrUsages</i> from the part master definition are instantiated (copied) into the using context (&quot;A':&#160;P1&quot;, &quot;B': P2&quot;, &quot;C':&#160;P2&quot;). Those are then referenced by the <i>PartWithSubComponentsRole </i>(E:&#160;P3) and additional information can be attached to them. For traceability reasons, the <i>OccurrenceOrUsages </i>shall<i> </i>reference their origin in the part master definition via the instantiated<i>Usage/instantiatedOccurrence</i> association.      </p>      <p> The &quot;in place&quot; definition is used for example for modules of a 150% harness. In this case, the composite part is not defined in a library, but in its only and single usage. In other words, the part master definition coincides with an instantiation of part. Therefore, the <i>PartStructureSpecification </i>(P3) and the <i>PartWithSubComponentsRole </i>(E: P3)<i> </i>reference the same set of <i>OccurrenceOrUsages </i>(&quot;A:&#160;P1&quot;, &quot;B: P2&quot;, &quot;C:&#160;P2&quot;)<i>.</i> In this case both<i> </i>relationships of the <i>PartWithSubComponentsRole</i> and a <i>PartStructureSpecification</i> to the <i>OccurrenceOrUsage</i> (inBillOfMaterial &amp;&#160;subComponents) shall be maintained consistently.<i> </i>      </p>