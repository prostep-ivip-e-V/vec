---
title: Item Equivalence
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu:
  vec120:
    identifier: pdm-information/item-equivalence    
    parent: pdm-information
    weight: 1002003 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1002003
---
{{< svgfigure src="item-equivalence.png" width="471" height="327" caption="Item Equivalence" numbered="true" >}}
  {{< svglink relref="../classes/itemequivalence.md" x="303.0" y="248.0" width="137.0" height="55.0" >}}
  {{< svglink relref="../classes/documentversion.md" x="28.0" y="161.0" width="204.0" height="151.0" >}}
  {{< svglink relref="../classes/itemversion.md" x="7.0" y="14.0" width="442.0" height="91.0" >}}
{{< / svgfigure >}}
<html>   <head>     </head>   <body>     <p> The class <i>ItemEquivalence</i> enables the description of equivalence relationships between two or more <i>ItemVersions</i>. The standard use case is to relate <i>ItemVersions </i>defined in the context of one company (numbering system) to <i>ItemVersions </i>defined in the context of another company.     </p>      <p> An extended use case might be that the differences are not only limited to different numbering systems, but even to technical attributes. So the equivalence statement might be very subjective and so the stating <i>companyName</i> has to be specified.      </p>    </body> </html> 
