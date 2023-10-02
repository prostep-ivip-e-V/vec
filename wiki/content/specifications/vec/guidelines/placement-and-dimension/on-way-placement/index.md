---
title: "On Way Placements"
#linktitle: Link in Sidemenu
type: specs
# Table of Content on the right side. Only useful for large pages.
toc: true
authors: [becker]
tags: ["Placement", "Dimension", "Fixing", "Wireprotection","Location"]
categories: []
date: 2019-03-11
lastmod: 2019-12-02T12:45:40+01:00
draft: false

menu:
  vec-guidelines:
    # Toplevel element. For sub sections the identifier of the subsection
    parent: placement-and-dimension
    weight: 18002

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 18002
---
A Placement defines the way how a component is associated to the topology. The following sections contain examples about the placement of components on segments 'on way' (not onto a single spot).

## Simple WireProtection 
{{< figure src="simple_wireprotection_illustration.jpg" title="Illustration of Simple Wire Protection" numbered="true" lightbox="true">}}

This diagram illustrates the placement of a simple *WireProtection* as shown in next diagram.

{{< figure src="simple_wireprotection.jpg" title="Wire Protection Example" numbered="true" lightbox="true">}}

The Figure above displays the placement of a simple wire protection. The {{< vec-class PartOccurrence >}} is placed with an {{< vec-class OnWayPlacement >}} via a {{< vec-class PlaceableElementRole >}}. This means the placed component covers a linear area of the harness topology. The start and the end of this area is defined with two {{< vec-class Location >}}s. In the shown situation the *StartLocation* is a {{< vec-class SegmentLocation >}}, which means the start is somewhere in the middle of a {{< vec-class TopologySegment >}}. It is defined to be at 120mm measured from the *EndNode* of the {{< vec-class TopologySegment >}}. The *EndLocation* of the WireProtection is located on a {{< vec-class TopologyNode >}} with a {{< vec-class NodeLocation >}}. It is not valid to define {{< vec-class Location >}}s with {{< vec-class SegmentLocation >}}, which could be also expressed by {{< vec-class NodeLocation >}}s. This means for {{< vec-class SegmentLocation >}}s an offset of 0 or equal to the segment length is illegal.

Since the offset is {{< vec-class NumericalValue>}} it can have an optional {{< vec-class Tolerance>}}.

## Large Area WireProtections 
{{< figure src="large_area_wireprotections.jpg" title="Large Area WireProtections " numbered="true" lightbox="true">}}

In some cases it is necessary to place a wire protection over a greater area of the topology, consisting of more than one TopologySegment (e.g. Tubes with a fixed length). For these cases the {{< vec-class OnWayPlacement >}} defines two locations for the start and the end and a path along which the wire protection is placed. The path is an ordered list of the segments from the start to the end. If a {{< vec-class SegmentLocation >}} is used for the start or the end the path must contain these segments as well.

For each {{< vec-class TopologySegment >}} the use of Start- and End-Node has no semantik relevance. The names are just used to make it possible to identify the corresponding {{< vec-class TopologyNode >}}s correctly e.g. when defining the anchor for a {{< vec-class SegmentLocation >}}.