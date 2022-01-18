---
title: Multi Fuse
toc: false
type: specs
layout: diagram
date: "2022-01-18"
draft: false
specification: VEC
version: 1.2.2
documentType: "Recommendation"
elementType: Diagram
classes:
  - FuseSpecification
  - MultiFuseSpecification
  - FuseComponent
  - PinComponent
  - HousingComponent
  - EEComponentSpecification
menu:
  VEC-1.2.2:    
    parent: ee-components
    identifier: ee-components/multi-fuse
    weight: 1006003 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1006003
---
{{< svgfigure src="multi-fuse.png" width="912" height="360" caption="Multi Fuse" numbered="true" >}}
  {{< svglink relref="../../classes/fusespecification.md" x="750.0" y="267.0" width="147.0" height="67.0" >}}
  {{< svglink relref="../../classes/multifusespecification.md" x="372.0" y="141.0" width="209.0" height="67.0" >}}
  {{< svglink relref="../../classes/fusecomponent.md" x="372.0" y="274.0" width="209.0" height="55.0" >}}
  {{< svglink relref="../../classes/pincomponent.md" x="15.0" y="267.0" width="234.0" height="79.0" >}}
  {{< svglink relref="../../classes/housingcomponent.md" x="22.0" y="141.0" width="246.0" height="79.0" >}}
  {{< svglink relref="../../classes/eecomponentspecification.md" x="22.0" y="15.0" width="876.0" height="55.0" >}}
{{< / svgfigure >}}
A multi-fuse is a metal structure that <span lang="EN-US">combines several fuses with a common power feed in a fixed layout. It is used to distribute a power supply to different fuse paths.</span>