---
title: Module Lists and -Families
toc: false
type: specs
layout: diagram
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Diagram
classes:
  - Role
  - ModuleListSpecification
  - ModuleFamilySpecification
  - ModuleList
  - ModuleFamily
  - OccurrenceOrUsage
  - PartWithSubComponentsRole
  - Specification
menu:
  VEC-2.1.0:    
    parent: composite-part-descriptions
    identifier: composite-part-descriptions/module-lists-and--families
    weight: 1008004 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1008004
---
{{< svgfigure src="module-lists-and--families.png" width="811" height="601" caption="Module Lists and -Families" numbered="true" >}}
  {{< svglink relref="../../classes/role.md" x="218.0" y="470.0" width="138.0" height="55.0" >}}
  {{< svglink relref="../../classes/modulelistspecification.md" x="348.0" y="113.0" width="140.0" height="43.0" >}}
  {{< svglink relref="../../classes/modulefamilyspecification.md" x="47.0" y="122.0" width="154.0" height="43.0" >}}
  {{< svglink relref="../../classes/modulelist.md" x="309.0" y="211.0" width="217.0" height="67.0" >}}
  {{< svglink relref="../../classes/modulefamily.md" x="15.0" y="211.0" width="217.0" height="67.0" >}}
  {{< svglink relref="../../classes/occurrenceorusage.md" x="485.0" y="456.0" width="217.0" height="91.0" >}}
  {{< svglink relref="../../classes/partwithsubcomponentsrole.md" x="127.0" y="344.0" width="323.0" height="43.0" >}}
  {{< svglink relref="../../classes/specification.md" x="50.0" y="15.0" width="477.0" height="67.0" >}}
{{< / svgfigure >}}
<p> In addition to the <i>CompositionSpecification</i> and the <i>PartStructureSpecification</i>, the VEC defines two other concepts to control occurrences, especially composite parts (e.g. modules): <i>ModuleFamily</i> and <i>ModuleList</i>.      </p>      <p> <i>PartWithSubComponentsRoles</i> referenced by a <i>ModuleFamily </i>respectively the <i>OccurrenceOrUsage</i> these <i>PartWithSubComponentsRoles</i> belong to are mutually exclusive.      </p>      <p> A <i>ModuleList</i> specifies a set of <i>PartWithSubComponentsRoles. </i>The definition requires that if one or more of this <i>PartWithSubComponentsRoles</i> respectively the <i>OccurrenceOrUsage</i> these <i>PartWithSubComponentsRoles</i> belong to are part of an assembly the referenced <i>completionComponents</i> have to be added.      </p>