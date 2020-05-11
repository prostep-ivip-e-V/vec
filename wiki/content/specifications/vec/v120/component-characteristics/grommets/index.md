---
title: Grommets
toc: false
type: specs
layout: diagram
date: "2020-05-11"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Diagram
classes:
  - CavityPlugSpecification
  - CableLeadThrough
  - CableLeadThroughType
  - CableLeadThroughGeometry
  - GrommetSpecification
  - SealingGeometry
  - Specification
  - CavitySealSpecification
  - CavityPartSpecification
  - CableLeadThroughSpecification
  - PartOrUsageRelatedSpecification
menu:
  VEC-1.2.0:    
    parent: component-characteristics
    identifier: component-characteristics/grommets
    weight: 1005010 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1005010
---
{{< svgfigure src="grommets.png" width="975" height="761" caption="Grommets" numbered="true" >}}
  {{< svglink relref="../../classes/cavityplugspecification.md" x="631.0" y="505.0" width="135.0" height="43.0" >}}
  {{< svglink relref="../../classes/cableleadthrough.md" x="148.0" y="519.0" width="138.0" height="55.0" >}}
  {{< svglink relref="../../classes/cableleadthroughtype.md" x="533.0" y="617.0" width="154.0" height="130.0" >}}
  {{< svglink relref="../../classes/cableleadthroughgeometry.md" x="351.0" y="617.0" width="168.0" height="94.0" >}}
  {{< svglink relref="../../classes/grommetspecification.md" x="134.0" y="344.0" width="187.0" height="91.0" >}}
  {{< svglink relref="../../classes/sealinggeometry.md" x="750.0" y="358.0" width="209.0" height="118.0" >}}
  {{< svglink relref="../../classes/specification.md" x="15.0" y="15.0" width="217.0" height="67.0" >}}
  {{< svglink relref="../../classes/cavitysealspecification.md" x="358.0" y="505.0" width="247.0" height="79.0" >}}
  {{< svglink relref="../../classes/cavitypartspecification.md" x="477.0" y="358.0" width="253.0" height="103.0" >}}
  {{< svglink relref="../../classes/cableleadthroughspecification.md" x="36.0" y="610.0" width="283.0" height="115.0" >}}
  {{< svglink relref="../../classes/partorusagerelatedspecification.md" x="134.0" y="176.0" width="827.0" height="57.0" >}}
{{< / svgfigure >}}
<p> This diagram displays the relevant classes for grommets. Basically, grommets belong to the same category of parts like fixings and cable ducts. Grommets are mounted onto a harness topology and are used to guide cables safely, and in some cases sealed, through openings, for example in the car body.      </p>      <p> There are cases, where additional sealing of a cable lead through is not done with some kind of manufacturing steps (e.g. Foamed), but with additional sealing components. These are common case e.g. in high voltage applications where one lead through per wire is used. Those are often sealed with an additional single wire seal. In the VEC those seals are represented by a <i>CavitySeal</i>- or <i>CavityPlugSpecification</i>. Even if the name &quot;Cavity...&quot; seems awkward in the combination with grommets &amp;&#160;cable lead throughs, the properties remain the same.      </p>      <p> The <i>CableLeadThroughSpecification</i> includes all attributes that are necessary to calculate appropriate seals.      </p>