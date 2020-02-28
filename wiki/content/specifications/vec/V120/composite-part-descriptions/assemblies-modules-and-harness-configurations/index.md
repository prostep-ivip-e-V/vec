---
title: Assemblies, Modules and Harness (Configurations)
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
  - PartUsageSpecification
  - Role
  - CompositionSpecification
  - PartStructureSpecification
  - PartWithSubComponentsRole
  - PartOccurrence
  - OccurrenceOrUsage
  - PartUsage
menu:
  VEC-1.2.0:    
    parent: composite-part-descriptions
    identifier: composite-part-descriptions/assemblies-modules-and-harness-configurations
    weight: 1010002 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1010002
---
{{< svgfigure src="assemblies-modules-and-harness-configurations.png" width="816" height="527" caption="Assemblies, Modules and Harness (Configurations)" numbered="true" >}}
  {{< svglink relref="../../classes/partusagespecification.md" x="153.0" y="470.0" width="134.0" height="34.0" >}}
  {{< svglink relref="../../classes/role.md" x="622.0" y="15.0" width="138.0" height="55.0" >}}
  {{< svglink relref="../../classes/compositionspecification.md" x="475.0" y="470.0" width="149.0" height="43.0" >}}
  {{< svglink relref="../../classes/partstructurespecification.md" x="20.0" y="15.0" width="152.0" height="55.0" >}}
  {{< svglink relref="../../classes/partwithsubcomponentsrole.md" x="328.0" y="22.0" width="171.0" height="43.0" >}}
  {{< svglink relref="../../classes/partoccurrence.md" x="454.0" y="295.0" width="211.0" height="120.0" >}}
  {{< svglink relref="../../classes/occurrenceorusage.md" x="307.0" y="155.0" width="217.0" height="91.0" >}}
  {{< svglink relref="../../classes/partusage.md" x="118.0" y="316.0" width="227.0" height="55.0" >}}
{{< / svgfigure >}}
<p> The VEC composite part concept has four key classes: the <i>PartStructureSpecification, </i>the <i>PartWithSubComponentsRole</i>, the <i>CompositionSpecification </i>and the <i>PartUsageSpecification</i>.      </p>      <p> As mentioned in the example before, the <i>PartStructureSpecification </i>is used to define the bill of material for a composite part based on occurrences. Specific occurrences are used in favour of just referencing parts, to define not only quantities of material, but also the details of the composition. The <i>PartWithSubComponentsRole </i>is the corresponding instance of such a composite part.      </p>      <p> Composite parts consist of <i>OccurrenceOrUsages, </i>so they can contain <i>PartOccurrences</i> (instances of a specific <i>PartVersion</i>)<i> </i>as well as<i> PartUsages</i> (instances of components where a specific <i>PartVersion</i> is not yet known). From a pure bill of material point of view this seems counter intuitive, since all materials in a bill of material should be well defined. However, there are scenarios where this is necessary. For instance, if a pre-assembled part (e.g. a cable) shall be used in a certain context, it is necessary, as mentioned before, to be able to reference the subcomponents. But if the subcomponents are not known in detail (no specific part number) <i>PartOccurrences </i>could not be used. Therefore, it is necessary to allow <i>PartUsages</i> in a composite part.      </p>      <p> The <i>OccurrenceOrUsages</i> used for a composite part are just referenced and not owned (contained) by the <i>PartStructureSpecification </i>and <i>PartWithSubComponentsRole</i>. As a result, they can be shared among them. This is especially useful in scenarios where a 150% product specification is done. Different variants of the product can reuse the same <i>OccurrenceOrUsages</i> without the need to copy them. The available <i>OccurrenceOrUsages</i> are defined by a <i>CompositionSpecification </i>(in case of <i>PartOccurrences</i>) or by a <i>PartUsageSpecification </i>(in case of <i>PartUsages)</i>.      </p>      <p> <i><b>Note</b>: A PartVersion without a separate PartStructureSpecification shall be regarded as one atomic part out of a bill of material perspective even if it is referenced by a DocumentVersion containing a CompositionSpecificiation with several occurrences.</i>      </p>      <p> &#160;      </p>