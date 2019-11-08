---
title: Harness and Variants
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu:
  vec120:
    identifier: composite-part-descriptions/harness-and-variants    
    parent: composite-part-descriptions
    weight: 1007004 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1007004
---
{{< svgfigure src="harness-and-variants.png" width="804" height="660" caption="Harness and Variants" numbered="true" >}}
  {{< svglink relref="../classes/role.md" x="246.0" y="475.0" width="138.0" height="55.0" >}}
  {{< svglink relref="../classes/modulelistspecification.md" x="210.0" y="123.0" width="140.0" height="43.0" >}}
  {{< svglink relref="../classes/compositionspecification.md" x="385.0" y="120.0" width="149.0" height="43.0" >}}
  {{< svglink relref="../classes/partstructurespecification.md" x="582.0" y="119.0" width="152.0" height="55.0" >}}
  {{< svglink relref="../classes/modulefamilyspecification.md" x="31.0" y="122.0" width="154.0" height="43.0" >}}
  {{< svglink relref="../classes/partwithsubcomponentsrole.md" x="243.0" y="344.0" width="171.0" height="43.0" >}}
  {{< svglink relref="../classes/partorusagerelatedspecification.md" x="539.0" y="19.0" width="188.0" height="55.0" >}}
  {{< svglink relref="../classes/partoccurrence.md" x="477.0" y="343.0" width="202.0" height="55.0" >}}
  {{< svglink relref="../classes/occurrenceorusage.md" x="485.0" y="471.0" width="217.0" height="91.0" >}}
  {{< svglink relref="../classes/modulefamily.md" x="0.0" y="225.0" width="217.0" height="67.0" >}}
  {{< svglink relref="../classes/modulelist.md" x="220.0" y="228.0" width="217.0" height="67.0" >}}
  {{< svglink relref="../classes/specification.md" x="35.0" y="15.0" width="477.0" height="67.0" >}}
  {{< svglink relref="../classes/configurableelement.md" x="28.0" y="603.0" width="673.0" height="43.0" >}}
{{< / svgfigure >}}
<html>   <head>     </head>   <body>     <p> In addition to the <i>CompositionSpecification</i> and the <i>PartStructureSpecification</i>, the VEC defines two other concepts to control occurrences, especially composite parts (e.g. modules): <i>ModuleFamily</i> and <i>ModuleList</i>.     </p>      <p> <i>PartWithSubComponentsRoles</i> referenced by a <i>ModuleFamily </i>respectively the <i>OccurrenceOrUsage</i> these <i>PartWithSubComponentRoles</i> belong to are mutually exclusive.     </p>      <p> A <i>ModuleList</i> specifies a set of <i>PartWithSubComponentsRoles. </i>The definition requires that if one or more of this <i>PartWithSubComponentsRoles</i> respectively the <i>OccurrenceOrUsage</i> these <i>PartWithSubComponentRoles</i> belong to are part of an assembly the referenced <i>completitionComponents</i> have to be added.      </p>    </body> </html> 
