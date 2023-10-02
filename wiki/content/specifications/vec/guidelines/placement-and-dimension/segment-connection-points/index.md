---
title: "Segment Connection Points"
#linktitle: Link in Sidemenu
type: specs
# Table of Content on the right side. Only useful for large pages.
toc: false
authors: [becker, fehlmann]
tags: ["Placement", "Bundle position", "Segment", "Topology"]
categories: []
date: 2019-03-11
lastmod: 2022-11-14T12:45:40+01:00
draft: false

menu:
  vec-guidelines:
    # Toplevel element. For sub sections the identifier of the subsection
    parent: placement-and-dimension
    weight: 18004

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 18004
---
{{< figure src="connector_with_multiple_segment_connection_points.jpg" title="Example of Multiple Segment Connection Pints" numbered="true" lightbox="true">}}

The picture above shows an example of a connector with multiple segment connection points (sometimes also called bundle postion / connection points). The segment connection points are marked with red circles. Such connectors have multiple entry points for wires, that can be used alternatively or at the simultaniously. The geometric position of the segment connection points is different, that they have to be treated individually, so each segment connection point is accessed via an individual {{< vec-class SegmentConnectionPoint >}} 

{{< figure src="instancing.jpg" title="Instanciating Segment Connection Points" numbered="true" lightbox="true">}}

The example shows a connector that has two cavities, that are only reachable through different segment connection points. By associating these {{< vec-class SegmentConnectionPoint >}}s with corresponding {{< vec-class PlacementPoint >}}s the *SegmentConnectionPoint* become 'placeable' on nodes in the topology of a harness.