---
title: "E/E Components with Pigtail"
#linktitle: Link in Sidemenu
type: specs
toc: true
authors: ["becker"]
tags: ["part-master", "instantiation", "Assembly"]
categories: []
date: 2026-10-19
lastmod: 2026-10-21
draft: false
review: true

classes:
  - EEComponentSpecification
  - EEComponentRole
  - HousingComponent
  - HousingComponentReference
  - PinComponent
  - ConnectorHousingSpecification
  - ConnectorHousingRole
  - WireSpecification
  - WireRole
  - WireEnd
  - TerminalSpecification
  - ContactingSpecification
  - PartStructureSpecification
  - PartUsageSpecification
  - CompositionSpecification
  - PartWithSubComponentsRole
  - PartOccurrence
  - PartUsage
  - PlaceableElementSpecification
  - PlaceableElementRole
  - PartVersion
  - PrimaryPartType
  - TopologySpecification
  - TopologyNode
  - TopologySegment
  - ReusageSpecification
  - Reusage

history:
  - date: 2026-10-19
    description: "E/E component with pigtail: part master data, usage in a harness, XML example"
    ghIssue: "1127"

links:
  - icon_pack: fas
    icon: file-code
    name: ee-component-with-pigtail.vec
    url: 'ecad-wiki-guideline-ee-component-with-pigtail.vec'

menu:
  vec-guidelines:
    parent: ee-components
    weight: 10500

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 10500
---
{{< gh-review "1127" >}}

An E/E component with pigtail is an E/E component (e.g. a sensor) that is delivered with wires attached under a single part number. The wires are contacted in the component and end in a harness side connector, which is plugged into the harness. Such a part is an **assembly**: the E/E component is one of the contents of its bill of material, beside the wires, the contacts and the harness side connector. The part is not an E/E component "that has a bill of material", and the E/E component is not "leading" (see [Composite Parts – Assemblies]({{< relref "../../product-definition/composite-parts#assemblies" >}})). As a component with a topology of its own, the part has `PrimaryPartType = PartStructure` (see [Component Description – Hybrid and Composite Components]({{< relref "../../product-definition/component-description#hybrid-and-composite-components" >}})).

This guideline applies the general concepts of [Composite Parts]({{< relref "../../product-definition/composite-parts" >}}) to this case and shows a complete example: a sensor with a two-wire pigtail and a harness side connector.

{{< figure src="pigtail-building-blocks.svg" numbered="true" lightbox="true" title="Building Blocks of an E/E Component with Pigtail" >}}

The figure above shows the building blocks of an E/E component with pigtail. The part master data of the sensor with pigtail is a composite part: its bill of material references the contents, i.e. the sensor, the wires, the contacts and the harness side connector. Contents without a part number of their own are {{< vec-class PartUsage >}}s that reference their specifications directly; contents with a part number are {{< vec-class PartOccurrence >}}s of standard parts. The contacting, placement and routing of the contents and the topology of the pigtail are defined in the part master data as well. A harness that uses the sensor with pigtail references the composite part, instantiates only the subcomponents it makes a statement about and reuses the topology of the pigtail.

## Part Master Data

The part master {{< vec-class DocumentVersion >}} of the assembly (`DocumentType = PartMaster`) contains the bill of material, the instances of the contents and the specifications that describe them.

### Bill of Material

The {{< vec-class PartStructureSpecification >}} (`Content = Assembly`, `DescribedPart` = the {{< vec-class PartVersion >}} of the assembly) references all contents of the delivered part as `InBillOfMaterial`. Each content is instantiated with a {{< vec-class PartOccurrence >}} or a {{< vec-class PartUsage >}}, depending on whether it has a part number of its own (see [Composite Parts – Part Master Data]({{< relref "../../product-definition/composite-parts#part-master-data" >}})):

| Content | Role | Properties | In the example |
|---|---|---|---|
| E/E component | {{< vec-class EEComponentRole >}}, {{< vec-class PlaceableElementRole >}} | {{< vec-class EEComponentSpecification >}} with a {{< vec-class HousingComponent >}} for its connector interface and the {{< vec-class ConnectorHousingSpecification >}} referenced by it; {{< vec-class PlaceableElementSpecification >}} | {{< vec-class PartUsage >}} |
| Wires | {{< vec-class WireRole >}} | {{< vec-class WireSpecification >}} | {{< vec-class PartUsage >}}s |
| Contacts in the E/E component | {{< vec-class TerminalRole >}} | {{< vec-class TerminalSpecification >}} | {{< vec-class PartUsage >}}s |
| Harness side connector | {{< vec-class ConnectorHousingRole >}}, {{< vec-class PlaceableElementRole >}} | {{< vec-class ConnectorHousingSpecification >}}, {{< vec-class PlaceableElementSpecification >}} | {{< vec-class PartOccurrence >}} |
| Contacts in the harness side connector | {{< vec-class TerminalRole >}} | {{< vec-class TerminalSpecification >}} | {{< vec-class PartOccurrence >}}s |

Further contents (e.g. seals, a grommet or a protection of the pigtail) are added in the same way. For contents with a part number of their own, the specifications are part of the part master data of their {{< vec-class PartVersion >}}s; for contents without, they are referenced directly by the {{< vec-class PartUsage >}} (`PartOrUsageRelatedSpecification`) and normally contained in the {{< vec-class DocumentVersion >}} of the assembly. If the E/E component has a part number of its own (e.g. because it is also available without pigtail), it is a {{< vec-class PartOccurrence >}} referencing its own {{< vec-class PartVersion >}} with `PrimaryPartType = EEComponent`.

The {{< vec-class EEComponentSpecification >}} describes the E/E component, not the assembly: it has no `DescribedPart` reference to the assembly and the assembly occurrence has no {{< vec-class EEComponentRole >}}.

### Connection of the Wires to the E/E Component

The wires are contacted directly into the cavities of the E/E component's connector interface. The contacting is part of the assembly and is described by a {{< vec-class ContactingSpecification >}} in the {{< vec-class DocumentVersion >}} of the assembly. For this purpose, the E/E component and the wires are instantiated within the assembly as far as they are contacted (see [Instantiation of Model Structures]({{< relref "../../general/instantiation" >}})):

- The cavities of the E/E component are reached via {{< vec-class EEComponentRole >}} → {{< vec-class HousingComponentReference >}} → {{< vec-class ConnectorHousingRole >}} → {{< vec-class SlotReference >}} → {{< vec-class CavityReference >}}.
- The wire ends are reached via {{< vec-class WireRole >}} → {{< vec-class WireElementReference >}} → {{< vec-class WireEnd >}}.
- A {{< vec-class ContactPoint >}} combines the {{< vec-class TerminalRole >}} of the contact (`MountedTerminal`), the {{< vec-class CavityReference >}} (`CavityMounting`) and the {{< vec-class WireEnd >}} (`WireMounting`).

The electrical pins of the E/E component are defined by its {{< vec-class PinComponent >}}s (see [E/E Components – Connector Interface]({{< relref "../#connector-interface--ee-component-header" >}})). A {{< vec-class PinComponent >}} references the cavity of its pin (`ReferencedCavity`). Thereby the contacting defines which wire is connected to which pin. The contacting at the harness side connector is described in the same {{< vec-class ContactingSpecification >}}.

If the E/E component and the wires are connected by a separable plug connection inside the part (an internal connector mated with the component header), the internal connector is a further content of the bill of material and the wires are contacted into its cavities.

### Topology

The geometry of the pigtail (e.g. its length and the position of the harness side connector) is a property of the delivered part. It can be described by a {{< vec-class TopologySpecification >}} of the assembly: a {{< vec-class TopologyNode >}} for the E/E component, one for the harness side connector and a {{< vec-class TopologySegment >}} for the pigtail. The E/E component and the harness side connector are placed on their nodes ({{< vec-class PlacementSpecification >}}), and the wires are routed through the segment ({{< vec-class RoutingSpecification >}}). A placement references the {{< vec-class PlaceableElementRole >}} of the placed occurrence or usage. Therefore, each placed content needs a {{< vec-class PlaceableElementSpecification >}}: the harness side connector in the part master data of its {{< vec-class PartVersion >}}, the E/E component without a part number of its own as a specification of its {{< vec-class PartUsage >}}.

The topology is typical content, not a required one. A VEC for a pure bill of material or wiring view can omit it. If the assembly has no topology, the pigtail can still be designed in the topology of the using harness.

### XML Example

The following excerpt shows the part master data of a sensor with pigtail. The sensor, the wires and the contacts in the sensor have no part number of their own ({{< vec-class PartUsage >}}s); the harness side connector and its contacts are standard parts with a part number ({{< vec-class PartOccurrence >}}s). Only one of each pair of wires, contacts, contact points and routings is shown. The complete example, including the part master data of the connector and the contact and the harness of the next section, has been created with the VEC scripting API and can be downloaded at the end of the page.

```xml
<DocumentVersion id="DocumentVersion_00017">
  <CompanyName>Acme Inc.</CompanyName>
  <DocumentNumber>DRAW-SEN-2000</DocumentNumber>
  <DocumentType>PartMaster</DocumentType>
  <DocumentVersion>1</DocumentVersion>
  <ReferencedPart>PartVersion_00155</ReferencedPart>
  ...
  <Specification xsi:type="vec:ConnectorHousingSpecification" id="ConnectorHousingSpecification_00020">
    <Identification>CHS-X1</Identification>
    <Slot xsi:type="vec:Slot" id="Slot_00021">
      <SlotNumber>X</SlotNumber>
      <Cavity id="Cavity_00022">
        <CavityNumber>1</CavityNumber>
      </Cavity>
      <Cavity id="Cavity_00023">
        <CavityNumber>2</CavityNumber>
      </Cavity>
    </Slot>
  </Specification>
  <Specification xsi:type="vec:EEComponentSpecification" id="EEComponentSpecification_00024">
    <Identification>EECS-SENSOR</Identification>
    <HousingComponent id="HousingComponent_00025">
      <Identification>X1</Identification>
      <HousingSpecification>ConnectorHousingSpecification_00020</HousingSpecification>
      <PinComponent id="PinComponent_00026">
        <Identification>1</Identification>
        <PinSpecification>PluggableTerminalSpecification_00019</PinSpecification>
        <ReferencedCavity>Cavity_00022</ReferencedCavity>
      </PinComponent>
      <PinComponent id="PinComponent_00027">
        <Identification>2</Identification>
        <PinSpecification>PluggableTerminalSpecification_00019</PinSpecification>
        <ReferencedCavity>Cavity_00023</ReferencedCavity>
      </PinComponent>
    </HousingComponent>
  </Specification>
  <Specification xsi:type="vec:PlaceableElementSpecification" id="PlaceableElementSpecification_00028">
    <Identification>PES-SENSOR</Identification>
    <ValidPlacementTypes>OnPoint</ValidPlacementTypes>
  </Specification>
  ...
  <Specification xsi:type="vec:TopologySpecification" id="TopologySpecification_00043">
    <Identification>TOPOLOGY</Identification>
    <TopologyNode id="TopologyNode_00044">
      <Identification>N-SENSOR</Identification>
    </TopologyNode>
    <TopologyNode id="TopologyNode_00045">
      <Identification>N-CONNECTOR</Identification>
    </TopologyNode>
    <TopologySegment id="TopologySegment_00046">
      <Identification>S-PIGTAIL</Identification>
      <EndNode>TopologyNode_00045</EndNode>
      <StartNode>TopologyNode_00044</StartNode>
      <LengthInformation id="SegmentLength_00047">
        <Length id="NumericalValue_00048">
          <UnitComponent>SIUnit_00157</UnitComponent>
          <ValueComponent>500.0</ValueComponent>
        </Length>
        <Classification>Designed</Classification>
      </LengthInformation>
    </TopologySegment>
  </Specification>
  <Specification xsi:type="vec:PlacementSpecification" id="PlacementSpecification_00049">
    <Identification>PLACEMENTS</Identification>
    <Placement xsi:type="vec:OnPointPlacement" id="OnPointPlacement_00050">
      <Identification>SENSOR</Identification>
      <PlacedElement>PlaceableElementRole_00100</PlacedElement>
      <Location xsi:type="vec:NodeLocation" id="NodeLocation_00051">
        <Identification>SENSOR</Identification>
        <ReferencedNode>TopologyNode_00044</ReferencedNode>
      </Location>
    </Placement>
    <Placement xsi:type="vec:OnPointPlacement" id="OnPointPlacement_00052">
      <Identification>CONNECTOR</Identification>
      <PlacedElement>PlaceableElementRole_00075</PlacedElement>
      <Location xsi:type="vec:NodeLocation" id="NodeLocation_00053">
        <Identification>CONNECTOR</Identification>
        <ReferencedNode>TopologyNode_00045</ReferencedNode>
      </Location>
    </Placement>
  </Specification>
  <Specification xsi:type="vec:RoutingSpecification" id="RoutingSpecification_00054">
    <Identification>ROUTINGS</Identification>
    <Routing id="Routing_00055">
      <Identification>W1</Identification>
      <RoutedElement>WireElementReference_00103</RoutedElement>
      <Path id="Path_00056">
        <Segment>TopologySegment_00046</Segment>
      </Path>
    </Routing>
    ...
  </Specification>
  <Specification xsi:type="vec:PartStructureSpecification" id="PartStructureSpecification_00059">
    <Identification>PSS-SEN-2000</Identification>
    <DescribedPart>PartVersion_00155</DescribedPart>
    <Content>Assembly</Content>
    <InBillOfMaterial>PartUsage_00089 PartUsage_00101 PartUsage_00106 PartUsage_00111 PartUsage_00115 PartOccurrence_00074 PartOccurrence_00080 PartOccurrence_00084</InBillOfMaterial>
  </Specification>
  <Specification xsi:type="vec:ContactingSpecification" id="ContactingSpecification_00060">
    <Identification>CONTACTING</Identification>
    <ContactPoint id="ContactPoint_00061">
      <Identification>SENSOR.X1.1</Identification>
      <MountedTerminal>PluggableTerminalRole_00112</MountedTerminal>
      <CavityMounting id="CavityMounting_00062">
        <EquippedCavityRef>CavityReference_00094</EquippedCavityRef>
      </CavityMounting>
      <WireMounting id="WireMounting_00063">
        <ReferencedWireEnd>WireEnd_00104</ReferencedWireEnd>
      </WireMounting>
    </ContactPoint>
    <ContactPoint id="ContactPoint_00064">
      <Identification>CONNECTOR.1</Identification>
      <MountedTerminal>PluggableTerminalRole_00081</MountedTerminal>
      <CavityMounting id="CavityMounting_00065">
        <EquippedCavityRef>CavityReference_00078</EquippedCavityRef>
      </CavityMounting>
      <WireMounting id="WireMounting_00066">
        <ReferencedWireEnd>WireEnd_00105</ReferencedWireEnd>
      </WireMounting>
    </ContactPoint>
    ...
  </Specification>
  <Specification xsi:type="vec:CompositionSpecification" id="CompositionSpecification_00073">
    <Identification>COMPONENTS</Identification>
    <Component id="PartOccurrence_00074">
      <Identification>CONNECTOR</Identification>
      <Role xsi:type="vec:PlaceableElementRole" id="PlaceableElementRole_00075">
        <Identification>CONNECTOR</Identification>
        <PlaceableElementSpecification>PlaceableElementSpecification_00003</PlaceableElementSpecification>
      </Role>
      <Role xsi:type="vec:ConnectorHousingRole" id="ConnectorHousingRole_00076">
        <Identification>CONNECTOR</Identification>
        <ConnectorHousingSpecification>ConnectorHousingSpecification_00004</ConnectorHousingSpecification>
        <SlotReference xsi:type="vec:SlotReference" id="SlotReference_00077">
          <Identification>A</Identification>
          <ReferencedSlot>Slot_00005</ReferencedSlot>
          <CavityReference id="CavityReference_00078">
            <Identification>1</Identification>
            <ReferencedCavity>Cavity_00006</ReferencedCavity>
          </CavityReference>
          <CavityReference id="CavityReference_00079">
            <Identification>2</Identification>
            <ReferencedCavity>Cavity_00007</ReferencedCavity>
          </CavityReference>
        </SlotReference>
      </Role>
      <Part>PartVersion_00153</Part>
    </Component>
    <Component id="PartOccurrence_00080">
      <Identification>CONTACT-C1</Identification>
      <Role xsi:type="vec:PluggableTerminalRole" id="PluggableTerminalRole_00081">
        <Identification>CONTACT-C1</Identification>
        <TerminalSpecification>PluggableTerminalSpecification_00013</TerminalSpecification>
        <TerminalReceptionReference id="TerminalReceptionReference_00082">
          <Identification>TR1</Identification>
          <TerminalReception>TerminalReception_00015</TerminalReception>
        </TerminalReceptionReference>
        <WireReceptionReference id="WireReceptionReference_00083">
          <Identification>WR1</Identification>
          <WireReception>WireReception_00016</WireReception>
        </WireReceptionReference>
      </Role>
      <Part>PartVersion_00154</Part>
    </Component>
    ...
  </Specification>
  <Specification xsi:type="vec:PartUsageSpecification" id="PartUsageSpecification_00088">
    <Identification>USAGES</Identification>
    <PartUsage id="PartUsage_00089">
      <Identification>SENSOR</Identification>
      <Role xsi:type="vec:EEComponentRole" id="EEComponentRole_00090">
        <Identification>SENSOR</Identification>
        <EEComponentSpecification>EEComponentSpecification_00024</EEComponentSpecification>
        <HousingComponentRef id="HousingComponentReference_00091">
          <Identification>X1</Identification>
          <HousingComponent>HousingComponent_00025</HousingComponent>
          <ConnectorHousingRole id="ConnectorHousingRole_00092">
            <Identification>X1</Identification>
            <ConnectorHousingSpecification>ConnectorHousingSpecification_00020</ConnectorHousingSpecification>
            <SlotReference xsi:type="vec:SlotReference" id="SlotReference_00093">
              <Identification>X</Identification>
              <ReferencedSlot>Slot_00021</ReferencedSlot>
              <CavityReference id="CavityReference_00094">
                <Identification>1</Identification>
                <ReferencedCavity>Cavity_00022</ReferencedCavity>
              </CavityReference>
              <CavityReference id="CavityReference_00095">
                <Identification>2</Identification>
                <ReferencedCavity>Cavity_00023</ReferencedCavity>
              </CavityReference>
            </SlotReference>
          </ConnectorHousingRole>
          ...
        </HousingComponentRef>
      </Role>
      <Role xsi:type="vec:PlaceableElementRole" id="PlaceableElementRole_00100">
        <Identification>SENSOR</Identification>
        <PlaceableElementSpecification>PlaceableElementSpecification_00028</PlaceableElementSpecification>
      </Role>
      <PrimaryPartUsageType>EEComponent</PrimaryPartUsageType>
      <PartOrUsageRelatedSpecification>EEComponentSpecification_00024 PlaceableElementSpecification_00028</PartOrUsageRelatedSpecification>
    </PartUsage>
    <PartUsage id="PartUsage_00101">
      <Identification>W1</Identification>
      <Role xsi:type="vec:WireRole" id="WireRole_00102">
        <Identification>W1</Identification>
        <WireSpecification>WireSpecification_00041</WireSpecification>
        <WireElementReference id="WireElementReference_00103">
          <Identification>W1</Identification>
          <ReferencedWireElement>WireElement_00042</ReferencedWireElement>
          <WireEnd id="WireEnd_00104">
            <Identification>SENSOR.X1.1</Identification>
            <PositionOnWire>0.0</PositionOnWire>
          </WireEnd>
          <WireEnd id="WireEnd_00105">
            <Identification>CONNECTOR.1</Identification>
            <PositionOnWire>1.0</PositionOnWire>
          </WireEnd>
        </WireElementReference>
      </Role>
      <PrimaryPartUsageType>Wire</PrimaryPartUsageType>
      <PartOrUsageRelatedSpecification>WireSpecification_00041</PartOrUsageRelatedSpecification>
    </PartUsage>
    <PartUsage id="PartUsage_00111">
      <Identification>CONTACT-S1</Identification>
      <Role xsi:type="vec:PluggableTerminalRole" id="PluggableTerminalRole_00112">
        <Identification>CONTACT-S1</Identification>
        <TerminalSpecification>PluggableTerminalSpecification_00032</TerminalSpecification>
        <TerminalReceptionReference id="TerminalReceptionReference_00113">
          <Identification>TR1</Identification>
          <TerminalReception>TerminalReception_00034</TerminalReception>
        </TerminalReceptionReference>
        <WireReceptionReference id="WireReceptionReference_00114">
          <Identification>WR1</Identification>
          <WireReception>WireReception_00035</WireReception>
        </WireReceptionReference>
      </Role>
      <PrimaryPartUsageType>PluggableTerminal</PrimaryPartUsageType>
      <PartOrUsageRelatedSpecification>PluggableTerminalSpecification_00032</PartOrUsageRelatedSpecification>
    </PartUsage>
    ...
  </Specification>
</DocumentVersion>
...
<PartVersion id="PartVersion_00155">
  <CompanyName>Acme Inc.</CompanyName>
  <PartNumber>SEN-2000</PartNumber>
  <PartVersion>1</PartVersion>
  <PrimaryPartType>PartStructure</PrimaryPartType>
</PartVersion>
```

## Usage in a Harness

{{< figure src="pigtail-definition-and-usage.svg" numbered="true" lightbox="true" title="Definition and Usage of an E/E Component with Pigtail" >}}

The figure above shows the part master data of the sensor with pigtail (green) and its usage in a harness (magenta) with the identifiers of the XML examples.

The assembly is used in a harness like any other assembly (see [Composite Parts – Usage of an Assembly]({{< relref "../../product-definition/composite-parts#usage-of-an-assembly" >}})):

- The assembly is instantiated with a {{< vec-class PartOccurrence >}} with a {{< vec-class PartWithSubComponentsRole >}} that references the {{< vec-class PartStructureSpecification >}} of the assembly. This occurrence has no {{< vec-class EEComponentRole >}}.
- Only the subcomponents about which the harness makes a statement are instantiated. Each instantiated subcomponent references its origin in the part master data (`InstanciatedOccurrence` for a {{< vec-class PartOccurrence >}}, `InstanciatedUsage` for a {{< vec-class PartUsage >}}), and the {{< vec-class PartWithSubComponentsRole >}} references it as `SubComponent`.

Typical subcomponents that are instantiated in the harness:

- **The E/E component:** for its context specific identifier, its placement in the vehicle and its integration into the system schematic. The instantiated E/E component has the {{< vec-class EEComponentRole >}} (e.g. with the `ComponentNode` it realizes).
- **The harness side connector:** for its context specific identifier, its placement and its coupling with the mating connector of the harness.

The contacting inside the assembly (both sides of the pigtail) is defined by the part master data and is not repeated in the harness. The wires of the pigtail are only instantiated in the harness if the harness makes a statement about them, e.g. a redefined length or a routing of its own. To determine the complete electrical path from a harness wire to a pin of the E/E component, a reading system follows the coupling of the harness side connector and continues in the part master data via `InstanciatedOccurrence` / `InstanciatedUsage` (contacting of the assembly, {{< vec-class PinComponent >}}s); see [Navigating Information in a VEC]({{< relref "../../general/interface-behaviour#navigating-information-in-a-vec" >}}).

The instantiated subcomponents are not positions of the harness' bill of material: the harness contains the assembly, not its contents (see [Composite Parts – Part Master Data]({{< relref "../../product-definition/composite-parts#part-master-data" >}})).

If the assembly defines a topology, the harness reuses it (see {{< vec-diagram "key-concepts/information-reuse" >}}): the {{< vec-class TopologyNode >}}s and the {{< vec-class TopologySegment >}} of the pigtail are copied into the topology of the harness, and a {{< vec-class ReusageSpecification >}} relates each copied element (_usage_) to its origin in the part master data of the assembly (_template_) with a {{< vec-class Reusage >}}. Each occurrence of the assembly in the harness has a {{< vec-class ReusageSpecification >}} of its own. The instantiated E/E component and connector are placed on the reused nodes (with the {{< vec-class PlaceableElementRole >}}s of the instantiated subcomponents). If the assembly has no topology, the pigtail is designed in the harness topology without a {{< vec-class ReusageSpecification >}}.

{{% callout note %}}
The associations `TopologyNode.instantiatedNode` and `TopologySegment.instantiatedSegment` are deprecated since VEC 2.2.0 and replaced by the general concept of the {{< vec-class ReusageSpecification >}}. They shall not be used to relate the topology of a harness to the topology of an assembly.
{{% /callout %}}

### XML Example

The following excerpt shows the use of the sensor in a harness. The occurrence of the assembly (`B12-ASSY`) references the instantiated sensor (`B12`) and the instantiated harness side connector (`X12`) as `SubComponent`s. The topology of the pigtail is reused with the {{< vec-class ReusageSpecification >}} `RS-B12-ASSY-TOPOLOGY`, and both subcomponents are placed on the reused nodes. The wires and contacts are not instantiated.

```xml
<DocumentVersion id="DocumentVersion_00119">
  <CompanyName>Acme Inc.</CompanyName>
  <DocumentNumber>H-100</DocumentNumber>
  <DocumentType>HarnessDescription</DocumentType>
  ...
  <Specification xsi:type="vec:TopologySpecification" id="TopologySpecification_00120">
    <Identification>TOPOLOGY</Identification>
    <TopologyNode id="TopologyNode_00121">
      <Identification>N-B12</Identification>
    </TopologyNode>
    <TopologyNode id="TopologyNode_00122">
      <Identification>N-X12</Identification>
    </TopologyNode>
    <TopologySegment id="TopologySegment_00123">
      <Identification>S-B12</Identification>
      <EndNode>TopologyNode_00122</EndNode>
      <StartNode>TopologyNode_00121</StartNode>
      <LengthInformation id="SegmentLength_00124">
        <Length id="NumericalValue_00125">
          <UnitComponent>SIUnit_00157</UnitComponent>
          <ValueComponent>500.0</ValueComponent>
        </Length>
        <Classification>Designed</Classification>
      </LengthInformation>
    </TopologySegment>
  </Specification>
  <Specification xsi:type="vec:ReusageSpecification" id="ReusageSpecification_00126">
    <Identification>RS-B12-ASSY-TOPOLOGY</Identification>
    <Reusage id="Reusage_00127">
      <Template>TopologyNode_00044</Template>
      <Usage>TopologyNode_00121</Usage>
    </Reusage>
    <Reusage id="Reusage_00128">
      <Template>TopologyNode_00045</Template>
      <Usage>TopologyNode_00122</Usage>
    </Reusage>
    <Reusage id="Reusage_00129">
      <Template>TopologySegment_00046</Template>
      <Usage>TopologySegment_00123</Usage>
    </Reusage>
  </Specification>
  <Specification xsi:type="vec:PlacementSpecification" id="PlacementSpecification_00130">
    <Identification>PLACEMENTS</Identification>
    <Placement xsi:type="vec:OnPointPlacement" id="OnPointPlacement_00131">
      <Identification>B12</Identification>
      <PlacedElement>PlaceableElementRole_00152</PlacedElement>
      <Location xsi:type="vec:NodeLocation" id="NodeLocation_00132">
        <Identification>B12</Identification>
        <ReferencedNode>TopologyNode_00121</ReferencedNode>
      </Location>
    </Placement>
    <Placement xsi:type="vec:OnPointPlacement" id="OnPointPlacement_00133">
      <Identification>X12</Identification>
      <PlacedElement>PlaceableElementRole_00137</PlacedElement>
      <Location xsi:type="vec:NodeLocation" id="NodeLocation_00134">
        <Identification>X12</Identification>
        <ReferencedNode>TopologyNode_00122</ReferencedNode>
      </Location>
    </Placement>
  </Specification>
  <Specification xsi:type="vec:CompositionSpecification" id="CompositionSpecification_00135">
    <Identification>COMPONENTS</Identification>
    <Component id="PartOccurrence_00136">
      <Identification>X12</Identification>
      <Role xsi:type="vec:PlaceableElementRole" id="PlaceableElementRole_00137">
        <Identification>X12</Identification>
        <PlaceableElementSpecification>PlaceableElementSpecification_00003</PlaceableElementSpecification>
      </Role>
      <Role xsi:type="vec:ConnectorHousingRole" id="ConnectorHousingRole_00138">
        <Identification>X12</Identification>
        <ConnectorHousingSpecification>ConnectorHousingSpecification_00004</ConnectorHousingSpecification>
        <SlotReference xsi:type="vec:SlotReference" id="SlotReference_00139">
          <Identification>A</Identification>
          <ReferencedSlot>Slot_00005</ReferencedSlot>
          <CavityReference id="CavityReference_00140">
            <Identification>1</Identification>
            <ReferencedCavity>Cavity_00006</ReferencedCavity>
          </CavityReference>
          <CavityReference id="CavityReference_00141">
            <Identification>2</Identification>
            <ReferencedCavity>Cavity_00007</ReferencedCavity>
          </CavityReference>
        </SlotReference>
      </Role>
      <InstanciatedOccurrence>PartOccurrence_00074</InstanciatedOccurrence>
      <Part>PartVersion_00153</Part>
    </Component>
    <Component id="PartOccurrence_00142">
      <Identification>B12-ASSY</Identification>
      <Role xsi:type="vec:PartWithSubComponentsRole" id="PartWithSubComponentsRole_00143">
        <Identification>B12-ASSY</Identification>
        <PartStructureSpecification>PartStructureSpecification_00059</PartStructureSpecification>
        <SubComponent>PartUsage_00145 PartOccurrence_00136</SubComponent>
      </Role>
      <Part>PartVersion_00155</Part>
    </Component>
  </Specification>
  <Specification xsi:type="vec:PartUsageSpecification" id="PartUsageSpecification_00144">
    <Identification>USAGES</Identification>
    <PartUsage id="PartUsage_00145">
      <Identification>B12</Identification>
      <Role xsi:type="vec:EEComponentRole" id="EEComponentRole_00146">
        <Identification>B12</Identification>
        <EEComponentSpecification>EEComponentSpecification_00024</EEComponentSpecification>
        <HousingComponentRef id="HousingComponentReference_00147">
          <Identification>X1</Identification>
          <HousingComponent>HousingComponent_00025</HousingComponent>
          ...
        </HousingComponentRef>
      </Role>
      <Role xsi:type="vec:PlaceableElementRole" id="PlaceableElementRole_00152">
        <Identification>B12</Identification>
        <PlaceableElementSpecification>PlaceableElementSpecification_00028</PlaceableElementSpecification>
      </Role>
      <PrimaryPartUsageType>EEComponent</PrimaryPartUsageType>
      <InstanciatedUsage>PartUsage_00089</InstanciatedUsage>
      <PartOrUsageRelatedSpecification>EEComponentSpecification_00024 PlaceableElementSpecification_00028</PartOrUsageRelatedSpecification>
    </PartUsage>
  </Specification>
</DocumentVersion>
```

## Pigtail with Open Wire Ends

If the wires of the pigtail end openly instead of in a harness side connector, the open ends are contacted in the harness. The harness instantiates the wires of the pigtail ({{< vec-class WireRole >}} → {{< vec-class WireElementReference >}} → {{< vec-class WireEnd >}}, at least for the open ends), and its {{< vec-class ContactingSpecification >}} references these instantiated {{< vec-class WireEnd >}}s together with the terminals and cavities of the harness. The contacting at the E/E component remains part of the assembly.
