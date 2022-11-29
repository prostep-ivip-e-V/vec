---
title: "Grommets"
#linktitle: Link in Sidemenu
type: specs
# Table of Content on the right side. Only useful for large pages.
toc: false
authors: [becker, fehlmann]
tags: []
categories: []
date: 2019-03-11
lastmod: 2022-11-29T12:45:07+01:00
draft: false
review: true
classes:
  - CableLeadThrough
  - CableLeadThroughOutlet
  - GrommetSpecification

history:
  - date: 2022-11-30
    description: "Direction-Aware Placement of Grommets"
    issue: "KBLFRM-854"
  - date: 2022-11-30
    description: "Update regarding segment connection points"
    issue: "KBLFRM-1139"

menu:
  vec-guidelines:
    parent: component-types
    # Toplevel element. For sub sections the identifier of the subsection
    #parent: Example Topic
    weight: 8000

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 8000
---
{{< figure src="grommets_with_placement.jpg" title="Grommets And Their Placement" numbered="true" lightbox="true">}}

<br/><br/>
Grommets have certain points (the {{< vec-class CableLeadThrough >}}) that are relevant for the placement of a grommet. But there are differnet types of grommets e.g. grommets with a y-shape (1 in, 2 outgoings) or those which are larger and reaches throug more than one metal plane like the ones for the door hinge (illustration below).<br/><br/>

{{< figure src="grommet_door.svg" title="Example: Grommet in the door hinge" numbered="true" lightbox="true" class="float-left">}}

So it is not sufficient to use the lead trough itself for placing the grommet in the topology. The VEC allows to place a {{< vec-class CableLeadThrough >}} by its {{< vec-class CableLeadThroughOutlet >}}s instead. The ability to place them on specific points in the topology is covered by the generic mechanism of {{< vec-class PlacementPoint >}} & {{< vec-class PlacementPointReference >}}.

