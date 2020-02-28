---
title: Assemblies, Modules and Harness (Configurations)
toc: false
type: specs
layout: diagram
date: "2017-02-21"
draft: false
specification: VEC
version: 1.1.3
documentType: "Recommendation"
elementType: Diagram
classes:
  - Role
  - CompositionSpecification
  - PartStructureSpecification
  - PartWithSubComponentsRole
  - PartVersion
  - PartOccurrence
  - OccurrenceOrUsage
menu:
  VEC-1.1.3:    
    parent: complex-part-descriptions
    identifier: complex-part-descriptions/assemblies-modules-and-harness-configurations
    weight: 1007001 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1007001
---
{{< svgfigure src="assemblies-modules-and-harness-configurations.png" width="706" height="563" caption="Assemblies, Modules and Harness (Configurations)" numbered="true" >}}
  {{< svglink relref="../../classes/role.md" x="14.0" y="282.0" width="138.0" height="55.0" >}}
  {{< svglink relref="../../classes/compositionspecification.md" x="346.0" y="16.0" width="149.0" height="43.0" >}}
  {{< svglink relref="../../classes/partstructurespecification.md" x="14.0" y="14.0" width="152.0" height="55.0" >}}
  {{< svglink relref="../../classes/partwithsubcomponentsrole.md" x="14.0" y="189.0" width="171.0" height="43.0" >}}
  {{< svglink relref="../../classes/partversion.md" x="346.0" y="421.0" width="196.0" height="127.0" >}}
  {{< svglink relref="../../classes/partoccurrence.md" x="343.0" y="123.0" width="211.0" height="120.0" >}}
  {{< svglink relref="../../classes/occurrenceorusage.md" x="301.0" y="277.0" width="217.0" height="91.0" >}}
{{< / svgfigure >}}
<p> The KBL introduced different concepts for composite parts: harnesses, modules, harness configurations and assemblies. The KBL defines a harness as a set of occurrences, just like an assembly. A module is specified within KBL by the reference of a set of occurrences (located in the harness). A harness configuration is specified within the KBL by the reference of a set of modules. The usage of an assembly in a harness within the KBL needs instantiating the occurrences specified in the assembly part.     </p>      <p> The VEC harmonizes this and has only one concept for all those aspects. The idea behind this is that the decision about the type of a composite part is process specific. Structurally, all composite parts are a set of other parts interconnected in some way. For example a module may be assembled of components like connector housings, wires and terminals or pre-assembled parts that are again assembled of connector housings, wires and terminals. From an abstract point of view a part regarded as a module by one process partner could be regarded as an assembly by another process partner.     </p>      <p> The VEC assembly concept is finally based on the following two specifications classes: <i>PartStructureSpecification</i> and <i>CompositionSpecification</i>.     </p>      <p> The <i>CompositionSpecificiation</i> is used to define a set of occurrences required to unambiguously describe the design of a composite part. This does not have to necessarily be the same occurrences which are required to be listed in a bill of material. Example: A company might want to regard an antenna cable as one part out of a bill of material perspective. However, at the same time it may be useful for the company to be able to describe the contacting of the antenna cable within the VEC. For this it needs according occurrences that can be specified by the <i>CompositionSpecification</i>. The bill of material will be described separately by a <i>PartStructureSpecification</i>.     </p>      <p> Note: A <i>PartVersion</i> without a separate <i>PartStructureSpecification</i> shall be regarded as one atomic part out of a bill of material perspective even if it is referenced by a <i>DocumentVersion</i> containing a<i> CompositionSpecificiation</i> with several occurrences.     </p>      <p> When an assembly (or module) is used in another composite part the assembly is an occurrence like any other component, but it has a <i>PartWithSubComponentsRole</i>. This role is used to specify which instantiated occurrences are belonging to the assembly. Instantiated occurrences are owned by the <i>CompositionSpecification</i> of the part which is using the assembly and they point to the occurrences of the assembly which they are instantiating. Instantiated occurrences are required as anchor point for additional information such as contacting information.      </p>