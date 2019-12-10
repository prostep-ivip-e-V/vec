---
title: "ECUs, EE-Components and Component Boxes"
linktitle: EE-Components
type: specs
# Table of Content on the right side. Only useful for large pages.
toc: true
authors: [becker, fehlmann]
tags: ["part-master", "instantiation"]
categories: []
date: 2019-05-05T00:00:00+01:00
lastmod: 2019-11-27T16:57:42+01:00
draft: false

menu:
  vec-guidelines:
    identifier: ee-components
    weight: 11000

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 11000
---
E/E components, represented in the VEC by the {{< vec-class "eecomponentspecification" >}} and 
{{< vec-class "eecomponentrole" >}}, summarize all kinds of components with a more or less 
complex electrical  function. In the VEC the description of an E/E component is a combination of 
the following (optional) aspects:

  1. **Connector Interface / EE Component Header:** Defines the properties and possibilities for a connection to a wiring harness or other e/e components.
  2. **Internal Connectivity:** Defines the electrical connectivity within a e/e component.
  3. **Switching States:** Add variability of a certain degree to the internal connectivity.
  4. **Electrical Interface:** Defines the electrical properties (e.g. peak currents) of a connector interface.
  5. **Type Specific Properties:** Defines properties that apply only to specific e/e component types (e.g. capacity for a battery).

E/E Components in terms of the VEC can be for example:

  * ECU's
  * [Relays]({{< relref "relays" >}})
  * [Fuses]({{< relref "fuses" >}})
  * [Multifuses]({{< relref "multi-fuses" >}})
  * [Component Boxes]({{< relref "component-boxes" >}})

## Connector Interface / EE Component Header 
### Basic Structure
{{< figure src="header_connector.jpg" lightbox="true"  title="Instantiation Example" >}} 

Any E/E-Component has some kind of connector interface. This can be an interface to attach a harness or another E/E component. For the variety of possible usage see the next section.

An E/E-Component is represented in the VEC by an {{< vec-class "eecomponentspecification" >}}.  The connector interface of an E/E-Component is represented by a {{< vec-class "housingcomponent" >}}. The {{< vec-class "housingcomponent" >}} separates into two aspect:

  1. **Geometrical:** It references a {{< vec-class "connectorhousingspecification" >}} to describe the geometrical / mechanical properties of the connector, e.g. the shape, slot layout, number of cavities etc. As this is the same {{< vec-class "Specification" >}} that is used for harness connectors it just defines an empty housing, without pins and terminals. 
  2. **Electrical:** The electrical properties of the connector, the actual pins in the housing, are represented by the {{< vec-class "pincomponent" >}}. The physical properties of the pin are represented by a {{< vec-class "terminalspecification" >}}.

The figure _Instantiation Example_ shows the structure for an E/E component with a single pin. The following XML listing shows the same as xml snippet:
```xml
<Specification xsi:type=vec:EEComponentSpecification" id"id_ecomponent_spec_1498">
    <Identification>DSC</Identification>
    <DescribedPart>...</DescribedPart>
    <HousingComponent id="id_housing_comp_1500">
        <Identification>A1</Identification>
        <HousingSpecification>id_connect_hous_spec_1501</HousingSpecification>
        <PinComponent id="id_pin_comp_1506">
            <Identification>1</Identification>
            <PinSpecification>id_terminal_spec_1511</PinSpecification>
            <ReferencedCavity>id_cavity_1504</ReferencedCavity>
        </PinComponent>
    </HousingComponent>
</Specification>
<Specification xsi:type="vec:ConnectorHousingSpecification" id"id_connect_hous_spec_1501">
    <Identification>37548</Identification>
    <SpecialPartType>HarnessConnector</SpecialPartType>
    <Slot xsi:type="vec:Slot" id"id_slot_1502">
        <SlotNumber>A</SlotNumber>
        <Cavity id="id_cavity_1504">
            <CavityNumber>1</CavityNumber>
        </Cavity>
    </Slot>
</Specification>
<Specification xsi:type="vec:TerminalSpecification" id"id_terminal_spec_1511">
    <Identification>Usn3B323a4a10a614881C33</Identification>
    ...
</Specification>
```
### Connector / Interface Types 

_**Note:** This section is in particular relevant for component boxes, as they have the greatest 
variance of different interface types. However, all these interface types can as well appear 
in other EE components. To understand the technical background and the definition of the different 
types, please read the article about [Component Boxes]({{< relref "component-boxes" >}})_

{{< figure src="connector_structure.png" lightbox="true" class="float-right" title="Main Structure" width="500px" >}}

All (pluggable) electrical interfaces of a EE component to other components or the harness are 
represented by a {{< vec-class "housingcomponent" >}}. That means for each fuse, multi fuse or relay 
slot and for all pluggable harness connectors or direct contacting connectors a {{< vec-class "housingcomponent" >}} 
is defined.

Each {{< vec-class "housingcomponent" >}} references a {{< vec-class "connectorhousingspecification" >}} that defines the geometrical properties of the slot. 

_**Version < 1.2.0:**_ The classification of the housing component (e.g. is it a fuse or relay slot) is done with the 
*specialPartType* of the associated {{< vec-class "connectorhousingspecification" >}}.

_**Version >= 1.2.0:**_  VEC 1.2.0 introduced a *compatibleTypes* attribute in the {{< vec-class "housingcomponent" >}} 
to define what type of components are valid counter parts for a housing component. This is considered as an additional 
information to the pre 1.2.0 way.

_**Note:** Slots for multi fuses are also represented by one {{< vec-class "housingcomponent" >}}._

| Type of Slot  | ConnectorHousingSpecification.SpecialPartType (V1.1.3)  | HousingComponent.CompatibleTypes (V1.2.0) |
|---------------|---------------------------------------------------------|-------------------------------------------|
| Fuse slot | FuseConnector | Fuse |
| Multi fuse slot | MultiFuseConnector | MultiFuse |
| Relays slot | RelayConnector | Relay |
| Direct Contacting | WiringConnector | Terminal |
| Slot for Harness Connector | HarnessConnector | ConnectorHousing |
| Slot for Ring Terminals of a Harness | HarnessConnector | RingTerminal |
| Modular Slot for other E/E-Components| ... | EEComponent |


In figure *E/E-Component Interfaces* the instantiation of such a structure is partially shown. The details of a 
connector description with {{< vec-class "slot" >}}, {{< vec-class "cavity" >}} and {{< vec-class "pincomponent" >}} are 
only implied on the left side.

{{< figure src="eecomponent_interfaces.jpg" lightbox="true"  title="E/E-Component Interfaces" >}} 


The listing below shows the general xml structure for such a component box. Omitted blocks are marked with "...".

```xml
<Specification xsi:type="vec:EEComponentSpecification" id"id_ecomponent_spec_1463">
  <Identification>Dnq3202104816a236</Identification>
  <SpecialPartType>FuseOrRelayCarrier</SpecialPartType>
  <DescribedPart>id_part_ver_1419</DescribedPart>
  ...
  <HousingComponent id="id_housing_comp_1466">
      <Identification>B</Identification>
      <HousingSpecification>id_connect_hous_spec_1430</HousingSpecification>
      ...
  </HousingComponent>
  <HousingComponent id="id_housing_comp_1478">
      <Identification>G2</Identification>
      <HousingSpecification>id_connect_hous_spec_1459</HousingSpecification>
      ...
  </HousingComponent>
</Specification> 

<Specification xsi:type="vec:ConnectorHousingSpecification" id"id_connect_hous_spec_1430">
  <Identification>WIRING</Identification>
  <SpecialPartType>WiringConnector</SpecialPartType>
  <Slot xsi:type="vec:Slot" id"id_slot_1432">
      ...
  </Slot>
</Specification> 

<Specification xsi:type="vec:ConnectorHousingSpecification" id"id_connect_hous_spec_1459">
  <Identification>FUSE</Identification>
  <SpecialPartType>FuseConnector</SpecialPartType>
  <Slot xsi:type="vec:Slot" id"id_slot_1460">
      ...
  </Slot>
</Specification>
```
## Internal Connectivity 
### Connections 
{{< figure src="component_box_schematic.png" lightbox="true"  title="Component Box Schematic Illustration" width="400px" class="float-right" >}} 

This section applies to all kind of internal connections in E/E components. One of the major use cases for 
this is the representation of internal connectivity of component boxes, since this is an important information, 
for example for physical validation or the calculation of current flows in the network. The model elements can also 
be used to represent the internal connectivity of a relay or any other E/E component. However, when it comes to software 
enabled component states (e.g. ECUs) the feasibility is more than questionable. 

In figure *Component Box Schematic Illustration* the internal connections are illustrated by the red and black lines (2). 
In terms of the VEC, an {{< vec-class "internalcomponentconnection" >}} defines a logical (conductive) connection between 
a number of {{< vec-class "pincomponent" >}} within a E/E component. This representation does not consider the actual realization 
of the conductivity. This means, when multiple pins are connected,  that the representation in the model is the same whether it is 
realized by point to point connections, a conductor rail or direct contacting. 

In figure *Instancing for Internal Connections* an instance diagram is shown for a power distribution connection between a supply 
on the left side and the individual fuse slots on the right side. 


_**Note:** The essential criteria for a {{< vec-class "internalcomponentconnection" >}} is the electrical conductivity. So even 
if the connection in the example would be realized by three individual conductors between the left and the right side, it would be 
represented by **one** {{< vec-class "internalcomponentconnection" >}}_

{{< figure src="internal_connections.jpg" lightbox="true"  title="Instancing for Internal Connections" >}} 

### Switching States 
{{< figure src="switching_states_illustration.jpg" lightbox="true"  title="Switching States Illustration" width="300px" class="float-right" >}} 

In figure *Switching States Illustration* a simple {{< vec-class "eecomponentspecification" >}} with {{< vec-class "switchingstate" >}} is schematically shown. 
In figure *Switching States* the corresponding representation in VEC is shown. It is a simple switch with two states. In the example, the switch has two {{< vec-class "housingcomponent" >}}, meaning it has two connectors, one for the IN-side and one for OUT-side. The housing component for the IN-side has one {{< vec-class "pincomponent" >}}, the OUT-side has two of them. However, a real example could as well have just one {{< vec-class "housingcomponent" >}} with three {{< vec-class "pincomponent" >}}. The pin on the IN-side is connected to the pins on the OUT-side with a switchable XOR-connection.

The IN-side (highlighted in red) and the OUT-side (highlighted in green) are represented in the VEC as a connector interface of your choice, as described in [Connector Interface / EE Component Header]({{< relref "#connector_interface_ee_component_header.md" >}}). In the VEC a {{< vec-class "internalcomponentconnection" >}} is free of variance, therefore each state of the XOR-connection of the example is represented by an individual {{< vec-class "internalcomponentconnection" >}} (A.1 -> B.1) and (A.1 -> B.2). The switch in this example has two switching states (*B1* & *B2*), each referencing one {{< vec-class "internalcomponentconnection" >}}, meaning that if the state is active, the corresponding connections exist / have electrical conductivity. The fact, that *B1* & *B2* are mutally exclusive to each are other is currently not represented in the VEC. 

_**Note:** Without the additional information of the switching states, the representation with two {{< vec-class "internalcomponentconnection" >}} would be illegal, as it would semantically equivalent to representation with one {{< vec-class "internalcomponentconnection" >}} referencing three {{< vec-class "pincomponent" >}}_

{{< figure src="switching_states.jpg" lightbox="true"  title="Switching States"  >}} 

