---
title: Cavity Seals and Cavity Plugs
toc: false
type: specs
layout: diagram
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
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
  - CavityGeometry
  - CavityAccessorySpecification
  - CavitySealSpecification
  - CavityPartSpecification
  - CavitySpecification
  - PartOrUsageRelatedSpecification
menu:
  VEC-2.1.0:    
    parent: component-characteristics
    identifier: component-characteristics/cavity-seals-and-cavity-plugs
    weight: 1005012 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1005012
---
{{< svgfigure src="cavity-seals-and-cavity-plugs.png" width="1052" height="542" caption="Cavity Seals and Cavity Plugs" numbered="true" >}}
  {{< svglink relref="../../classes/cavityplugspecification.md" x="848.0" y="218.0" width="135.0" height="43.0" >}}
  {{< svglink relref="../../classes/opencavitiesassignment.md" x="316.0" y="463.0" width="149.0" height="43.0" >}}
  {{< svglink relref="../../classes/sealedcavitiesassignment.md" x="862.0" y="470.0" width="157.0" height="43.0" >}}
  {{< svglink relref="../../classes/multicavitysealspecification.md" x="316.0" y="365.0" width="161.0" height="43.0" >}}
  {{< svglink relref="../../classes/multicavityplugspecification.md" x="848.0" y="365.0" width="162.0" height="43.0" >}}
  {{< svglink relref="../../classes/cavity.md" x="575.0" y="449.0" width="195.0" height="79.0" >}}
  {{< svglink relref="../../classes/sealinggeometry.md" x="281.0" y="78.0" width="209.0" height="118.0" >}}
  {{< svglink relref="../../classes/cavitygeometry.md" x="43.0" y="78.0" width="209.0" height="106.0" >}}
  {{< svglink relref="../../classes/cavityaccessoryspecification.md" x="15.0" y="218.0" width="247.0" height="67.0" >}}
  {{< svglink relref="../../classes/cavitysealspecification.md" x="281.0" y="218.0" width="247.0" height="79.0" >}}
  {{< svglink relref="../../classes/cavitypartspecification.md" x="547.0" y="85.0" width="253.0" height="103.0" >}}
  {{< svglink relref="../../classes/cavityspecification.md" x="540.0" y="218.0" width="283.0" height="163.0" >}}
  {{< svglink relref="../../classes/partorusagerelatedspecification.md" x="281.0" y="15.0" width="757.0" height="55.0" >}}
{{< / svgfigure >}}
<p> The diagram displays the <i>PartOrUsageRelatedSpecifications</i> for Cavity seals and plugs. Both are used to seal <i>Cavities</i>. A cavity plug is used for a single cavity that has no wire in it, a cavity seal is used to seal a single cavity together with a terminal and a wire (single wire seal).      </p>      <p> The <i>MultiCavitySeal</i> and the <i>MultiCavityPlug represent parts </i>which are sealing more than one cavity at the same time (multi wire seal). For more details see the description of the corresponding classes.      </p>