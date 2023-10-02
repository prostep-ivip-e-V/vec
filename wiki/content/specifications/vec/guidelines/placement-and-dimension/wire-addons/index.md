---
title: "Wire AddOns"
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
    weight: 18002

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 18002
---
{{% callout note %}} 
Before reading this section, it is recommended to read [this implementation guideline]({{< ref "../../placement-and-dimension/segment-connection-points" >}}) regarding segment connection points. 
{{% /callout %}}

### Cavities 
{{< figure src="addons_for_cavities.jpg" title="Cavity Add-Ons" numbered="true" lightbox="true">}}

This example shows how add-ons for cavities in a connector or ee component could be defined. In this example, the {{< vec-class ConnectorHousingSpecification >}} has two different {{< vec-class SegmentConnectionPoint >}}s. Each of them is defining it's own {{< vec-class CavityAddOn >}}. So depending on the {{< vec-class SegmentConnectionPoint >}} used, a {{< vec-class Cavity >}} can have for example 50mm as well as 150mm as Add-On.

### Modular Slots 
{{< figure src="addons_for_modular_slots.jpg" title="Add-Ons for Modular Slots" numbered="true" lightbox="true">}}

If a {{< vec-class ConnectorHousingSpecification >}} has {{< vec-class ModularSlot >}}s, the Add-ons are not defined individually for all cavities for all possible inserts, but **only** per {{< vec-class ModularSlot >}}. The Add-On defined in the {{< vec-class ModularSlotAddOn >}}, is the Add-On need to reach the {{< vec-class ModularSlot >}} from the corresponding {{< vec-class SegmentConnectionPoint >}}. The add-on needed to reach a certain cavity in an used insert, can be obtain from {{< vec-class ConnectorHousingSpecification >}} of the used insert.