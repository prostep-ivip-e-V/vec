---
title: Cavity Seals and Cavity Plugs
toc: false
type: specs
layout: diagram
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Diagram
classes:
  - Cavity
  - OpenCavitiesAssignment
  - SealedCavitiesAssignment
  - MultiCavitySealSpecification
  - MultiCavityPlugSpecification
  - CavityPlugSpecification
  - CavitySealSpecification
  - CavitySpecification
  - PartOrUsageRelatedSpecification
menu:
  VEC-1.1.2:    
    parent: description-of-components
    identifier: description-of-components/cavity-seals-and-cavity-plugs
    weight: 1003008 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1003008
---
{{< svgfigure src="cavity-seals-and-cavity-plugs.png" width="786" height="404" caption="Cavity Seals and Cavity Plugs" numbered="true" >}}
  {{< svglink relref="../../classes/cavity.md" x="309.0" y="323.0" width="144.0" height="67.0" >}}
  {{< svglink relref="../../classes/opencavitiesassignment.md" x="50.0" y="337.0" width="149.0" height="43.0" >}}
  {{< svglink relref="../../classes/sealedcavitiesassignment.md" x="596.0" y="344.0" width="157.0" height="43.0" >}}
  {{< svglink relref="../../classes/multicavitysealspecification.md" x="50.0" y="239.0" width="161.0" height="43.0" >}}
  {{< svglink relref="../../classes/multicavityplugspecification.md" x="582.0" y="239.0" width="162.0" height="43.0" >}}
  {{< svglink relref="../../classes/cavityplugspecification.md" x="581.0" y="109.0" width="180.0" height="79.0" >}}
  {{< svglink relref="../../classes/cavitysealspecification.md" x="15.0" y="92.0" width="247.0" height="115.0" >}}
  {{< svglink relref="../../classes/cavityspecification.md" x="274.0" y="92.0" width="283.0" height="139.0" >}}
  {{< svglink relref="../../classes/partorusagerelatedspecification.md" x="15.0" y="15.0" width="757.0" height="55.0" >}}
{{< / svgfigure >}}
<p> The diagram displays the <i>PartOrUsageRelatedSpecifications</i> for Cavity seals and plugs. Both are used to seal <i>Cavities</i>. A cavity plug is used for a single cavity that has no wire in it, a cavity seal is used to seal a single cavity together with a terminal and a wire.     </p>      <p> For both are special types existent that do not seal a single cavity, but a couple of cavities at the same time. The <i>MultiCavitySeal</i> and the <i>MultiCavityPlug</i>. For more details see the description of the corresponding classes.      </p>