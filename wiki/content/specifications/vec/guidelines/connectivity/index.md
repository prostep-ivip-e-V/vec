---
title: "Connectivity"
#linktitle: Link in Sidemenu
type: specs
# Table of Content on the right side. Only useful for large pages.
toc: true
authors: [becker]
tags: ["Terminal", "Splice", "Contacting", "Cavity", "Coax"]
categories: []
date: 	2019-03-07
lastmod: 2019-12-02T12:43:28+01:00
draft: false

menu:
  vec-guidelines:
    # Toplevel element. For sub sections the identifier of the subsection
    weight: 19000

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 19000
---
## Contacting Specification

The contacting in the VEC defines the relationship between Cavities({{< vec-class CavityReference >}}), {{< vec-class WireEnd >}}s, Terminals and Seals. Since there are various types of contactings possible, the different types are not defined explicitly in the VEC. The VEC offers a quite generic structure (the Contacting), which should be able to support all the different possible types. This is necessary, because the different contacting types are driven by technical requirements and new contactings might emerge over the time. The downside of the generic structure is that the structural schema allows constellations that are not sensible from a technical point of view as well. The following sections show the different contacting types used today, and how they have to be implemented in the VEC.

Since the contacting can be used for different levels of abstraction (Product Definiton or Electrological Wiring) only the “Role-Side” of the necessary objects is shown. Necessary {{< vec-class PartOrUsageRelatedSpecification >}}s, {{< vec-class PartOccurrence >}}s, {{< vec-class PartUsage >}}s and {{< vec-class PartVersion >}} are omitted.

### Standard Contact

{{< figure src="standard_contact.jpg" title="Standard Contact" numbered="true" lightbox="true">}}

A standard Contacting is the most common case in a wiring harness. For a standard contact you have one wire end that has one terminal crimped on it, which is placed in one cavity. It exists in two variants, sealed and unsealed. The example displays the sealed variant, for the unsealed variant the {{< vec-class CavitySealRole >}} and the {{< vec-class CavityPlugRole >}} have to be omitted.

The contacting is defined by a {{< vec-class ContactPoint >}}, contained in a {{< vec-class ContactingSpecification >}}. It is possible (and recommended) to define multiple {{< vec-class ContactPoint >}}s in one ContactingSpecification. Usally there exists one ContactingSpecification per {{< vec-class DocumentVersion >}} in the scope. So for example if the VEC-File represents a 150%-Harness definition, then you will have on {{< vec-class ContactingSpecification >}} for the complete harness.

A {{< vec-class ContactPoint >}} is defined as a point of exactly one electrical potential, which means all conducting components related to the {{< vec-class ContactPoint >}} are short-circuited.

The {{< vec-class ContactPoint >}} defines the terminal that is used for the contacting. It is then split up into two parts, the side of the crimp of the terminal (represented by the {{< vec-class WireMounting >}}) and the side of the terminal, which is placed in the cavity (represented by the {{< vec-class CavityMounting>}}). Since the example is about a sealed standard contact, the {{< vec-class WireMounting >}} displayed references exactly one {{< vec-class CavitySealRole >}} and one {{< vec-class WireEnd >}}, which means these two components are crimped together onto the terminal. On the other side the {{< vec-class CavityMounting>}} defines the Cavity in which the terminal will be placed. For a sealed environment it is necessary, that the Cavity is plugged with a CavityPlug, in case the Cavity is not occupied by a contacting. If the Cavity is occupied, the {{< vec-class CavityMounting>}} defines explicitly, which {{< vec-class CavityPlugRole >}}s are replaced by its existence.

### Multi Crimp Contact

{{< figure src="multi_crimp_contact.jpg" title="Multi Crimp Contact" numbered="true" lightbox="true">}}

A Multicrimp is quite similar to the standard contact, with the difference that there is more than one wire crimped onto the terminal. Therefore the displayed example is quite the same. The differences are:

  * There is no {{< vec-class CavityPlugRole >}} or {{< vec-class CavitySealRole >}}, since it is not usefull / possible from a technical point of view to seal a multicrimp.
  * There are two (or more) {{< vec-class WireEnd >}}s associated with the {{< vec-class WireMounting >}}.

For clarification of the example the two {{< vec-class WireElementReference >}}s reference their Signal. It is the same, since the two {{< vec-class WireEnd >}}s are crimped onto one Terminal and therefore they are set to one single electrical potential. This is only displayed in the example in order to make it clear, what is meant by “A {{< vec-class ContactPoint >}} has one single electrical potential”. This is not a restriction of the VEC, since the development processes might need (or create) different signal names for the same electrical potential.

### Ringterminal - Splice

{{< figure src="ringterminal_-_splice.jpg" title="Ringterminal and Splice" numbered="true" lightbox="true">}}

The structure displayed in the example applies to ring terminals and splices as well. On the side of the wire it is the same as a multi crimp. The difference is that no cavity mounting is used, since a ring terminal / splice has no cavities.

### Bridge Terminal

{{< figure src="bridge_terminal.jpg" title="Bridge Terminal" numbered="true" lightbox="true">}}

A bridge terminal is a terminal that has a wire crimped on it and which occupies more than one cavity (short-circuited). On the side of the wire it is the same as a standard contact. On the side of the cavities it simply references more than one cavity.

### Coax Contact

{{< figure src="coax_contact.jpg" title="Coax Contact" numbered="true" lightbox="true">}}

The diagram displays the proper definition of a coax contacting. In the case of coax contact one single terminal is used, but two different electrical potentials are connected to it. Therefore two ConcactPoints are required, because one {{< vec-class ContactPoint >}} can only be used for one electrical potential (see the definition of a ConcactPoint).

Both {{< vec-class ContactPoint >}}s reference the same occurrence of the terminal ({{< vec-class TerminalRole >}}) and use the {{< vec-class Cavity >}}. Each ConcatPoint mounts a single {{< vec-class WireElement >}} to the {{< vec-class TerminalRole >}}. In this example the two {{< vec-class WireElement >}}s belong to the same multi-core wire.

In order to make the example more clearly, the next figure displays the definition of such a “coax-cavity” in an EEComponent.

### Coax Cavity

{{< figure src="coax_cavity.jpg" title="Coax Cavity" numbered="true" lightbox="true">}}

The {{< vec-class HousingComponent>}} of an EEComponent defines on one hand the pins (electrological relevant information) in this {{< vec-class HousingComponent>}} and on the other hand a {{< vec-class ConnectorHousingSpecification>}} (the layout and design of the {{< vec-class HousingComponent>}}). The {{< vec-class PinComponent>}}s are then positioned in the cavities. In the case of a coax contact, two {{< vec-class PinComponent>}}s (the different electrical potentials) are placed in one cavity.

The {{< vec-class HousingComponent>}} of an EEComponent defines on one hand the pins (electrological relevant information) in this {{< vec-class HousingComponent>}} and on the other hand a ConnectorHousingSpecification (the layout and design of the {{< vec-class HousingComponent>}}). The {{< vec-class PinComponent>}}s are then positioned in the cavities. In the case of a coax contact, two {{< vec-class PinComponent>}}s (the different electrical potentials) are placed in one cavity.

## Mating Point

{{< figure src="mating_specification.jpg" title="Mating Specification" numbered="true" lightbox="true">}}

The contacting defines in the VEC the relation of a terminal, a wire, a seal and a cavity in a connector on the harness side. The coupling / mating can be used to connect the harness side to another harness (in the case of an inliner) or to an ECU. The figure above shows a simplified example of the connection between an ECU (highlighted in orange) and a wiring connection (highlighted in blue). The {{< vec-class MatingPoint >}} simply connects the two {{< vec-class TerminalRole >}}s on each side. This method is used for example in a wiring definition, where the concrete connector is not yet known.

For this reason this example omits the geometric aspects of a coupling (connector housing, slots, cavities).

