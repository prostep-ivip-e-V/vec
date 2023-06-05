---
title: Instances of Labels
toc: false
type: specs
layout: diagram
date: "2023-03-24"
draft: false
specification: VEC
version: 2.0.2
documentType: "Recommendation"
elementType: Diagram
classes:
  - Role
  - LabelingRole
  - LabelingSpecification
menu:
  VEC-2.0.2:    
    parent: instances-of-components
    identifier: instances-of-components/instances-of-labels
    weight: 1007014 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1007014
---
{{< svgfigure src="instances-of-labels.png" width="694" height="246" caption="Instances of Labels" numbered="true" >}}
  {{< svglink relref="../../classes/role.md" x="442.0" y="15.0" width="202.0" height="55.0" >}}
  {{< svglink relref="../../classes/labelingrole.md" x="442.0" y="148.0" width="238.0" height="79.0" >}}
  {{< svglink relref="../../classes/labelingspecification.md" x="15.0" y="141.0" width="278.0" height="91.0" >}}
{{< / svgfigure >}}
If a component is labeled in its concrete usage, label informations are defined with the <i>LabelingRole.</i>