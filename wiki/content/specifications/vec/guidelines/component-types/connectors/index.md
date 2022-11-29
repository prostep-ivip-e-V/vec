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

## Wire-Addons

{{% callout note %}}
* To define wire add-ons, specified {{< vec-class SegmentConnectionPoint >}}s in the part master definition are required. How it is done can be found in [this implementation guideline]({{< ref "../../topology/segment-connection-points" >}}).
* The definition of wire add-ons for cavities and modular slots is a general mechanism in the VEC and can be found in [this implementation guideline]({{< ref "../../topology/wire-addons" >}})
{{% /callout %}}

### ConnectorHousingCap 
{{< figure src="simple_connectorhousingcap_wireaddon.jpg" title="Wire Add-Ons for the Usage of Caps" numbered="true" lightbox="true">}}

Wire add-ons caused by cap's are not defined by a segment connection point. In this case the definition is done in the {{< vec-class ConnectorHousingCapSpecification >}}. The specified value is the add-on required to reach the {{< vec-class SegmentConnectionPoint >}} of the ConnectorHousing from the entry point of the cap. So in the example above the total add-on to the length of the wire which contacted the given cavity has to be 250mm.