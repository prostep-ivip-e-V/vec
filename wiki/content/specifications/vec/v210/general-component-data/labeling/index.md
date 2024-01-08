---
title: Labeling
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
  - LabelingTechnology
  - LabelType
  - PartOrUsageRelatedSpecification
  - LabelingSpecification
menu:
  VEC-2.1.0:    
    parent: general-component-data
    identifier: general-component-data/labeling
    weight: 1004008 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1004008
---
{{< svgfigure src="labeling.png" width="553" height="292" caption="Labeling" numbered="true" >}}
  {{< svglink relref="../../classes/labelingtechnology.md" x="330.0" y="148.0" width="209.0" height="130.0" >}}
  {{< svglink relref="../../classes/labeltype.md" x="330.0" y="15.0" width="209.0" height="106.0" >}}
  {{< svglink relref="../../classes/partorusagerelatedspecification.md" x="22.0" y="36.0" width="253.0" height="57.0" >}}
  {{< svglink relref="../../classes/labelingspecification.md" x="15.0" y="148.0" width="278.0" height="91.0" >}}
{{< / svgfigure >}}
A component (of any type) can be labeled in many ways either during the manufacturing process, for example a label that is imprinted on the component during the general manufacturing process&#160;(e.g. the part number), or in its concrete use (e.g. with wire number or a usage node id). The <i>LabelingSpecification</i> defines general labeling properties of the component. Labeling properties in its concrete use are defined with the correspoding role.