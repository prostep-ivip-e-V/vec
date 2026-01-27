---
title: "Placements and Dimensions"
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
review: true

classes:
  - Location
  - SegmentLocation
  - NodeLocation
  - OnWayPlacement
  - OnPointPlacement
  - Placement
  - PlacementPointReference
  - MeasurementPointReference
  - PlavceableElementRole
  - PlaceableElementSpecification
  - DefaultDimensionSpecification
  - Dimension
  - DefaultDimension

history:
  - date: 2025-12-22T00:00:00Z
    description: "Clarified semantic difference between SegmentLocation and NodeLocation."
    ghIusse: "953"

menu:
  vec-guidelines:
    # Toplevel element. For sub sections the identifier of the subsection
    parent: Topology
    weight: 100

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 18001
---
A Placement defines the way how a component is associated to the topology. The following sections contain examples about the different types of placements.

## Semantic Difference: `SegmentLocation` vs. `NodeLocation`

{{< gh-review "935">}}

The VEC has two different concepts to define locations in the topology: {{< vec-class SegmentLocation >}} and {{< vec-class NodeLocation >}}. On the first glance it seems that there is a semantic overlap between these two concepts, since a {{< vec-class TopologySegment >}} starts and ends at a {{< vec-class TopologyNode >}}, so where is the difference between a {{< vec-class SegmentLocation >}} with an offset of 0mm (or a value equal to the segment length) and a {{< vec-class NodeLocation >}} at the corresponding {{< vec-class TopologyNode >}}? The figure below illustrates the scenario:

{{< figure src="locations.svg" title="Node vs. Segment Location" numbered="true" lightbox="true">}}

A {{< vec-class SegmentLocation >}} is used to define a location somewhere "on" a {{< vec-class TopologySegment >}}, even if it is at the very beginning or end of the segment. This means that the location has a clear reference to a specific single segment. This is especially important, if mulitple segments are connected to the same node (e.g. a branching point). In this case a {{< vec-class SegmentLocation >}} with an offset of 0mm or segment length clearly defines on which segment the location is placed. In contrast a {{< vec-class NodeLocation >}} always refers to the {{< vec-class TopologyNode >}} itself, without any reference (or preference) to a specific segment. This means that a {{< vec-class NodeLocation >}} is used, if the location is really "at" the node, independent of the connected segments.

{{% callout info %}}
Use {{< vec-class SegmentLocation >}}s for component whe the placement has a clear association to specific {{< vec-class TopologySegment >}}, even if the location is (infinitesimal) close to a {{< vec-class TopologyNode >}}. Use {{< vec-class NodeLocation >}}s for components which are really placed "at" a {{< vec-class TopologyNode >}}, independent of the connected segments.
{{% /callout %}}

## Placement on Areas (Wire Protection)
One common use case when placing components in the topology is the covering of specific area of the wiring harness with that component, either for protection or cohesion (e.g. a tubing, spiral wrap, or tape). The following sections illustrate how such placements can be modelled in the VEC, both without and with dimensions.

### Basic Wire Protection

{{< figure src="basic-wire-protection-illustration.svg" title="Illustration of a basic wire protection" numbered="true" lightbox="true">}}

This diagram illustrates the placement of a basic wire protection as shown in next diagram.
Please note that the depiction of the {{< vec-class TopologyNode >}}s is for visualization purposes only. In the logical topology model of the VEC, they do not have any spatial extent. For this reason, both the dimensions and the {{< vec-class SegmentLocation >}} are shown at the center of the node (i.e. at the end of the {{< vec-class TopologySegment >}}).

{{< figure src="basic-wire-protection.svg" title="Wire Protection Example" numbered="true" lightbox="true">}}

The figure above illustrates the placement of a basic wire protection. The {{< vec-class PartOccurrence >}} is placed using an {{< vec-class OnWayPlacement >}} via a {{< vec-class PlaceableElementRole >}}, meaning that the component covers a linear section of the harness topology. The start and end of this protected area are defined by two {{< vec-class Location >}}s.

Since a wire protection is, from a semantic point of view, inherently associated with a {{< vec-class TopologySegment >}}, it is typically placed using {{< vec-class SegmentLocation >}}s rather than a {{< vec-class NodeLocation >}}. This becomes particularly relevant at {{< vec-class TopologyNode >}}s where multiple segments meet: a NodeLocation would not clearly express which segment the protection refers to (see also the section “Semantic Difference: SegmentLocation vs. NodeLocation”).

In the shown example, the `EndLocation` is a {{< vec-class SegmentLocation >}} located on a {{< vec-class TopologySegment >}} at an offset of 120 mm measured from the `StartNode`. The `StartLocation` is also defined by a SegmentLocation at the opposite end of the same segment.

It is important to note that the choice of the `Anchor` in a SegmentLocation carries a distinct semantic meaning. For instance, the start location in the diagram can be expressed either by `Offset = 0` with `Anchor = "FromEndNode"` or equivalently by `Offset = SegmentLength = 120 mm` with `Anchor = "FromStartNode"`. While both variants yield the same geometric position in the current state of the product, their engineering semantics differ significantly.

In the representation used in the figure, the two locations refer to different reference nodes (one to the start node, the other to the end node). This decouples the definition of the protected area from the absolute segment length and ensures that the complete segment (minus the defined offsets) is always covered, even if the segment length changes. If, in contrast, both locations were defined relative to the same reference node (e.g. both with `Anchor = "FromStartNode"`), the protected region would be spatially fixed and would not adapt to changes in the segment length.

{{% callout info %}}
Note, that despite having a `StartLocation` and an `EndLocation` in the {{< vec-class OnWayPlacement >}}, the placement does not imply any directionality of the placed component along the topology. The two roles of start and end are solely used to identify the locations unambigiously. It could have been named differently as well (e.g. LocationA and LocationB), without changing the semantics of the placement. For component types where direction matters (e.g. windings, tapings), additional attributes or relationships within the corresponding roles are used to define the orientation of the component along the topology (see for example the attribute `TapingDirection` in the class {{< vec-class TapeRole >}}).
{{% /callout %}}

### Wire Protection with Dimension 

{{< figure src="wire-protection-with-dimension-illustration.svg" title="Illustration of a wire protection with dimensions" numbered="true" lightbox="true">}}

The illustration above extends the previous example by adding a {{< vec-class Dimension >}}. In the earlier example, the `EndLocation` of the wire protection was defined using a tolerance value. This approach can be applied if the tolerance is specified with respect to the adjacent {{< vec-class TopologyNode >}} (i.e. the `StartNode` or `EndNode` of the {{< vec-class TopologySegment >}}).

In most cases, however, the purpose of dimensions is to define measurable quality characteristics. To make them verifiable, they must refer to points that are physically perceptible and measurable on the actual product. In the illustration above, this is not the case for the topology node ND-2, since it is not recognizable in the end product (all wires pass through and no component is located there). In contrast, ND-3 is physically identifiable, as a branching occurs in the harness at this point. The green dimension therefore specifies that the valid distance from this branching point to the start of the wire protection shall be 220 mm with a tolerance of ±20 mm.


{{< figure src="wire-protection-with-dimension.svg" title="Model of a wire protection with dimensions defined" numbered="true" lightbox="true">}}

The placement of the *WireProtection* is identical to that in the previous example and is now extended by a {{< vec-class Dimension >}} (highlighted in green). This *Dimension* specifies a tolerance of ±20 mm between the {{< vec-class TopologyNode >}} ND-III and the beginning of the *WireProtection*. The tolerance is explicitly defined in this dimension in order to avoid tolerance accumulation in dimension chains.

The fact that the {{< vec-class Dimension >}} is defined between the {{< vec-class TopologyNode >}} and the start of the *WireProtection* is expressed by directly referencing the {{<vec-class TopologyNode>}} via a contained {{< vec-class NodeLocation >}}. The {{< vec-class SegmentLocation >}} used as the {{< vec-class DimensionAnchor >}} is identical to the one used for the placement of the *WireProtection*, thereby ensuring a consistent geometric and semantic reference.

The flag `ValueCalculated = true` of the {{< vec-class Dimension >}} indicates that the `ValueComponent` (220 mm) is a derived and calculated value rather than a user-defined one. It can be obtained from the placement information in combination with the lengths of the corresponding {{< vec-class TopologySegment >}}s.

### Wire Protection covering multiple Topology Segments

In some cases it is necessary to place a wire protection over a greater area of the topology, consisting of more than one TopologySegment (e.g. Tubes with a fixed length). This is illustrated in the following example:

{{< figure src="multi-segment-wire-protection-illustration.svg" title="Illustration of a basic wire protection" numbered="true" lightbox="true">}}

In the VEC such a wire protection is modelled with a {{< vec-class OnWayPlacement >}}. The `StartLocation` and `EndLocation` are defined similar to the previous examples. The difference is that a {{< vec-class Path >}} is defined for the way inbetween the locations, that can cover multiple {{< vec-class TopologySegment >}}s. This is illustrated in the next diagram:

{{< figure src="multi-segment-wire-protection.svg" title="multi-segment wire protections " numbered="true" lightbox="true">}}

The {{<vec-class Path>}} is an ordered list of the segments from the start to the end. If a {{< vec-class SegmentLocation >}} is used for the start and/or the end, the path must contain these {{< vec-class TopologySegment >}}s as well.


## Placement on Points (Fixed Components)

The other common use case when placing components in the topology is the placement of fixed components on specific points in the topology, such as connectors, fixings, and so on. The following sections illustrate how such placements can be modelled in the VEC, both without and with dimensions.

### Fixing Placement 
{{< figure src="fixing_placement_illustration.jpg" title="Illustration of Fixing Placements" numbered="true" lightbox="true">}}

This diagram illustrates a more complex placement situation, including the usage of dimension.

The illustration shows a bracket, that is placed independently on two Segments (SEG-1 & SEG-2). The two points where the bracket is placed on the {{< vec-class TopologySegment >}}s are identified separately ({{< vec-class PlacementPointReference >}} A & B). Additionally a {{< vec-class Dimension >}} is added, which gives a {{< vec-class Tolerance >}} between a geometric point (e.g. a bolt) on the bracket ({{< vec-class MeasurementPointReference >}} C) and a *Node* (ND-1) in the Topology (see {{< vec-class TopologyNode >}}).

{{< figure src="fixing_placement.jpg" title="Placement of Fixings" numbered="true" lightbox="true">}}

The diagram illustrates the instantiation of the example in the preceding diagram. Since the {{< vec-class PartOccurrence >}} can be placed in the topology, it has a {{< vec-class PlaceableElementRole >}} (with a corresponding {{< vec-class PlaceableElementSpecification >}} not shown in the diagram). The points where it can be placed onto the topology are represented by the {{< vec-class PlacementPointReference >}}s A & B. The point which can be used as anchor for a dimension (which can be any reference point on the component), is represented by the {{< vec-class MeasurementPointReference >}} C.

The actual placement is done with an {{< vec-class OnPointPlacement >}} which has two {{< vec-class SegmentLocation >}}s. One for each {{< vec-class PlacementPointReference >}}.

### Fixed Components (Single Location) 
{{< figure src="fixed_components_single_location.jpg" title="Placement of Fixed Components on a Single Location" numbered="true" lightbox="true">}}

Fixed components are elements that are placed on a certain point in the topology, such as Connectors, Fixings and so on. These components are placed with an {{< vec-class OnPointPlacement >}} as shown in the example. If the Component has to be placed on a Node (e.g. a Connector) a {{< vec-class NodeLocation >}} is used. If the Component has to be placed on a Segment a {{< vec-class SegmentLocation >}} is used. The usage and constraints for the Locations are the same like the ones for {{< vec-class OnWayPlacement >}}s.

### Fixed Components (Multiple Locations) 
{{< figure src="fixed_components_multiple_locations.jpg" title="Placement of Fixed Components on Multiple Locations" numbered="true" lightbox="true">}}

Some components, for example channels or a large connector with more than one segment connection point, may be placed on multiple positions in the Topology. For example a channel can have two or more reference points (e.g. the outlets) that must be associated to the different positions topology. In these cases an {{< vec-class OnPointPlacement >}} with more than one location is used. In order to identify which location places which point of the component (e.g. the outlets), a {{< vec-class PlaceableElementRole >}} can define {{< vec-class PlacementPointReference >}}s which are creating a relationship to the component description.

## Default Dimensions 
{{< figure src="default_dimensions.jpg" title="efault Dimensions " numbered="true" lightbox="true">}}

The diagram illustrates the use of a {{< vec-class DefaultDimensionSpecification >}}. The {{< vec-class DefaultDimensionSpecification >}} can be used to specify default dimensions / tolerances for certain attributes and {{< vec-class ValueRange >}}s. In this examples the *Specification* is used for the length of wires. (indicated by the *dimensionType)*. The *dimensionValueRange* defines for which value's of this type, the referenced {{< vec-class Tolerance >}} is applicable.

In this example for a wire length lower than 250 mm a {{< vec-class Tolerance >}} of +5 mm is allowed, for values between 250 mm and 500 mm a *Tolerance* of +10 mm is allowed and for everything above 500 mm a *Tolerance* of 15 mm is allowed. 
