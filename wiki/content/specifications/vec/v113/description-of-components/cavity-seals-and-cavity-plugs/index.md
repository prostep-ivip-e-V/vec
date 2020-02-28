---
title: Cavity Seals and Cavity Plugs
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
  - CavityPlugSpecification
  - OpenCavitiesAssignment
  - SealedCavitiesAssignment
  - MultiCavitySealSpecification
  - MultiCavityPlugSpecification
  - Cavity
  - SealingGeometry
  - CavityPartSpecification
  - CavitySealSpecification
  - CavityAccessorySpecification
  - CavitySpecification
  - PartOrUsageRelatedSpecification
menu:
  VEC-1.1.3:    
    parent: description-of-components
    identifier: description-of-components/cavity-seals-and-cavity-plugs
    weight: 1003009 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1003009
---
{{< svgfigure src="cavity-seals-and-cavity-plugs.png" width="940" height="542" caption="Cavity Seals and Cavity Plugs" numbered="true" >}}
  {{< svglink relref="../../classes/cavityplugspecification.md" x="736.0" y="218.0" width="135.0" height="43.0" >}}
  {{< svglink relref="../../classes/opencavitiesassignment.md" x="204.0" y="463.0" width="149.0" height="43.0" >}}
  {{< svglink relref="../../classes/sealedcavitiesassignment.md" x="750.0" y="470.0" width="157.0" height="43.0" >}}
  {{< svglink relref="../../classes/multicavitysealspecification.md" x="204.0" y="365.0" width="161.0" height="43.0" >}}
  {{< svglink relref="../../classes/multicavityplugspecification.md" x="736.0" y="365.0" width="162.0" height="43.0" >}}
  {{< svglink relref="../../classes/cavity.md" x="463.0" y="449.0" width="195.0" height="79.0" >}}
  {{< svglink relref="../../classes/sealinggeometry.md" x="169.0" y="78.0" width="209.0" height="118.0" >}}
  {{< svglink relref="../../classes/cavitypartspecification.md" x="435.0" y="85.0" width="227.0" height="103.0" >}}
  {{< svglink relref="../../classes/cavitysealspecification.md" x="169.0" y="218.0" width="247.0" height="67.0" >}}
  {{< svglink relref="../../classes/cavityaccessoryspecification.md" x="15.0" y="288.0" width="247.0" height="67.0" >}}
  {{< svglink relref="../../classes/cavityspecification.md" x="428.0" y="218.0" width="283.0" height="139.0" >}}
  {{< svglink relref="../../classes/partorusagerelatedspecification.md" x="169.0" y="15.0" width="757.0" height="55.0" >}}
{{< / svgfigure >}}
<p> The diagram displays the <i>PartOrUsageRelatedSpecifications</i> for Cavity seals and plugs. Both are used to seal <i>Cavities</i>. A cavity plug is used for a single cavity that has no wire in it, a cavity seal is used to seal a single cavity together with a terminal and a wire.     </p>      <p> For both are special types existent that do not seal a single cavity, but a couple of cavities at the same time. The <i>MultiCavitySeal</i> and the <i>MultiCavityPlug</i>. For more details see the description of the corresponding classes.      </p>