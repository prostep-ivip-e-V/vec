---
title: "Coupling Devices"
#linktitle: Link in Sidemenu
type: specs
# Table of Content on the right side. Only useful for large pages.
toc: true
authors: [fehlmann,becker]
tags: ["System schematic", "Usage Node", "Connection"]
categories: []
date: 2022-02-09
lastmod: 2019-12-02T12:46:09+01:00
draft: false
classes:
  - ComponentNode
  - ComponentConnector
  - ComponentPort
  - Connection
  - ConnectionEnd
  - ConnectionSpecification

history:
  - date: 2022-02-04
    description: "Improved Implementation Guideline for coupling devices (and extracted to a separate page)"
    issue: "KBLFRM-600"    

menu:
  vec-guidelines:
    parent: elog-layers
    weight: 3000

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 3000
---

{{< figure src="coupling-schematic.jpg" title="Coupling Device Example" class="float-right" width="400px" numbered="true" lightbox="true">}}

In the context of the VEC, a _coupling device_ is:

> 	... the (virtual) device that separates / connects two or more wiring harnesses. "Virtual" because it can be interpreted as a device / interface definition between the harnesses, where one harness behaves like an E/E component form the point of view of the other harness[^1].

[^1]: see {{<vec-class ComponentNodeType >}}

That means, at a coupling device a larger electrical system is divided into multiple harnesses. There can be various reasons for such a division and depending on these reasons, coupling devices can be defined at different points in the development process. Often there are assembly requirements that make a subdivision necessary (e.g. between the door and main body). If an electrical connection is defined between those separate installation spaces, it crosses a coupling device and is split up at this point. Whether a connection crosses such a coupling device or not can often be only determined after the routing process in a concrete context of the packaging of a specific vehicle. Such coupling devices are often only relevant in a _geometry / topology perspective_ and for the _wiring_ of a specific harness and not in an _architectural_ or _system schematic layer_. 

However, there are also coupling devices that serve other purposes and therefore, must be defined early in the electrological branches of the development processes, i.e. in the architecture layer or the system schematic. A schematic diagram of such coupling device can be found in the [figure]({{< relref "#coupling-device-example" >}}) above and will be example for the following sections.

## Basic Concept

{{< figure src="idea.png" title="Concept of coupling devices in the VEC" numbered="true" lightbox="true" >}}

The basic idea for a mapping in the VEC for such coupling points between different harnesses is, to consider them as virtual E/E components with an internal connectivity. When looking at such a point on a real wiring harness, we will just see two or more connectors that are plugged into each other. However, the definition of a virtual component between these connectors in the product model creates multiple advantages:

- The representation in the system schematic is analogous to other E/E components. Traceability with the wiring layer can be achieved in a uniform way.
- When just looking at a single wiring harness, all connectors can be connected to an E/E component, no connectors are "hanging in thin air".
- The virtual E/E component can be used as an interface contract and a point of separation between different development and process partners or even development lifecycles. For example, the wiring harness of a seat does not need to "know" everything about the complete electrical network of the vehicle. It just requires an interface definition of the E/E component "rest of the vehicle". 
- The virtual E/E component can be used to enforce standards for specific coupling points, for example a consistent pinning between the doors and the main body across multiple carlines. 

## System Schematic

{{< figure src="coupling-schematic-diagramm.jpg" title="Coupling Device in a System Schematic" numbered="true" lightbox="true">}}

The figure above illustrates minimal representation of a coupling device in the system schematic with just one connector and only one pin on each side. The coupling device itself is represented in the VEC with a {{< vec-class ComponentNode>}} with the `ComponentNodeType ='CouplingDevice'`. For each side of the coupling device it contains a {{< vec-class ComponentConnector>}}. These connectors include the {{< vec-class ComponentPort>}}s, which represent the pins of the connector.

The connectivity between the port on each side is represented with a internal {{< vec-class Connection>}} with two {{< vec-class ConnectionEnd>}}s, which reference the connected {{< vec-class ComponentPort>}}s. The flag `isExternalEnd` of the Ends is set to `false`, because the connection represents the internal mapping of ports within the coupling device. Connections to other {{< vec-class ComponentNode>}}s would be represented by different {{< vec-class Connection>}}s with  {{< vec-class ConnectionEnd>}}s where `isExternal=true.`

### Document Structure

Like with any self-contained piece of information in the VEC, for traceability reasons the definition of a _coupling _device_ should be in the correct {{< vec-class DocumentVersion>}}. Section [General Structure]({{< relref "../../key-concepts/general-structure">}}) explains the general concept of {{<vec-class DocumentVersion>}} and their containments. As described there, the containment of {{<vec-class Specification >}}s in their {{<vec-class DocumentVersion>}}s has a semantic meaning. The correct placement of a _coupling device_ in a containing {{<vec-class DocumentVersion>}} is a perfect example for that.

Depending on the engineering process, system schematic relevant coupling device might be defined in some kind of master data process, enforcing standardized coupling devices for a specific scope. In that case, one or more of those standardized coupling devices would be managed and published together, and then reused in a specific system schematic. This is illustrated in the figure _"Information Structure"_ below, on the left side of the figure. 

On the other, it would also be perfectly valid to have no company wide management process for coupling devices. In this case, the coupling devices would be defined implicitly within a system schematic. This is illustrated on the right side of the figure. 

{{< figure src="information-partitioning.svg" title="Information Structure" numbered="true" lightbox="true">}}

### XML Example

The XML snippet below contains the portions of a coupling device definition that belong to the system schematic layer.

```xml
<DocumentVersion id="id_docu_ver_16475">
  <Description xsi:type="vec:LocalizedString" id="id_16476">
    <LanguageCode>De</LanguageCode>
    <Value>Definition der Trennstelle TQVL</Value>
  </Description>
  <DocumentNumber>TQVL</DocumentNumber>
  <DocumentVersion>1</DocumentVersion>
  <DocumentType>MasterDataDefinition</DocumentType>
  <DataFormat>VEC</DataFormat>
  <Specification xsi:type="vec:ConnectionSpecification" id="id_connect_spec_1">
    <Identification>ConSpec_TZY5-DV12a</Identification>
    <ComponentNode id="id_comp_node_6">
      <Identification>TQVL</Identification>
      <ComponentNodeType>CouplingDevice</ComponentNodeType>
      <RealizedUsageNode>[id ref to usage node]</RealizedUsageNode>
      <ComponentConnector id="id_component_connector_1">
        <Identification>TQVL.1A</Identification>
        <ComponentPort id="id_component_port_1">
          <Identification>1</Identification>
        </ComponentPort>
      </ComponentConnector>
      <ComponentConnector id="id_component_connector_2">
        <Identification>TQVL.2A</Identification>
        <ComponentPort id="id_component_port_2">
          <Identification>1</Identification>
        </ComponentPort>
      </ComponentConnector>
    </ComponentNode>
    <Connection id="id_connection_1">
      <Identification>TQVL.A1</Identification>
      <ConnectionEnd id="id_conn_end_1">
        <Identification>TQVL.A.1</Identification>
        <IsExternalEnd>false</IsExternalEnd>
        <ConnectedComponentPort>id_component_port_1</ConnectedComponentPort>
      </ConnectionEnd>
        <ConnectionEnd id="id_conn_end_2">
        <Identification>TQVL.A.2</Identification>
        <IsExternalEnd>false</IsExternalEnd>
        <ConnectedComponentPort>id_component_port_2</ConnectedComponentPort>
      </ConnectionEnd>
    </Connection>
  </Specification>
</DocumentVersion>
```

## Wiring

{{% callout note %}}
At the moment, this section of the Implementation Guideline only contains the traceability of the wiring to the system schematic. The representation of coupling devices in wiring layer with E/E components and the concrete mapping of harnesses against those will addressed at a later stage. See {{< issue KBLFRM-798 >}} for more details.
{{% /callout %}}


### Traceability 

Even without having an explicit coupling device definition (with a virtual E/E component) in the wiring layer, a traceability over a coupling device from one wiring harness to another is possible with the help of the system schematic layer. 

Taking the {{<vec-class ComponentNode>}} Definition from [above]({{< relref "#system-schematic">}}) as a foundation, it is only necessary to create the traceability relations from the harness connectors to the system schematic layer, as illustrated in the figure below.

{{< figure src="assign-components-to-coupling.png" title="Assigning harness connectors to a coupling device" numbered="true" lightbox="true">}}

Below is the corresponding XML snippet.

```xml
<Component id="component_1">
  <Identification>TQVL.1A1</Identification>
  <Role xsi:type="vec:ConnectorHousingRole" id="connectorHousingRole_1">
    <Identification>TQVL.1A1</Identification>
    <ConnectorHousingSpecification>connectorHousingSpecification_1</ConnectorHousingSpecification>
    <ConnectedComponentConnector>id_component_connector_1</ConnectedComponentConnector>
    <SlotReference xsi:type="vec:SlotReference" id="slotRef_1">
      <Identification>A</Identification>
      <ReferencedSlot>slot_1</ReferencedSlot>
      <CavityReference id="cavityRef_1">
        <Identification>1</Identification>
        <ReferencedCavity>cavity_1</ReferencedCavity>
      </CavityReference>
    </SlotReference>
  </Role>
  [...]
</Component>
<Component id="component_2">
  <Identification>TQVL.2A1</Identification>
  <Role xsi:type="vec:ConnectorHousingRole" id="connectorHousingRole_2">
    <Identification>TQVL.2A1</Identification>
    <ConnectorHousingSpecification>connectorHousingSpecification_2</ConnectorHousingSpecification>
    <ConnectedComponentConnector>id_component_connector_2</ConnectedComponentConnector>
    <SlotReference xsi:type="vec:SlotReference" id="slotRef_2">
      <Identification>A</Identification>
      <ReferencedSlot>slot_2</ReferencedSlot>
      <CavityReference id="cavityRef_2">
        <Identification>1</Identification>
        <ReferencedCavity>cavity_2</ReferencedCavity>
        <ConnectedComponentPort>id_component_port_2</ConnectedComponentPort>
      </CavityReference>
    </SlotReference>
  </Role>
  [...]
</Component>
<Component id="component_3">
  <Identification>TQVL.2A2</Identification>
  <Role xsi:type="vec:ConnectorHousingRole" id="connectorHousingRole_3">
    <Identification>TQVL.2A2</Identification>
    <ConnectorHousingSpecification>connectorHousingSpecification_2</ConnectorHousingSpecification>
    <ConnectedComponentConnector>id_component_connector_2</ConnectedComponentConnector>
    <SlotReference xsi:type="vec:SlotReference" id="slotRef_3">
      <Identification>A</Identification>
      <ReferencedSlot>slot_2</ReferencedSlot>
      <CavityReference id="cavityRef_3">
        <Identification>1</Identification>
        <ReferencedCavity>cavity_2</ReferencedCavity>
      </CavityReference>
    </SlotReference>
  </Role>
  [...]
</Component>
```

