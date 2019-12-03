---
title: "Connectors"
#linktitle: Link in Sidemenu
type: specs
# Table of Content on the right side. Only useful for large pages.
toc: false
authors: [becker]
tags: ["Connector", "Cap", "Modular", "Connection Points"]
categories: []
date: 2019-03-11
lastmod: 2019-12-02T12:46:37+01:00
draft: false

menu:
  vec-guidelines:
    # Toplevel element. For sub sections the identifier of the subsection
    weight: 6000

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 6000
---
## Modular Connector 
### Component Description
{{< figure src="modular_connector.jpg" title="Document Meta Information" numbered="true" lightbox="true">}}

This tutorial illustrates the definition / description of modular connectors. A modular connector is a connector that can be recursively assembled, so that certain fields can fitted with different other parts.

In the displayed example the *PartVersion* "4711" is a modular connector. The *ConnectorHousingSpecification* defines a regular *Slot* "A" with a number of cavities and a *ModularSlot* "B". This *ModularSlot* is compatible to two different inserts (defined by individual *ConnectorHousingSpecifications*). The two *PartVersion* "4712" & "4713" define these allow inserts.

The referencing for the *allowedInserts* is established to a *PartVersion* and not to *ConnectorHousingSpecification* to support the distribution of part master data in individual files.

### Instancing 
{{< figure src="modular_connector_instancing.jpg" title="Document Meta Information" numbered="true" lightbox="true">}}

The diagram shows the instantiation of modular connector (previous example). On the left hand side of the diagram the component description of the modular connector is shown (similar to the previous example). On the right hand side the instancing of such a modular connector is shown.

Both parts of the modular connector (the housing and the insert) have their own *PartOccurrence*. The *ModularSlotReference* defines which inserts are actually used in the specific context and references their *ConnectorHousingRoles* to name the concrete housing instance directly.

**Note:** As a wiring harness is often described in a 150% scope, it is possible that a *ModularSlotReference* references more than one *ConnectorHousingRole* as *usedInserts*. In these cases the variant management mechanisms have to ensure, that in a concrete case only one insert is used. This can be either done explicitly with *PartStructureSpecifications* or implicitly with a *VariantConfiguration*.

## Segment Connection Points 
{{< figure src="connector_with_multiple_segment_connection_points.jpg" title="Document Meta Information" numbered="true" lightbox="true">}}

The picture above shows an example of connector with multiple segment connection points (sometimes also called bundle postion / connection points). The segment connection points are marked with red circles. Such connectors have multiple entry points for wires, that can be used alternatively or at the simultaniously. The geometric position of the segment connection points is different, that they have to be treated individually, so each segment connection point is accessed via an individual *TopologySegment* 
### Model Descrpition 
{{< figure src="instancing.jpg" title="Document Meta Information" numbered="true" lightbox="true">}}

The example shows a connector that has two cavity, that are only reachable through different segment connection points. By associating these *SegmentConnectionPoints* with corresponding *PlacementPoints* the *SegmentConnectionPoint* become 'placeable' on nodes in the topology of a harness.
## Wire Addons 
### Cavities 
{{< figure src="addons_for_cavities.jpg" title="Document Meta Information" numbered="true" lightbox="true">}}

This example shows how add-ons for cavities in a connector could be defined. In this example, the *ConnectorHousingSpecification* has two different *SegmentConnectionPoints.* Each of them is defining it's own *CavityAddOn.* So depending on the *SegmentConnectionPoint* used, a *Cavity* can have for example 50mm as well as 150mm as Add-On.

### Modular Slots 
{{< figure src="addons_for_modular_slots.jpg" title="Document Meta Information" numbered="true" lightbox="true">}}

If a *ConnectorHousingSpecification* has *ModularSlots*, the Add-ons are not defined individually for all cavities for all possible inserts, but **only per *ModularSlot*. The Add-On defined in the *ModularSlotAddOn*, is the Add-On need to reach the *ModularSlot* from the corresponding *SegmentConnectionPoint*. The add-on needed to reach a certain cavity in an used insert, can be obtain from *ConnectorHousingSpecification* of the used insert.

### ConnectorHousingCap 
{{< figure src="simple_connectorhousingcap_wireaddon.jpg" title="Document Meta Information" numbered="true" lightbox="true">}}

Wire add-ons caused by cap's are defined in the*ConnectorHousingCapSpecification*. The specified value is the add-on required to reach the *SegmentConnectionPoint* of the ConnectorHousing from the entry point of the cap.