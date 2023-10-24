---
title: "Wiring"
#linktitle: Link in Sidemenu
type: specs
# Table of Content on the right side. Only useful for large pages.
toc: true
authors: [becker, fehlmann]
tags: ["Terminal", "Splice", "Contacting", "Cavity", "Coax"]
categories: []
date: 	2019-03-07
lastmod: 2021-11-24T12:43:28+01:00
draft: false
toc: true

history:
  - date: 2023-06-23
    description: "Move coupling to the section 'product definition'"
    issue: "KBLFRM-609"
  - date: 2022-01-31
    description: "Add description for traceability to System Schematic Connections for directly mated E/E Components"
    issue: "KBLFRM-896"
  - date: 2021-11-24
    description: "Move contacting to the electrological layer wiring"
    issue: "KBLFRM-609"


classes:
  - ContactingSpecification
  - ContactPoint
  - WireEnd
  - CavityReference
  - CavitySealRole
  - CavityPlugRole
  - TerminalRole

menu:
  vec-guidelines:
    parent: elog-layers
    weight: 2000

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 2000
---

{{< figure src="overview.svg" numbered="true" lightbox="true"  title="Wiring Overview">}}

The _Wiring Layer_ in the VEC provides modeling concepts to define the physical realization of electrological connections from the [System Schematic Layer]({{< relref "../system-schematic" >}}). In the VEC, the same modeling concepts are use for this layer as for the mapping of a concrete wiring harness in the model. 

However, in _Wiring Layer_ representation the degree of freedom and number of unspecified facts are typically greater, than in a harness definition. For example the wiring layer would make statements about the cross section area of a wire or the color of its insulation, but it would not define a specific insulation material or wire length as the wiring layer is installation space agnostic in many development process.

Basically, there are three main modeling concepts:
1. The description and instantiation of parts (e.g. connectors, wires, terminals).
2. The contacting (marked with green dashed lines). It defines the relationship between terminals, wire ends and cavities.
3. The coupling (marked with red dashed lines). This is for connecting connectors with E/E components or with each other, or even to connect E/E components with each other. It is explained in more detail in the guideline "["Coupling"]({{< relref "../../product-definition/coupling" >}})"


## Description and Instantiation of Parts

In contrast to the _Network Architecture_ and the _System Schematic_ the _Wiring Layer_ does not define its own level of abstraction, instead it utilizes the existing modeling concepts in the VEC to describe the physical properties of the electrologically relevant components. 

It is possible to use concrete {{<vec-class PartVersion >}}s in the _Wiring Layer_, but typically not all relevant properties are defined in the _Wiring Layer_, so mainly {{<vec-class PartUsage>}}s will be used (detailed description can be found [here]({{< relref "../../product-definition/component-description" >}})).

## Contacting

The contacting in the VEC defines the relationship between Cavities ({{< vec-class CavityReference >}}), {{< vec-class WireEnd >}}s, Terminals and Seals. Since there are various types of contactings possible, the different types are not defined explicitly in the VEC. The VEC offers a quite generic structure (the Contacting), which should be able to support all the different possible types. This is necessary, because the different contacting types are driven by technical requirements and new contactings might emerge over the time. The downside of the generic structure is that the structural schema allows constellations that are not sensible from a technical point of view as well. The following sections show the different contacting types used today, and how they have to be implemented in the VEC.

Since the contacting can be used for different levels of abstraction (Product Definiton or Electrological Wiring) only the “Role-Side” of the necessary objects is shown. Necessary {{< vec-class PartOrUsageRelatedSpecification >}}s, {{< vec-class PartOccurrence >}}s, {{< vec-class PartUsage >}}s and {{< vec-class PartVersion >}} are omitted.

### Standard Contact

{{< figure src="contacting/standard-contact.jpg" title="Standard Contact" numbered="true" lightbox="true">}}

A standard Contacting is the most common case in a wiring harness. For a standard contact you have one wire end that has one terminal crimped on it, which is placed in one cavity. It exists in two variants, sealed and unsealed. The example displays the sealed variant, for the unsealed variant the {{< vec-class CavitySealRole >}} and the {{< vec-class CavityPlugRole >}} have to be omitted.

The contacting is defined by a {{< vec-class ContactPoint >}}, contained in a {{< vec-class ContactingSpecification >}}. It is possible (and recommended) to define multiple {{< vec-class ContactPoint >}}s in one ContactingSpecification. Usally there exists one ContactingSpecification per {{< vec-class DocumentVersion >}} in the scope. So for example if the VEC-File represents a 150%-Harness definition, then you will have on {{< vec-class ContactingSpecification >}} for the complete harness.

A {{< vec-class ContactPoint >}} is defined as a point of exactly one electrical potential, which means all conducting components related to the {{< vec-class ContactPoint >}} are short-circuited.

The {{< vec-class ContactPoint >}} defines the terminal that is used for the contacting. It is then split up into two parts, the side of the crimp of the terminal (represented by the {{< vec-class WireMounting >}}) and the side of the terminal, which is placed in the cavity (represented by the {{< vec-class CavityMounting>}}). Since the example is about a sealed standard contact, the {{< vec-class WireMounting >}} displayed references exactly one {{< vec-class CavitySealRole >}} and one {{< vec-class WireEnd >}}, which means these two components are crimped together onto the terminal. On the other side the {{< vec-class CavityMounting>}} defines the Cavity in which the terminal will be placed. For a sealed environment it is necessary, that the Cavity is plugged with a CavityPlug, in case the Cavity is not occupied by a contacting. If the Cavity is occupied, the {{< vec-class CavityMounting>}} defines explicitly, which {{< vec-class CavityPlugRole >}}s are replaced by its existence.

### Multi Crimp Contact

{{< figure src="contacting/multi-crimp-contact.jpg" title="Multi Crimp Contact" numbered="true" lightbox="true">}}

A Multicrimp is quite similar to the standard contact, with the difference that there is more than one wire crimped onto the terminal. Therefore the displayed example is quite the same. The differences are:

  * There is no {{< vec-class CavityPlugRole >}} or {{< vec-class CavitySealRole >}}, since it is not usefull / possible from a technical point of view to seal a multicrimp.
  * There are two (or more) {{< vec-class WireEnd >}}s associated with the {{< vec-class WireMounting >}}.

For clarification of the example the two {{< vec-class WireElementReference >}}s reference their Signal. It is the same, since the two {{< vec-class WireEnd >}}s are crimped onto one Terminal and therefore they are set to one single electrical potential. This is only displayed in the example in order to make it clear, what is meant by “A {{< vec-class ContactPoint >}} has one single electrical potential”. This is not a restriction of the VEC, since the development processes might need (or create) different signal names for the same electrical potential.

### Ringterminal - Splice

{{< figure src="contacting/ringterminal-splice.jpg" title="Ringterminal and Splice" numbered="true" lightbox="true">}}

The structure displayed in the example applies to ring terminals and splices as well. On the side of the wire it is the same as a multi crimp. The difference is that no cavity mounting is used, since a ring terminal / splice has no cavities.

### Bridge Terminal

{{< figure src="contacting/bridge-terminal.jpg" title="Bridge Terminal" numbered="true" lightbox="true">}}

A bridge terminal is a terminal that has a wire crimped on it and which occupies more than one cavity (short-circuited). On the side of the wire it is the same as a standard contact. On the side of the cavities it simply references more than one cavity.

### Coax Contact

{{< figure src="contacting/coax-contact.jpg" title="Coax Contact" numbered="true" lightbox="true">}}

The diagram displays the proper definition of a coax contacting. In the case of coax contact one single terminal is used, but two different electrical potentials are connected to it. Therefore two ConcactPoints are required, because one {{< vec-class ContactPoint >}} can only be used for one electrical potential (see the definition of a ConcactPoint).

Both {{< vec-class ContactPoint >}}s reference the same occurrence of the terminal ({{< vec-class TerminalRole >}}) and use the {{< vec-class Cavity >}}. Each ConcatPoint mounts a single {{< vec-class WireElement >}} to the {{< vec-class TerminalRole >}}. In this example the two {{< vec-class WireElement >}}s belong to the same multi-core wire.

In order to make the example more clearly, the next figure displays the definition of such a “coax-cavity” in an EEComponent.

### Coax Cavity

{{< figure src="contacting/coax-cavity.jpg" title="Coax Cavity" numbered="true" lightbox="true">}}

The {{< vec-class HousingComponent>}} of an EEComponent defines on one hand the pins (electrological relevant information) in this {{< vec-class HousingComponent>}} and on the other hand a {{< vec-class ConnectorHousingSpecification>}} (the layout and design of the {{< vec-class HousingComponent>}}). The {{< vec-class PinComponent>}}s are then positioned in the cavities. In the case of a coax contact, two {{< vec-class PinComponent>}}s (the different electrical potentials) are placed in one cavity.

The {{< vec-class HousingComponent>}} of an EEComponent defines on one hand the pins (electrological relevant information) in this {{< vec-class HousingComponent>}} and on the other hand a ConnectorHousingSpecification (the layout and design of the {{< vec-class HousingComponent>}}). The {{< vec-class PinComponent>}}s are then positioned in the cavities. In the case of a coax contact, two {{< vec-class PinComponent>}}s (the different electrical potentials) are placed in one cavity.

## Direct Connectivity

{{< figure src="direct-contacting/direct_screwing_illustration.png" lightbox="true"  title="Illustration of a Direct Screw Connection" class="float-right" numbered="true">}} 

As is to be expected for the design of wiring harnesses, most of the electrological connections of a system schematic are realized by wires. However, there are also cases where such connections are also realized without wires, e.g. with a direct screwing connection or simple plugging of two E/E components. The most common use case of such directly connected components are fuses which are plugged into a slot of a fuse carrier. Another example is the battery isolator (German: "Batterietrennelement"), illustrated on the right side. 
The battery isolator is connected directly to the battery with an integrated ring terminal, that is screwed onto the bolt of the battery. The representation of this szenario is explained in the following paragraphs.

### Mapping in the Wiring Layer

Each of the E/E component instances is build up in the same way as seen in [this diagram]({{< relref "#figure-example-of-direct-screwing-in-the-wiring-layer">}}). A {{<vec-class EEComponentRole>}} has got one or more {{<vec-class HousingComponentReference>}}s with underlying {{<vec-class PinComponentReference>}}s for the pins. To make statements about the technical details of such a pin, a {{<vec-class TerminalRole>}} is used. 

{{< figure src="direct-contacting/screw-connection-wiring.png" lightbox="true"  title="Example of Direct Screwing in the Wiring Layer" numbered="true">}} 

For the electrological connection / mapping of two pins, a {{<vec-class MatingPoint>}} is required, which creates the relation between the corresponding {{<vec-class TerminalRole>}}s. The {{<vec-class MatingPoint>}}s are contained within a {{<vec-class CouplingPoint>}} in the {{<vec-class CouplingSpecification>}}. A CouplingPoint contains all MatingPoints for a single HousingComponentReference / ConnectorHousingRole (a detailed description can be found in the recommendation chapter {{< vec-diagram "connectivity/coupling-specification" >}}).

*Note:* In case of a terminal with multiple terminal receptions (with the possibility of separated potentials) a {{<vec-class MatingDetail>}} shall be used to define the mapping between specific {{<vec-class TerminalReceptionReference>}}s.

A detailed description of E/E components can be found in [this tutorial]({{< relref "../../ee-components" >}}).

### Traceability to the System Schematic Layer

The system schematic layer contains no details about the physical realization. Therefore, no distinction is made in the system schematic layer between direct connections and wired connection. It is even possible to have different realizations of the same system schematic, one with a direct connection and one with a wired connection.

A detailed description to the system schamtic layer can be found in [this tutorial]({{< relref "../system-schematic" >}}). 

To preserve traceability between the wiring layer and the system schematic, the element that realizes the the {{<vec-class Connection>}} has a reference to it. For a wired connection, this is the {{<vec-class WireElementReference >}}. In case of a direct connection, this is the {{<vec-class MatingPoint>}} or {{<vec-class MatingDetail>}}, depending on which level an unambiguous statement can be made. The following XML excerpt contains an example of traceability.

```xml
<Specification xsi:type="vec:CompositionSpecification" id="id_composition_1">
    <Component id="id_component_1">
        <Identification>Battery</Identification>
        [...]
        <Role xsi:type="vec:EEComponentRole" id="id_ee_role_1">
            <Identification>Battery</Identification>
            <EEComponentSpecification>id_ecomponent_spec_1</EEComponentSpecification>
            <HousingComponentRef id="id_housing_comp_ref_1">
                <Identification>A</Identification>
                <HousingComponent>id_housing_comp_1</HousingComponent>
                <ConnectorHousingRole id="id_conHousingRole_1">
                    <ConnectorHousingSpecification>id_connect_hous_spec_1</ConnectorHousingSpecification>
                    <SlotReference xsi:type="vec:SlotReference" id="id_slotRef_1">
                        <ReferencedSlot>id_slot_1</ReferencedSlot>
                        <CavityReference id="id_cavityRef_1">
                            <Identification>1</Identification>
                            <ReferencedCavity>id_cavity_1</ReferencedCavity>
                        </CavityReference>
                        [...]
                    </SlotReference>
                </ConnectorHousingRole>
                <PinComponentRef id="id_pin_comp_ref_1">
                    <PinComponent>id_pin_comp_1</PinComponent>
                    <TerminalRole xsi:type="vec:TerminalRole" id="id_terminalRole_1">
                        <Identification>1</Identification>
                        <TerminalSpecification>id_terminal_spec_1</TerminalSpecification>
                    </TerminalRole>
                </PinComponentRef>
                [...]
            </HousingComponentRef>
        </Role>
    </Component>
    <Component id="id_component_2">
        <Identification>Isolator</Identification>
        [...]
        <Role xsi:type="vec:EEComponentRole" id="id_ee_role_2">
            <Identification>Isolator</Identification>
            <EEComponentSpecification>id_ecomponent_spec_2</EEComponentSpecification>
            <HousingComponentRef id="id_housing_comp_ref_2">
                <Identification>A</Identification>
                <HousingComponent>id_housing_comp_2</HousingComponent>
                <ConnectorHousingRole id="id_conHousingRole_2">
                    <ConnectorHousingSpecification>id_connect_hous_spec_1</ConnectorHousingSpecification>
                    <SlotReference xsi:type="vec:SlotReference" id="id_slotRef_2">
                        <ReferencedSlot>id_slot_2</ReferencedSlot>
                        <CavityReference id="id_cavityRef_2">
                            <Identification>1</Identification>
                            <ReferencedCavity>id_cavity_2</ReferencedCavity>
                        </CavityReference>
                    </SlotReference>
                    [...]
                </ConnectorHousingRole>
                <PinComponentRef id="id_pin_comp_ref_2">
                    <PinComponent>id_pin_comp_2</PinComponent>
                    <TerminalRole xsi:type="vec:TerminalRole" id="id_terminalRole_2">
                        <Identification>1</Identification>
                        <TerminalSpecification>id_terminal_spec_2</TerminalSpecification>
                    </TerminalRole>
                </PinComponentRef>
            </HousingComponentRef>
            [...]
        </Role>
    </Component>
</Specification>
[...]
<Specification xsi:type="vec:CouplingSpecification" id="id_coupling_1">
    <CouplingPoint>
        <Identification>Battery-Isolator</Identification>
        <FirstConnector>id_conHousingRole_1</FirstConnector>
        <SecondConnector>id_conHousingRole_2</SecondConnector>
        <MatingPoint>
            <Identification>Mating-Battery-Isolator</Identification>
            <FirstTerminalRole>id_terminalRole_1</FirstTerminalRole>
            <SecondTerminalRole>id_terminalRole_2</SecondTerminalRole>
            <Connection>id_connection_1</Connection>
        </MatingPoint>
    </CouplingPoint>
</Specification>
[...]
<Specification xsi:type="vec:ConnectionSpecification" id="id_connect_spec_1">
    <Identification>ConSpec</Identification>
    <Connection id="id_connection_1">
        <Identification>PowerDistribution</Identification>
        <ConnectionEnd id="id_conn_end_1">
            <Identification>Battery</Identification>
            <ConnectedComponentPort>id_comp_port_1</ConnectedComponentPort>
        </ConnectionEnd>
        <ConnectionEnd id="id_conn_end_2">
            <Identification>Isolator</Identification>
            <ConnectedComponentPort>id_comp_port_2</ConnectedComponentPort>
        </ConnectionEnd>
    </Connection>
    [...]
</Specification>
```

