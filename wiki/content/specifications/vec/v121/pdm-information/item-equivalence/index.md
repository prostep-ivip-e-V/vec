---
title: Item Equivalence
toc: false
type: specs
layout: diagram
date: "2021-10-18"
draft: false
specification: VEC
version: 1.2.1
documentType: "Recommendation"
elementType: Diagram
classes:
  - ItemEquivalence
  - DocumentVersion
  - ItemVersion
menu:
  VEC-1.2.1:    
    parent: pdm-information
    identifier: pdm-information/item-equivalence
    weight: 1003004 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1003004
---
{{< svgfigure src="item-equivalence.png" width="471" height="327" caption="Item Equivalence" numbered="true" >}}
  {{< svglink relref="../../classes/itemequivalence.md" x="303.0" y="248.0" width="137.0" height="55.0" >}}
  {{< svglink relref="../../classes/documentversion.md" x="28.0" y="161.0" width="204.0" height="151.0" >}}
  {{< svglink relref="../../classes/itemversion.md" x="7.0" y="14.0" width="442.0" height="91.0" >}}
{{< / svgfigure >}}
<p> The class <i>ItemEquivalence</i> enables the description of equivalence relationships between two or more <i>ItemVersions</i>. The standard use case is to relate <i>ItemVersions </i>defined in the context of one company (numbering system) to <i>ItemVersions </i>defined in the context of another company.      </p>      <p> An extended use case might be that the differences are not only limited to different numbering systems, but even to technical attributes. As the equivalence statement might be very subjective the corresponding <i>companyName</i> must be specified.      </p>