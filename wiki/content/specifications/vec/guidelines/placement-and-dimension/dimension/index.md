---
title: "Dimensions"
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
    weight: 18003

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 18003
---

## Default Dimensions 
{{< figure src="default_dimensions.jpg" title="efault Dimensions " numbered="true" lightbox="true">}}

The diagram illustrates the use of a {{< vec-class DefaultDimensionSpecification >}}. The {{< vec-class DefaultDimensionSpecification >}} can be used to specify default dimensions / tolerances for certain attributes and {{< vec-class ValueRange >}}s. In this examples the *Specification* is used for the length of wires. (indicated by the *dimensionType)*. The *dimensionValueRange* defines for which value's of this type, the referenced {{< vec-class Tolerance >}} is applicable.

In this example for a wire length lower than 250 mm a {{< vec-class Tolerance >}} of +5 mm is allowed, for values between 250 mm and 500 mm a *Tolerance* of +10 mm is allowed and for everything above 500 mm a *Tolerance* of 15 mm is allowed. 

<br/>

## Fixings with Dimension 
{{< figure src="fixing_placement_illustration.jpg" title="Illustration of Fixing Placements" numbered="true" lightbox="true">}}

This diagram illustrates a more complex placement situation, including the usage of dimension.

The illustration shows a bracket, that is placed independently on two Segments (SEG-1 & SEG-2). The two points where the bracket is placed on the {{< vec-class TopologySegment >}}s are identified separately ({{< vec-class PlacementPointReference >}} A & B). Additionally a {{< vec-class Dimension >}} is added, which gives a {{< vec-class Tolerance >}} between a geometric point (e.g. a bolt) on the bracket ({{< vec-class MeasurementPointReference >}} C) and a *Node* (ND-1) in the Topology (see {{< vec-class TopologyNode >}}).

{{< figure src="fixing_placement.jpg" title="Placement of Fixings" numbered="true" lightbox="true">}}

The diagram illustrates the instantiation of the example in the preceding diagram. Since the {{< vec-class PartOccurrence >}} can be placed in the topology, it has a {{< vec-class PlaceableElementRole >}} (with a corresponding {{< vec-class PlaceableElementSpecification >}} not shown in the diagram). The points where it can be placed onto the topology are represented by the {{< vec-class PlacementPointReference >}}s A & B. The point which can be used as anchor for a dimension (which can be any reference point on the component), is represented by the {{< vec-class MeasurementPointReference >}} C.

The actual placement is done with an {{< vec-class OnPointPlacement >}} which has two {{< vec-class SegmentLocation >}}s. One for each {{< vec-class PlacementPointReference >}}.

<br/>

## WireProtection with Dimension 
{{< figure src="wireprotection_with_dimension_illustration.jpg" title="Illustration of Wire Protections with Dimension" numbered="true" lightbox="true">}}

This diagram shows the previous example extended with a {{< vec-class Dimension >}}. In the previous example, the beginning of the *WireProtection* was defined with a tolerance value. This method is applied, if the tolerance is applied to the next {{< vec-class TopologyNode >}} (Start- or End-Node of the segment).

In many cases, tolerances are defined relative to specific points (e.g. points that can be measured) somewhere in the topology. In these cases a {{< vec-class Dimension >}} is used to defined the tolerance.

{{< figure src="wireprotection_with_dimension.jpg" title="Model of Wire Protections with dimension" numbered="true" lightbox="true">}}

The placement of the *WireProtection* is just the same as in the previous example. It is extended with the {{< vec-class Dimension >}} (highlighted in green). The *Dimension* defines the tolerance of +/- 20mm between the {{< vec-class TopologyNode >}} ND-III and the beginning of the *WireProtection*.

The fact, that the {{< vec-class Dimension >}} is specified between the {{< vec-class TopologyNode >}} and the beginning of the *WireProtection* is expressed, that the *TopologyNode* is referenced directly (with a {{< vec-class NodeLocation >}} contained by the {{< vec-class Dimension >}}). The {{< vec-class SegmentLocation >}} used as {{< vec-class DimensionAnchor >}} is the same as used for the placement of the *WireProtection*.

The *valueCalculated=true* flag of the {{< vec-class Dimension >}} indicates that the *valueComponent* (220mm) is a derived an calculated value and not a user defined value. This value can be obtained from the placement information and the lengths of the {{< vec-class TopologySegment >}}.