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

Grommets have certain points (the {{< vec-class CableLeadThrough >}}) that are relevant for the placement of a grommet. There are different types of grommets e.g. grommets with a y-shape (1 in, 2 outgoings) or larger ones and that reach through more than one metal plane like the ones for the door hinge (illustration below).

{{< figure src="grommet_door.svg" title="Example: Grommet in the door hinge" numbered="true" lightbox="true" class="float-left">}}

Up to VEC Version 1.1.3 the {{< vec-class CableLeadThrough >}} of a grommet was the significant point for the definition of a placement. However, this turned out to insufficient for a detailed definition, as the spatial extent of a grommet is often non-negligible. Therefore, since VEC 2.0.0 the significant point for a placement is the {{< vec-class CableLeadThroughOutlet >}}s instead. Those can be associated with {{< vec-class PlacementPoint >}} and this is the point where the general concept of placements in the VEC attaches.

