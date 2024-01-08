---
title: Composite Part Descriptions
toc: false
type: specs
layout:  package
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType:  Package
menu:
  VEC-2.1.0:    
    identifier: composite-part-descriptions
    weight: 1008 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1008
---
<p> The KBL defined a fixed hierarchy for composite parts, where different concepts covered specific aspects. These concepts were all represented in the model individually: <i>Harness</i>, <i>Module, HarnessConfiguration, Assembly.</i> From a structural point of view, all of them where quite the same, a composition of components (parts), the only real difference is the handling in process. However, the point of view might change the handling in the process.      </p>      <p> For example, a module is assembled of components like connector housings, wires and terminals or pre-assembled parts (assembly) that are again assembled of connector housings, wires and terminals. From an abstract point of view a part regarded as a module by one process partner could be regarded as an assembly by another process partner and vice versa.      </p>      <p> The VEC&#160;harmonizes these different concepts into one general concept for all these aspects. The following sections are describing this concept.      </p>