---
title: Instantiation Approaches
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu:
  vec120:
    identifier: composite-part-descriptions/instantiation-approaches    
    parent: composite-part-descriptions
    weight: 1007003 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1007003
---
{{< svgfigure src="instantiation-approaches.png" width="919" height="1212" caption="Instantiation Approaches" numbered="true" >}}
{{< / svgfigure >}}
<html>   <head>     </head>   <body>     <p> When a composite part is instantiated, a <i>OccurrenceOrUsage </i>with a <i>PartWithSubComponentsRole </i>is created and references the instantiated <i>OccurenceOrUsages</i> that belong to the composite part instance. The instantiated occurrences are owned by a <i>PartUsageSpecification / CompositionSpecification </i>that is related to the context where the composite part is instantiated.      </p>      <p> There are two approaches of how the definition and instantiation of composite parts is achieved: the library approach and the &quot;inplace&quot; definition.      </p>      <p> In the library approach, a composite part (e.g. a predefined USB&#160;cable) is defined in the component library and later used in different products. In this case, the part master definition of the composite part contains the <i>OccurrenceOrUsages</i> that are required by the composite part and those are referenced by the <i>PartStructureSpecification.</i> When the composite part is used (instantiated), the <i>OccurrenceOrUsages</i> from the part master definition are instantiated (copied) into the using context. Those are then referenced by the <i>PartWithSubComponentsRole</i> and additional information can be attached to them. For traceability reasons, the <i>OccurrenceOrUsages </i>shall<i> </i>reference their origin in the part master definition via the instantiated<i>Usage/instantiatedOccurrence</i> association.      </p>      <p> The &quot;inplace&quot; definition is used for example for modules of a 150% harness. In this case, the composite part is not defined in a library, but in its only and single usage. In other words, the part master definition coincides with a instantiation of part. Therefore the <i>PartStructureSpecification</i> and the <i>PartWithSubComponentsRole </i>reference the same set of <i>OccurrenceOrUsages.</i> However, if a <i>PartWithSubComponentsRole</i> and a <i>PartStructureSpecification </i>both<i> </i>relationships (inBillOfMaterial &amp;&#160;subComponents) shall be maintained consistently.<i> </i>      </p>  </body> </html>
