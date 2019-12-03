---
title: "Grommets"
#linktitle: Link in Sidemenu
type: specs
# Table of Content on the right side. Only useful for large pages.
toc: false
authors: [becker]
tags: []
categories: []
date: 2019-03-11
lastmod: 2019-12-02T12:45:07+01:00
draft: false

menu:
  vec-guidelines:
    # Toplevel element. For sub sections the identifier of the subsection
    #parent: Example Topic
    weight: 8000

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 8000
---
{{< figure src="grommets_with_placement.jpg" title="Grommets And Their Placement" numbered="true" lightbox="true">}}

Grommets have certain points (the {{< vec-class CableLeadThrough >}}) that are relevant for the placement of a grommet. Since currently the {{< vec-class CableLeadThrough >}} only specifies relevant information on the component side and not on the instance side, there is no corresponding subelement of the {{< vec-class GrommetRole >}}. The ability to place a {{< vec-class CableLeadThrough >}} on a specific point in the topology is covered by the generic mechanism of {{< vec-class PlacementPoint >}} & {{< vec-class PlacementPointReference >}}.
