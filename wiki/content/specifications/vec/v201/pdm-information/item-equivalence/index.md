---
title: Item Equivalence
toc: false
type: specs
layout: diagram
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Diagram
classes:
  - ItemEquivalence
  - DocumentVersion
  - ItemVersion
menu:
  VEC-2.0.1:    
    parent: pdm-information
    identifier: pdm-information/item-equivalence
    weight: 1003004 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1003004
---
{{< svgfigure src="item-equivalence.png" width="509" height="327" caption="Item Equivalence" numbered="true" >}}
  {{< svglink relref="../../classes/itemequivalence.md" x="350.0" y="245.0" width="137.0" height="55.0" >}}
  {{< svglink relref="../../classes/documentversion.md" x="28.0" y="161.0" width="204.0" height="151.0" >}}
  {{< svglink relref="../../classes/itemversion.md" x="7.0" y="14.0" width="442.0" height="91.0" >}}
{{< / svgfigure >}}
<p> <i>ItemVersions </i>(<i>DocumentVersions</i> and <i>PartVersions</i>) are company specific keys / identifiers for a part (component) or a piece of information. However, this also means that the same part, or piece of information, can have different identifiers depending on the context. The keys refer semantically to the same element or in other words, they are equivalent. The class <i>ItemEquivalence</i> enables the description of such equivalence relationships between two or more <i>ItemVersions</i>. A standard use case is to relate <i>PartVersions</i><i> </i>defined in the context of different companies for part number translation (e.g. OEM&#160;part number&#160;-&gt;&#160;Tier 1 part number -&gt; component supplier part number).      </p>      <p> <i><u>Note:</u> </i>That <i>equivalent ItemVersions </i>refer to the semantically same element does not mean, that the information associated with the <i>ItemVersions</i> has to be identical. For example, the same component might have different approved operating conditions depending on the company scope, which results in differing technical attributes.       </p>      <p> &#160;      </p>