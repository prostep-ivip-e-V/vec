---
title: Grommets
toc: false
type: specs
layout: diagram
date: "2021-11-30"
draft: false
specification: VEC
version: 2.0.0-rc1
documentType: "Recommendation"
elementType: Diagram
classes:
  - CavityPlugSpecification
  - CableLeadThrough
  - CableLeadThroughType
  - CableLeadThroughGeometry
  - SealingGeometry
  - GrommetType
  - GrommetMountingType
  - CableLeadThroughOutlet
  - Specification
  - GrommetSpecification
  - CavitySealSpecification
  - CavityPartSpecification
  - CableLeadThroughSpecification
  - PartOrUsageRelatedSpecification
menu:
  VEC-2.0.0-rc1:    
    parent: component-characteristics
    identifier: component-characteristics/grommets
    weight: 1005014 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1005014
---
{{< svgfigure src="grommets.png" width="1169" height="754" caption="Grommets" numbered="true" >}}
  {{< svglink relref="../../classes/cavityplugspecification.md" x="826.0" y="498.0" width="135.0" height="43.0" >}}
  {{< svglink relref="../../classes/cableleadthrough.md" x="266.0" y="463.0" width="138.0" height="55.0" >}}
  {{< svglink relref="../../classes/cableleadthroughtype.md" x="728.0" y="610.0" width="154.0" height="130.0" >}}
  {{< svglink relref="../../classes/cableleadthroughgeometry.md" x="546.0" y="610.0" width="168.0" height="94.0" >}}
  {{< svglink relref="../../classes/sealinggeometry.md" x="945.0" y="351.0" width="209.0" height="118.0" >}}
  {{< svglink relref="../../classes/grommettype.md" x="420.0" y="281.0" width="209.0" height="94.0" >}}
  {{< svglink relref="../../classes/grommetmountingtype.md" x="420.0" y="386.0" width="209.0" height="106.0" >}}
  {{< svglink relref="../../classes/cableleadthroughoutlet.md" x="308.0" y="631.0" width="209.0" height="55.0" >}}
  {{< svglink relref="../../classes/specification.md" x="91.0" y="15.0" width="217.0" height="67.0" >}}
  {{< svglink relref="../../classes/grommetspecification.md" x="182.0" y="309.0" width="227.0" height="103.0" >}}
  {{< svglink relref="../../classes/cavitysealspecification.md" x="553.0" y="498.0" width="247.0" height="79.0" >}}
  {{< svglink relref="../../classes/cavitypartspecification.md" x="672.0" y="351.0" width="253.0" height="103.0" >}}
  {{< svglink relref="../../classes/cableleadthroughspecification.md" x="14.0" y="568.0" width="283.0" height="115.0" >}}
  {{< svglink relref="../../classes/partorusagerelatedspecification.md" x="210.0" y="176.0" width="827.0" height="57.0" >}}
{{< / svgfigure >}}
<p> This diagram displays the relevant classes for grommets. Basically, grommets belong to the same category of parts like fixings and cable ducts. Grommets are mounted onto a harness topology and are used to guide cables safely, and in some cases sealed, through openings, for example in the car body.      </p>      <p> There are cases, where additional sealing of a cable lead through is not done with some kind of manufacturing steps (e.g. Foamed), but with additional sealing components. These are common case e.g. in high voltage applications where one lead through per wire is used. Those are often sealed with an additional single wire seal. In the VEC those seals are represented by a <i>CavitySeal</i>- or <i>CavityPlugSpecification</i>. Even if the name &quot;Cavity...&quot; seems awkward in the combination with grommets &amp;&#160;cable lead throughs, the properties remain the same.      </p>      <p> The <i>CableLeadThroughSpecification</i> includes all attributes that are necessary to calculate appropriate seals.      </p>