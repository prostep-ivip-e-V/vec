---
title: "Wires"
#linktitle: Link in Sidemenu
type: specs
# Table of Content on the right side. Only useful for large pages.
toc: false
authors: [becker]
tags: ["Wire", "Single Core", "Multi Core"]
categories: []
date: 2019-03-07
lastmod: 2019-11-29T17:30:52+01:00
draft: false

menu:
  vec-guidelines:
    # Toplevel element. For sub sections the identifier of the subsection
    weight: 5000

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 5000
---
## Single Core Specification

{{< figure src="single_core_specification.jpg" lightbox="true" title="Single Core Specification">}}

The figure above illustrates the specification of a single core wire. The {{< vec-class WireSpecification >}} is the {{< vec-class PartOrUsageRelatedSpecification >}} describing the {{< vec-class PartVersion >}}. In order to make it possible to reuse the specification of the different {{< vec-class WireElement >}}s (see [Multi Core Specification]({{< relref "#multi-core-specification" >}})), the actual definition of the structure of the wire is delegated to a {{< vec-class WireElementSpecification >}}. The {{< vec-class WireElement >}} defines the context specific identification of a {{< vec-class WireElementSpecification >}} in the context of a specific {{< vec-class WireSpecification >}} (mainly needed for multi cores, but due to a consistent modeling approach also necessary for single cores). The {{< vec-class WireElement >}} is used for reference when a {{< vec-class WireSpecification >}} is instantiated (e.g. by a {{< vec-class PartOccurrence >}}).

## Multi Core Illustration

{{< figure src="multi_core_illustration.jpg" lightbox="true" title="Multi Core Illustration">}}

This is an illustration for the multi core example that describes the specification of a multi core wire. The example uses a multi core, which is insulated with a grey insulation, shielded and which contains two FLRY cores of different colouring that are a twisted pair.

## Multi Core Specification

{{< figure src="multi_core_specification.jpg" lightbox="true" title="Multi Core Specification">}}

The Figure displays the instantiation of the multi core wire example in the VEC. The hierarchy of the wire is highlighted in the figure in green. The specification of the brown and green FLRY core (0.35-BRGN) is actually the same as the specification in the single core example (highlighted by the red outline in the figure). It is reused and not defined redundantly. Since it is the same {{< vec-class WireElementSpecification >}} object, the context specific naming of the {{< vec-class WireElement >}} is necessary, as mentioned in single core example (highlighted in yellow).

The only difference between the two WireElements representing the two cores is the coloring of the insulation. Therefore the two {{< vec-class WireElementSpecification >}}s share the same {{< vec-class CoreSpecfication >}}, but have individual {{< vec-class InsulationSpecification >}}s. In the context of the displayed {{< vec-class WireSpecification >}} the Brown & Green Core is addressed with the identification “1”, the second Core is addressed with the identification “2”. The two Cores are grouped together by a third {{< vec-class WireElementSpecification >}} (2x0.35-BRGN-RTBL).

This third {{< vec-class WireElementSpecification >}} defines the type of grouping by a {{< vec-class WireGroupSpecification >}}. In the example the Grouping is the definition of a twist of the two Cores. It also defines the insulation around the two SubWireElements by an {{< vec-class InsulationSpecification >}}. Since the defined wire has a conductive shield as well, the described {{< vec-class WireElementSpecification >}} references a {{< vec-class ShieldSpecification >}}, too. The cross section area in the ShieldSpecification defines the nominal cross section area of the conductive material used in the shield.
