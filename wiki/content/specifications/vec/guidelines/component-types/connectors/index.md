---
title: "Connectors"
#linktitle: Link in Sidemenu
type: specs
# Table of Content on the right side. Only useful for large pages.
toc: true
authors: [becker]
tags: ["Connector", "Cap", "Modular", "Connection Points"]
categories: []
date: 2018-11-29
lastmod: 2019-12-02T12:46:37+01:00
draft: false
review: true

history:
  - date: 2025-06-13T00:00:00Z
    description: "Improved cavity mapping for modular connectors."
    ghIssue: "957"


classes:
  - ConnectorHousingSpecification
  - Slot
  - Cavity
  - AbstractSlot
  - ModularSlot
  - Mapping
  - SlotMapping
  - CavityMapping

menu:
  vec-guidelines:
    parent: component-types
    # Toplevel element. For sub sections the identifier of the subsection
    weight: 6000

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 6000
---
## Modular Connector 
{{< gh-review "957" >}}
A modular connector is a type of electrical connector designed to support flexible, configurable assembly using interchangeable subcomponents, typically called contact modules or inserts. Instead of having a fixed internal structure, a modular connector provides modular slots into which different contact modules can be inserted, depending on the application's electrical or mechanical requirements. 

This approach allows for highly adaptable connector designs that can accommodate different pole counts, signal types, or layout constraints—all while reusing standard housing and interface components. Modular connectors can also serve as a means to break down large wiring harnesses into smaller, automatable subassemblies, enabling more efficient and scalable manufacturing processes.

{{< figure src="modular-connector-illustration.svg" title="Modular Connector (Illustration)" numbered="true" lightbox="true">}}

The figure above illustrates an example connector used in this implementation guideline. The collector housing `4711` has a regular slot `A` with a single cavity `1`. It has two inserts (also referred to as contact carrier or contact module) `4712` & `4713` have one or two cavities respectively. On the right hand side, you can find a possible mating connector for the assembly variant using `4713`.

### Component Description

{{< figure src="modular-connector.svg" title="Modular Connector" numbered="true" lightbox="true">}}

The object diagram above shows the component master data definition of the example. Each element (`4711`, `4712` & `4713`) is primarily defined by a {{<vec-class ConnectorHousingSpecification>}}. The collector housing `4711` defines the two inserts as valid accessory with a {{<vec-class PartRelation>}}. This is done with generic part relation modelling (see [Accessories]({{<relref "../accessories/">}})). The semantic of the illustrated example is, that you have to choose between `4712` or `4713` to achieve a valid assembly configuration of `4711`. 

As explained in the corresponding implementation guideline, the {{<vec-class PartRelation>}} represents a position in the accessory parts list of the collector housing. By referencing this position from the {{<vec-class ModularSlot >}} as `allowedInserts`, the elements referenced by the {{<vec-class PartRelation>}} are identified as such.

{{% callout note %}}
All relations between the collector housing and the inserts are only based on {{<vec-class PartVersion >}} links and _ID matching_. This supports the distribution of part master data with one VEC file per component. 
{{% /callout %}}

{{% callout note %}}
The next paragraphs apply to VEC 2.2 and later. 
{{% /callout %}}

In addition to that, the {{<vec-class ModularSlot >}} can define a {{<vec-class CavityLayout >}} for each valid assembly variant to define an indidivdual {{<vec-class Cavity >}} numbering for inserts when used in this {{<vec-class ModularSlot >}}. On the left hand side, a {{<vec-class MappingSpecification >}} is used to create link between the insert `4713` and the {{<vec-class CavityLayout >}} `2` (the mapping of `4712` is omitted in the diagram). 

The {{<vec-class CavityLayout >}} and the virtual {{<vec-class Cavity >}}s in it could be also used to create a {{<vec-class Mapping >}} with a mating connector (not shown in the diagram).

### Instancing 
{{< figure src="modular-connector-instancing.svg" title="Instanciating Modular Connectors" numbered="true" lightbox="true">}}

The diagram shows the instantiation of modular connector (previous example). On the left hand side of the diagram the component description of the modular connector is shown (similar to the previous example). On the right hand side the instancing of such a modular connector is shown.

Both parts of the modular connector (the housing and the insert) have their own {{< vec-class PartOccurrence >}}. The {{< vec-class ModularSlotReference >}} defines which inserts are actually used in the specific context and references their {{< vec-class ConnectorHousingRole >}}s to name the concrete housing instance directly.

**Note:** As a wiring harness is often described in a 150% scope, it is possible that a {{< vec-class ModularSlotReference >}} references more than one {{< vec-class ConnectorHousingRole >}} as *usedInserts*. In these cases the variant management mechanisms have to ensure, that in a concrete case only one insert is used. This can be either done explicitly with {{< vec-class PartStructureSpecification >}}s or implicitly with a {{< vec-class VariantConfiguration >}}.

## Segment Connection Points 
{{< figure src="connector_with_multiple_segment_connection_points.jpg" title="Example of Multiple Segment Connection Pints" numbered="true" lightbox="true">}}

The picture above shows an example of connector with multiple segment connection points (sometimes also called bundle postion / connection points). The segment connection points are marked with red circles. Such connectors have multiple entry points for wires, that can be used alternatively or at the simultaniously. The geometric position of the segment connection points is different, that they have to be treated individually, so each segment connection point is accessed via an individual {{< vec-class SegmentConnectionPoint >}} 

{{< figure src="instancing.jpg" title="Instanciating Segment Connection Points" numbered="true" lightbox="true">}}

The example shows a connector that has two cavity, that are only reachable through different segment connection points. By associating these {{< vec-class SegmentConnectionPoint >}}s with corresponding {{< vec-class PlacementPoint >}}s the *SegmentConnectionPoint* become 'placeable' on nodes in the topology of a harness.
## Wire Addons 
### Cavities 
{{< figure src="addons_for_cavities.jpg" title="Cavity Add-Ons" numbered="true" lightbox="true">}}

This example shows how add-ons for cavities in a connector could be defined. In this example, the {{< vec-class ConnectorHousingSpecification >}} has two different {{< vec-class SegmentConnectionPoint >}}s. Each of them is defining it's own {{< vec-class CavityAddOn >}}. So depending on the {{< vec-class SegmentConnectionPoint >}} used, a {{< vec-class Cavity >}} can have for example 50mm as well as 150mm as Add-On.

### Modular Slots 
{{< figure src="addons_for_modular_slots.jpg" title="Add-Ons for Modular Slots" numbered="true" lightbox="true">}}

If a {{< vec-class ConnectorHousingSpecification >}} has {{< vec-class ModularSlot >}}s, the Add-ons are not defined individually for all cavities for all possible inserts, but only per {{< vec-class ModularSlot >}}. The Add-On defined in the {{< vec-class ModularSlotAddOn >}}, is the Add-On need to reach the {{< vec-class ModularSlot >}} from the corresponding {{< vec-class SegmentConnectionPoint >}}. The add-on needed to reach a certain cavity in an used insert, can be obtain from {{< vec-class ConnectorHousingSpecification >}} of the used insert.

### ConnectorHousingCap 
{{< figure src="simple_connectorhousingcap_wireaddon.jpg" title="Wire Add-Ons for the Usage of Caps" numbered="true" lightbox="true">}}

Wire add-ons caused by cap's are defined in the {{< vec-class ConnectorHousingCapSpecification >}}. The specified value is the add-on required to reach the {{< vec-class SegmentConnectionPoint >}} of the ConnectorHousing from the entry point of the cap.