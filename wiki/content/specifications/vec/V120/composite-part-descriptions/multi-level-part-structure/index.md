---
title: Multi-level Part Structure
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu:
  vec120:
    identifier: composite-part-descriptions/multi-level-part-structure    
    parent: composite-part-descriptions
    weight: 1007001 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1007001
---
{{< svgfigure src="multi-level-part-structure.png" width="944" height="768" caption="Multi-level Part Structure" numbered="true" >}}
{{< / svgfigure >}}
<html>   <head>     </head>   <body>     <p> The basic idea is the same as for <i>Multi-level bill of materials (BOM)</i>, where a product is defined in a parent-child, top-down method. It lists all raw materials, semi-finished goods and sub-assemblies that are required to build the product in a hierarchical way. A component in such bill of material can consist of child components, which in-turn can have their own child components, and so on.      </p>      <p> However, regular bill of materials just define quantities of parts required (e.g. 4x P1, 1x P2, ...). Since the VEC not only describes the quantities of materials required to build a product, but also the way how the materials should interact (e.g. a specific terminal on a wire end in a defined cavity), the VEC&#160;requires an extended approach.      </p>      <p> The diagram above illustrates an example for this and will be explained from bottom to top. P1 and P2 are basic components (parts with a part number). P1 could be a wire, P2 a terminal. To define some sort of composite component, the occurrences A,B and C are necessary (VEC class <i>OccurrenceOrUsage</i>). Those are required to specify the details of the composition with relationships among the occurrences and usage specific properties (e.g. wire length and contacting relationships). A composite component&#160;P3 is defined as consisting of occurrences A, B, and C.      </p>      <p> The composite component P3 is used together with P4 to build P5. Again, occurences are required. However, a single occurrence E for the composite part P3 is not sufficient, to specify the detailed composition of P5. Individual occurrences A',B' and C' of the sub-components of E are required for this. For example, to correctly specify the usage of a pre-assembled cable in a harness (a wire with connectors already attached to it), references to the sub-components are necessary (e.g. routing of the wire, position of connectors).      </p>      <p> The <i>PartStructureSpecification </i>is used to define composite components based on occurrences (e.g. P3), the <i>PartWithSubComponentsRole</i> is used for the instancing of such composite parts (e.g. E: P3). For details see the next diagram.      </p>      <p> &#160;      </p>  </body> </html>
