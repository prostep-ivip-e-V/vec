---
title: Instances of undefined Components
toc: false
type: specs
layout: diagram
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Diagram
classes:
  - Role
  - SpecificRole
  - PartOrUsageRelatedSpecification
menu:
  VEC-1.1.1:    
    parent: instances-of-components
    identifier: instances-of-components/instances-of-undefined-components
    weight: 1004010 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1004010
---
{{< svgfigure src="instances-of-undefined-components.png" width="507" height="210" caption="Instances of undefined Components" numbered="true" >}}
  {{< svglink relref="../../classes/role.md" x="337.0" y="15.0" width="138.0" height="55.0" >}}
  {{< svglink relref="../../classes/specificrole.md" x="344.0" y="134.0" width="149.0" height="55.0" >}}
  {{< svglink relref="../../classes/partorusagerelatedspecification.md" x="15.0" y="141.0" width="202.0" height="55.0" >}}
{{< / svgfigure >}}
In some cases it is necessary to specify and to use a component which is not defined in detail by the VEC. The recommended approach in such a case is to use a <i>PartOrUsageRelatedSpecification</i> with <i>CustomProperties</i> to specify such a component. When this component must be instanced, a <i>SpecificRole</i> has to be used.