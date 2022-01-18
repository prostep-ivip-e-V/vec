---
title: Baselines
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
  - BaselineContent
  - BaselineState
  - BaselineSpecification
  - Specification
  - ItemVersion
menu:
  VEC-1.2.2:    
    parent: pdm-information
    identifier: pdm-information/baselines
    weight: 1003002 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1003002
---
{{< svgfigure src="baselines.png" width="555" height="372" caption="Baselines" numbered="true" >}}
  {{< svglink relref="../../classes/baselinecontent.md" x="386.0" y="57.0" width="105.0" height="82.0" >}}
  {{< svglink relref="../../classes/baselinestate.md" x="386.0" y="148.0" width="105.0" height="82.0" >}}
  {{< svglink relref="../../classes/baselinespecification.md" x="148.0" y="120.0" width="164.0" height="67.0" >}}
  {{< svglink relref="../../classes/specification.md" x="127.0" y="15.0" width="217.0" height="67.0" >}}
  {{< svglink relref="../../classes/itemversion.md" x="15.0" y="267.0" width="526.0" height="91.0" >}}
{{< / svgfigure >}}
<p> A <i>BaselineSpecification</i> defines a set of <i>ItemVersion</i>s (<i>Document-</i> and <i>PartVersions</i>) that relate to each other in a certain way e.g. all parts and documents in their specific versions that contributed to a specific manufactured result.      </p>      <p> Baselines are a standard mechanism to support change, release and configuration management and are often used throughout the whole product life cycle. In the VEC, baselines themselves are <i>Specifications</i> and thus content of a <i>DocumentVersion</i>, which is equivalent to the fact that they are versioned information themselves.      </p>      <p> In a product development for wiring harnesses, the content of a baseline is growing over a period (e.g. system schematics are created before the definition of the physical wiring harness). In this process, items are created and added to the baseline (based on other items from the baseline). Additionally, items in the baseline can be changed, following the rules of the respective development process. Such a baseline has the <i>BaselineState.Draft.</i> At a well-defined point in time, the content of baseline is checked and released. After this, the baseline cannot be changed without creating a new version of the baseline itself. Such a baseline has the <i>BaselineState.Frozen.</i>      </p>      <p> Baselines are normally defined for a certain scope (e.g. a specific vehicle, a specific product). During the product development it is possible, that a baseline is incomplete. A reason for this might be, that not all development artefacts (e.g. wiring harnesses) are defined in this phase of the development process even though all artefacts are required for the final product. Such <i>BaselineSpecifications </i>have a <i>Partial content.</i>      </p>      <p> &#160;      </p>