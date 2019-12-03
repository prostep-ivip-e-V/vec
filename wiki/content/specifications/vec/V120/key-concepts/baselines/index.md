---
title: Baselines
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu:
  vec120:
    identifier: key-concepts/baselines    
    parent: key-concepts
    weight: 1001002 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1001002
---
{{< svgfigure src="baselines.png" width="555" height="372" caption="Baselines" numbered="true" >}}
  {{< svglink relref="../classes/baselinecontent.md" x="386.0" y="57.0" width="105.0" height="82.0" >}}
  {{< svglink relref="../classes/baselinestate.md" x="386.0" y="148.0" width="105.0" height="82.0" >}}
  {{< svglink relref="../classes/baselinespecification.md" x="148.0" y="120.0" width="164.0" height="67.0" >}}
  {{< svglink relref="../classes/specification.md" x="127.0" y="15.0" width="217.0" height="67.0" >}}
  {{< svglink relref="../classes/itemversion.md" x="15.0" y="267.0" width="526.0" height="91.0" >}}
{{< / svgfigure >}}
<html>   <head>     </head>   <body>     <p> A <i>BaselineSpecification</i> defines a set of <i>ItemVersion</i>s (<i>Document-</i> and <i>PartVersions</i>) that relate to each other in a certain way e.g. all parts and documents in their specific versions that contributed to a specific manufactured result.      </p>      <p> Baselines are a standard mechanism to support change, release and configuration management and are often used throughout the whole product life cycle.In the VEC, baselines themselves are <i>Specifications</i> and thus content of a <i>DocumentVersion</i>, which is equivalent to the fact that they are versioned information themselves.      </p>      <p> In a product development for wiring harnesses, the content of a baseline is created over a period of time (e.g. system schematics are created before the definition of the harness). During this time period items are created and added to the baseline (based on other items from the baseline). Additionally, items in the baseline can be changed, following the rules of the respective development process. Such a baseline has the <i>BaselineState.Draft.</i> At well defined point in time, the content of baseline is checked and released. After this, the baseline can not be changed without creating a new version of the baseline itself. Such a baseline has the <i>BaselineState.Frozen.</i>      </p>      <p> Baselines are normally defined for a certain scope (e.g. a specific vehicle, a specific product). During the product development it is possible, that a baseline is created that is not yet complete (and never will be). A reason for this might, that not all development artifacts are already defined in this phase of the development process. Nevertheless, all artifacts are required for the final product. Such <i>BaselineSpecifications </i>have a <i>Partial content. </i>An example might be, that in an early phase of vehicle development not all wiring harness are already specified.      </p>      <p> &#160;      </p>  </body> </html>
