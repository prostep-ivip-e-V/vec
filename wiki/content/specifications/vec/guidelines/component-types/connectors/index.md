---
title: "Connectors"
#linktitle: Link in Sidemenu
type: specs
# Table of Content on the right side. Only useful for large pages.
toc: false
authors: [becker]
tags: ["Connector", "Cap", "Modular", "Connection Points"]
categories: []
date: 2018-11-29
lastmod: 2019-12-02T12:46:37+01:00
draft: false

menu:
  vec-guidelines:
    parent: component-types
    # Toplevel element. For sub sections the identifier of the subsection
    weight: 6000

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 6000
---
## Modular Connector 
### Component Description
{{< figure src="modular_connector.jpg" title="Modular Connector" numbered="true" lightbox="true">}}

This tutorial illustrates the definition / description of modular connectors. A modular connector is a connector that can be recursively assembled, so that certain fields can fitted with different other parts.

In the displayed example the {{< vec-class PartVersion >}} "4711" is a modular connector. The {{< vec-class ConnectorHousingSpecification >}} defines a regular {{< vec-class Slot >}} "A" with a number of cavities and a {{< vec-class ModularSlot >}} "B". This *ModularSlot* is compatible to two different inserts (defined by individual {{< vec-class ConnectorHousingSpecification >}}s). The two {{< vec-class PartVersion >}} "4712" & "4713" define these allow inserts.

The referencing for the *allowedInserts* is established to a {{< vec-class PartVersion >}} and not to {{< vec-class ConnectorHousingSpecification >}} to support the distribution of part master data in individual files.

### Instancing 
{{< figure src="modular_connector_instancing.jpg" title="Instanciating Modular Connectors" numbered="true" lightbox="true">}}

The diagram shows the instantiation of modular connector (previous example). On the left hand side of the diagram the component description of the modular connector is shown (similar to the previous example). On the right hand side the instancing of such a modular connector is shown.

Both parts of the modular connector (the housing and the insert) have their own {{< vec-class PartOccurrence >}}. The {{< vec-class ModularSlotReference >}} defines which inserts are actually used in the specific context and references their {{< vec-class ConnectorHousingRole >}}s to name the concrete housing instance directly.

**Note:** As a wiring harness is often described in a 150% scope, it is possible that a {{< vec-class ModularSlotReference >}} references more than one {{< vec-class ConnectorHousingRole >}} as *usedInserts*. In these cases the variant management mechanisms have to ensure, that in a concrete case only one insert is used. This can be either done explicitly with {{< vec-class PartStructureSpecification >}}s or implicitly with a {{< vec-class VariantConfiguration >}}.

## Segment Connection Points 
{{< figure src="connector_with_multiple_segment_connection_points.jpg" title="Example of Multiple Segment Connection Pints" numbered="true" lightbox="true">}}

The picture above shows an example of connector with multiple segment connection points (sometimes also called bundle postion / connection points). The segment connection points are marked with red circles. Such connectors have multiple entry points for wires, that can be used alternatively or at the simultaniously. The geometric position of the segment connection points is different, that they have to be treated individually, so each segment connection point is accessed via an individual {{< vec-class SegmentConnectionPoint >}} 

{{< figure src="instancing.jpg" title="Instanciating Segment Connection Points" numbered="true" lightbox="true">}}

The example shows a connector that has two cavities, that are only reachable through different segment connection points. By associating these {{< vec-class SegmentConnectionPoint >}}s with corresponding {{< vec-class PlacementPoint >}}s the *SegmentConnectionPoint* become 'placeable' on nodes in the topology of a harness.

## Wire Addons 
### Cavities 
{{< figure src="addons_for_cavities.jpg" title="Cavity Add-Ons" numbered="true" lightbox="true">}}

This example shows how add-ons for cavities in a connector could be defined. In this example, the {{< vec-class ConnectorHousingSpecification >}} has two different {{< vec-class SegmentConnectionPoint >}}s. Each of them is defining it's own {{< vec-class CavityAddOn >}}. So depending on the {{< vec-class SegmentConnectionPoint >}} used, a {{< vec-class Cavity >}} can have for example 50mm as well as 150mm as Add-On.

### Modular Slots 
{{< figure src="addons_for_modular_slots.jpg" title="Add-Ons for Modular Slots" numbered="true" lightbox="true">}}

If a {{< vec-class ConnectorHousingSpecification >}} has {{< vec-class ModularSlot >}}s, the Add-ons are not defined individually for all cavities for all possible inserts, but **only per {{< vec-class ModularSlot >}}. The Add-On defined in the {{< vec-class ModularSlotAddOn >}}, is the Add-On need to reach the {{< vec-class ModularSlot >}} from the corresponding {{< vec-class SegmentConnectionPoint >}}. The add-on needed to reach a certain cavity in an used insert, can be obtain from {{< vec-class ConnectorHousingSpecification >}} of the used insert.

### ConnectorHousingCap 
{{< figure src="simple_connectorhousingcap_wireaddon.jpg" title="Wire Add-Ons for the Usage of Caps" numbered="true" lightbox="true">}}

Wire add-ons caused by cap's are defined in the {{< vec-class ConnectorHousingCapSpecification >}}. The specified value is the add-on required to reach the {{< vec-class SegmentConnectionPoint >}} of the ConnectorHousing from the entry point of the cap.