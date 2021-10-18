---
title: Item History
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
  - HistoryEntryType
  - ItemHistoryEntry
  - ItemVersion
menu:
  VEC-1.2.1:    
    parent: pdm-information
    identifier: pdm-information/item-history
    weight: 1003003 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1003003
---
{{< svgfigure src="item-history.png" width="407" height="286" caption="Item History" numbered="true" >}}
  {{< svglink relref="../../classes/historyentrytype.md" x="281.0" y="189.0" width="112.0" height="82.0" >}}
  {{< svglink relref="../../classes/itemhistoryentry.md" x="29.0" y="196.0" width="191.0" height="70.0" >}}
  {{< svglink relref="../../classes/itemversion.md" x="15.0" y="14.0" width="217.0" height="91.0" >}}
{{< / svgfigure >}}
<p> In a development process items (parts or documents)&#160;are often refined incrementally, so one <i>ItemVersion </i>originates from another. The class <i>ItemHistoryEntry</i> enables the description of predecessor / successor relationships between <i>ItemVersions</i>. The description of both linear and branching relationships is possible. The relationship can be classified in order to distinguish between two cases:      </p>      <ol>       <li> The successor <i>ItemVersion</i> is an instance of the same item (<i>type = &quot;Sequence&quot;</i>)        </li>       <li> The successor <i>ItemVersion</i> is an instance of a new but somehow similar item (<i>type = &quot;derivation&quot;</i>).        </li>     </ol>