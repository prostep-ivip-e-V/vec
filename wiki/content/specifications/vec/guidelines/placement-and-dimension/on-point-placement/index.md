---
title: "On Point Placements"
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
    weight: 18001

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 18001
---
A Placement defines the way how a component is associated to the topology. The following sections contain examples about the placement of components 'on point'.

## Fixed Components (Single Location) 
{{< figure src="fixed_components_single_location.jpg" title="Placement of Fixed Components on a Single Location" numbered="true" lightbox="true">}}

Fixed components are elements that are placed on a certain point in the topology, such as Connectors, Fixings and so on. These components are placed with an {{< vec-class OnPointPlacement >}} as shown in the example. If the Component has to be placed on a Node (e.g. a Connector) a {{< vec-class NodeLocation >}} is used. If the Component has to be placed on a Segment a {{< vec-class SegmentLocation >}} is used. The usage and constraints for the Locations are the same like the ones for {{< vec-class OnWayPlacement >}}s.


## Fixed Components (Multiple Locations) 
{{< figure src="fixed_components_multiple_locations.jpg" title="Placement of Fixed Components on Multiple Locations" numbered="true" lightbox="true">}}

Some components, for example channels or a large connector with more than one segment connection point, may be placed on multiple positions in the Topology. For example a channel can have two or more reference points (e.g. the outlets) that must be associated to the different positions topology. In these cases an {{< vec-class OnPointPlacement >}} with more than one location is used. In order to identify which location places which point of the component (e.g. the outlets), a {{< vec-class PlaceableElementRole >}} can define {{< vec-class PlacementPointReference >}}s which are creating a relationship to the component description.

