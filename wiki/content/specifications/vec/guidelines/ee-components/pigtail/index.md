---
title: "E/E Components with Pigtail"
#linktitle: Link in Sidemenu
type: specs
toc: true
authors: ["becker"]
tags: ["part-master", "instantiation", "Assembly"]
categories: []
date: 2026-10-19
lastmod: 2026-10-19
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
  - PartVersion
  - PrimaryPartType
  - TopologySpecification
  - TopologyNode
  - TopologySegment

history:
  - date: 2026-10-19
    description: "E/E component with pigtail: part master data, usage in a harness, XML example"
    ghIssue: "1127"

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

## Part Master Data

The part master {{< vec-class DocumentVersion >}} of the assembly (`DocumentType = PartMaster`) contains the bill of material, the instances of the contents and the specifications that describe them.

### Bill of Material

The {{< vec-class PartStructureSpecification >}} (`Content = Assembly`, `DescribedPart` = the {{< vec-class PartVersion >}} of the assembly) references all contents of the delivered part as `InBillOfMaterial`. Each content is instantiated with a {{< vec-class PartOccurrence >}} or a {{< vec-class PartUsage >}}, depending on whether it has a part number of its own (see [Composite Parts – Part Master Data]({{< relref "../../product-definition/composite-parts#part-master-data" >}})):

| Content | Role | Properties | In the example |
|---|---|---|---|
| E/E component | {{< vec-class EEComponentRole >}} | {{< vec-class EEComponentSpecification >}} with a {{< vec-class HousingComponent >}} for its connector interface and the {{< vec-class ConnectorHousingSpecification >}} referenced by it | {{< vec-class PartUsage >}} |
| Wires | {{< vec-class WireRole >}} | {{< vec-class WireSpecification >}} | {{< vec-class PartUsage >}}s |
| Contacts in the E/E component | {{< vec-class TerminalRole >}} | {{< vec-class TerminalSpecification >}} | {{< vec-class PartUsage >}}s |
| Harness side connector | {{< vec-class ConnectorHousingRole >}} | {{< vec-class ConnectorHousingSpecification >}} | {{< vec-class PartOccurrence >}} |
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

The geometry of the pigtail (e.g. its length and the position of the harness side connector) is a property of the delivered part. It can be described by a {{< vec-class TopologySpecification >}} of the assembly: a {{< vec-class TopologyNode >}} for the E/E component, one for the harness side connector and a {{< vec-class TopologySegment >}} for the pigtail. The E/E component and the connector are placed on their nodes ({{< vec-class PlacementSpecification >}}) and the wires are routed through the segment ({{< vec-class RoutingSpecification >}}).

The topology is typical content, not a required one. A VEC for a pure bill of material or wiring view can omit it. If the assembly has no topology, the pigtail can still be designed in the topology of the using harness.

### XML Example

The following example shows the part master data of a sensor with pigtail. The sensor, the wires and the contacts in the sensor have no part number of their own ({{< vec-class PartUsage >}}s), the harness side connector and its contacts are standard parts with a part number ({{< vec-class PartOccurrence >}}s). Only one of each pair of wires, contacts and contact points is shown.

```xml
<DocumentVersion id="dv_sen">
  <CompanyName>Supplier Corp.</CompanyName>
  <DocumentNumber>SEN-2000</DocumentNumber>
  <DocumentType>PartMaster</DocumentType>
  <DocumentVersion>A</DocumentVersion>
  <ReferencedPart>pv_sen</ReferencedPart>
  <!-- bill of material: the sensor is one of the contents -->
  <Specification xsi:type="vec:PartStructureSpecification" id="pss_sen">
    <Identification>BOM</Identification>
    <DescribedPart>pv_sen</DescribedPart>
    <Content>Assembly</Content>
    <InBillOfMaterial>pu_sensor pu_wire_1 pu_wire_2 pu_contact_s1 pu_contact_s2 po_connector po_contact_c1 po_contact_c2</InBillOfMaterial>
  </Specification>
  <!-- contained components without a part number of their own -->
  <Specification xsi:type="vec:PartUsageSpecification" id="pus_sen">
    <Identification>CONTENTS-WITHOUT-PN</Identification>
    <PartUsage id="pu_sensor">
      <Identification>SENSOR</Identification>
      <Role xsi:type="vec:EEComponentRole" id="eer_sensor">
        <EEComponentSpecification>ees_sensor</EEComponentSpecification>
        <HousingComponentRef id="hcr_x1">
          <HousingComponent>hc_x1</HousingComponent>
          <ConnectorHousingRole id="chr_x1">
            <ConnectorHousingSpecification>chs_x1</ConnectorHousingSpecification>
            <SlotReference xsi:type="vec:SlotReference" id="sr_x1">
              <ReferencedSlot>slot_x1</ReferencedSlot>
              <CavityReference id="cr_x1_1">
                <ReferencedCavity>cav_x1_1</ReferencedCavity>
              </CavityReference>
              ...
            </SlotReference>
          </ConnectorHousingRole>
        </HousingComponentRef>
      </Role>
      <PrimaryPartUsageType>EEComponent</PrimaryPartUsageType>
      <PartOrUsageRelatedSpecification>ees_sensor</PartOrUsageRelatedSpecification>
    </PartUsage>
    <PartUsage id="pu_wire_1">
      <Identification>W1</Identification>
      <Role xsi:type="vec:WireRole" id="wr_1">
        <WireSpecification>ws_pigtail</WireSpecification>
        <WireElementReference id="wer_1">
          <ReferencedWireElement>we_pigtail</ReferencedWireElement>
          <WireEnd id="we_1_sensor">
            <Identification>1</Identification>
            <PositionOnWire>0</PositionOnWire>
          </WireEnd>
          <WireEnd id="we_1_connector">
            <Identification>2</Identification>
            <PositionOnWire>1</PositionOnWire>
          </WireEnd>
        </WireElementReference>
      </Role>
      <PrimaryPartUsageType>Wire</PrimaryPartUsageType>
      <PartOrUsageRelatedSpecification>ws_pigtail</PartOrUsageRelatedSpecification>
    </PartUsage>
    <PartUsage id="pu_contact_s1">
      <Identification>CONTACT-S1</Identification>
      <Role xsi:type="vec:TerminalRole" id="tr_s1">
        <TerminalSpecification>ts_uni_cont</TerminalSpecification>
      </Role>
      <PrimaryPartUsageType>PluggableTerminal</PrimaryPartUsageType>
      <PartOrUsageRelatedSpecification>ts_uni_cont</PartOrUsageRelatedSpecification>
    </PartUsage>
    ...
  </Specification>
  <!-- contained components with a part number of their own -->
  <Specification xsi:type="vec:CompositionSpecification" id="cs_sen">
    <Identification>CONTENTS-WITH-PN</Identification>
    <Component id="po_connector">
      <Identification>CONNECTOR</Identification>
      <Role xsi:type="vec:ConnectorHousingRole" id="chr_con">
        <ConnectorHousingSpecification>chs_con</ConnectorHousingSpecification>
        <SlotReference xsi:type="vec:SlotReference" id="sr_con">
          <ReferencedSlot>slot_con</ReferencedSlot>
          <CavityReference id="cr_con_1">
            <ReferencedCavity>cav_con_1</ReferencedCavity>
          </CavityReference>
          ...
        </SlotReference>
      </Role>
      <Part>pv_con</Part>
    </Component>
    <Component id="po_contact_c1">
      <Identification>CONTACT-C1</Identification>
      <Role xsi:type="vec:TerminalRole" id="tr_c1">
        <TerminalSpecification>ts_contact</TerminalSpecification>
      </Role>
      <Part>pv_contact</Part>
    </Component>
    ...
  </Specification>
  <!-- contacting on both sides of the pigtail -->
  <Specification xsi:type="vec:ContactingSpecification" id="cts_sen">
    <Identification>CONTACTING</Identification>
    <ContactPoint id="cp_s1">
      <Identification>X1.1</Identification>
      <MountedTerminal>tr_s1</MountedTerminal>
      <CavityMounting id="cm_s1">
        <EquippedCavityRef>cr_x1_1</EquippedCavityRef>
      </CavityMounting>
      <WireMounting id="wm_s1">
        <ReferencedWireEnd>we_1_sensor</ReferencedWireEnd>
      </WireMounting>
    </ContactPoint>
    <ContactPoint id="cp_c1">
      <Identification>CONNECTOR.1</Identification>
      <MountedTerminal>tr_c1</MountedTerminal>
      <CavityMounting id="cm_c1">
        <EquippedCavityRef>cr_con_1</EquippedCavityRef>
      </CavityMounting>
      <WireMounting id="wm_c1">
        <ReferencedWireEnd>we_1_connector</ReferencedWireEnd>
      </WireMounting>
    </ContactPoint>
    ...
  </Specification>
  <!-- topology of the pigtail (optional) -->
  <Specification xsi:type="vec:TopologySpecification" id="tps_sen">
    <Identification>TOPOLOGY</Identification>
    <TopologyNode id="tn_sensor">
      <Identification>N-SENSOR</Identification>
    </TopologyNode>
    <TopologyNode id="tn_connector">
      <Identification>N-CONNECTOR</Identification>
    </TopologyNode>
    <TopologySegment id="tsg_pigtail">
      <Identification>S-PIGTAIL</Identification>
      <EndNode>tn_connector</EndNode>
      <StartNode>tn_sensor</StartNode>
    </TopologySegment>
  </Specification>
  <Specification xsi:type="vec:PlacementSpecification" id="pls_sen">
    <Identification>PLACEMENT</Identification>
    <Placement xsi:type="vec:OnPointPlacement" id="pl_sensor">
      <Identification>PL-SENSOR</Identification>
      <PlacedElement>pu_sensor</PlacedElement>
      <Location xsi:type="vec:NodeLocation" id="loc_sensor">
        <Identification>L-SENSOR</Identification>
        <ReferencedNode>tn_sensor</ReferencedNode>
      </Location>
    </Placement>
    ...
  </Specification>
  <Specification xsi:type="vec:RoutingSpecification" id="rts_sen">
    <Identification>ROUTING</Identification>
    <Routing id="rt_1">
      <RoutedElement>wer_1</RoutedElement>
      <Path id="path_1">
        <Segment>tsg_pigtail</Segment>
      </Path>
    </Routing>
    ...
  </Specification>
  <!-- the properties of the contents without a part number -->
  <Specification xsi:type="vec:EEComponentSpecification" id="ees_sensor">
    <Identification>EES-SENSOR</Identification>
    <HousingComponent id="hc_x1">
      <Identification>X1</Identification>
      <HousingSpecification>chs_x1</HousingSpecification>
      <PinComponent id="pin_1">
        <Identification>1</Identification>
        <ReferencedCavity>cav_x1_1</ReferencedCavity>
      </PinComponent>
      ...
    </HousingComponent>
  </Specification>
  <Specification xsi:type="vec:ConnectorHousingSpecification" id="chs_x1">
    <Identification>CHS-X1</Identification>
    <Slot xsi:type="vec:Slot" id="slot_x1">
      <SlotNumber>A</SlotNumber>
      <Cavity id="cav_x1_1">
        <CavityNumber>1</CavityNumber>
      </Cavity>
      ...
    </Slot>
  </Specification>
  <Specification xsi:type="vec:WireSpecification" id="ws_pigtail">
    <Identification>WS-PIGTAIL</Identification>
    <WireElement id="we_pigtail">
      <Identification>W</Identification>
      <WireElementSpecification>wes_pigtail</WireElementSpecification>
    </WireElement>
  </Specification>
  <Specification xsi:type="vec:WireElementSpecification" id="wes_pigtail">
    <Identification>WES-PIGTAIL</Identification>
    ...
  </Specification>
  <Specification xsi:type="vec:TerminalSpecification" id="ts_uni_cont">
    <Identification>TS-UNI-CONT</Identification>
    ...
  </Specification>
</DocumentVersion>
<!-- part master data of the harness side connector (chs_con) and its contact (ts_contact) -->
...
<PartVersion id="pv_sen">
  <CompanyName>Supplier Corp.</CompanyName>
  <PartNumber>SEN-2000</PartNumber>
  <PartVersion>A</PartVersion>
  <PrimaryPartType>PartStructure</PrimaryPartType>
</PartVersion>
```

## Usage in a Harness

The assembly is used in a harness like any other assembly (see [Composite Parts – Usage of an Assembly]({{< relref "../../product-definition/composite-parts#usage-of-an-assembly" >}})):

- The assembly is instantiated with a {{< vec-class PartOccurrence >}} with a {{< vec-class PartWithSubComponentsRole >}} that references the {{< vec-class PartStructureSpecification >}} of the assembly. This occurrence has no {{< vec-class EEComponentRole >}}.
- Only the subcomponents about which the harness makes a statement are instantiated. Each instantiated subcomponent references its origin in the part master data (`InstanciatedOccurrence` for a {{< vec-class PartOccurrence >}}, `InstanciatedUsage` for a {{< vec-class PartUsage >}}), and the {{< vec-class PartWithSubComponentsRole >}} references it as `SubComponent`.

Typical subcomponents that are instantiated in the harness:

- **The E/E component:** for its context specific identifier, its placement in the vehicle and its integration into the system schematic. The instantiated E/E component has the {{< vec-class EEComponentRole >}} (e.g. with the `ComponentNode` it realizes).
- **The harness side connector:** for its context specific identifier, its placement and its coupling with the mating connector of the harness.

The contacting inside the assembly (both sides of the pigtail) is defined by the part master data and is not repeated in the harness. The wires of the pigtail are only instantiated in the harness if the harness makes a statement about them, e.g. a redefined length or a routing of its own. To determine the complete electrical path from a harness wire to a pin of the E/E component, a reading system follows the coupling of the harness side connector and continues in the part master data via `InstanciatedOccurrence` / `InstanciatedUsage` (contacting of the assembly, {{< vec-class PinComponent >}}s); see [Navigating Information in a VEC]({{< relref "../../general/interface-behaviour#navigating-information-in-a-vec" >}}).

The instantiated subcomponents are not positions of the harness' bill of material: the harness contains the assembly, not its contents (see [Composite Parts – Part Master Data]({{< relref "../../product-definition/composite-parts#part-master-data" >}})).

If the assembly defines a topology, the harness topology can instantiate it: the {{< vec-class TopologyNode >}}s and the {{< vec-class TopologySegment >}} of the pigtail in the harness reference their origin via `InstantiatedNode` / `InstantiatedSegment`, and the instantiated E/E component and connector are placed on the instantiated nodes. If the assembly has no topology, the pigtail is designed in the harness topology without these references.

### XML Example

The following example shows the use of the sensor in a harness. The harness instantiates the sensor itself and the harness side connector, places both on the instantiated topology of the pigtail and does not instantiate the wires and contacts.

```xml
<DocumentVersion id="dv_harness">
  <CompanyName>OEM Corp.</CompanyName>
  <DocumentNumber>H-100</DocumentNumber>
  <DocumentType>HarnessDescription</DocumentType>
  <DocumentVersion>1</DocumentVersion>
  <ReferencedPart>pv_harness</ReferencedPart>
  <Specification xsi:type="vec:CompositionSpecification" id="cs_harness">
    <Identification>COMPONENTS</Identification>
    <!-- the occurrence of the assembly -->
    <Component id="po_h_sen">
      <Identification>B12</Identification>
      <Role xsi:type="vec:PartWithSubComponentsRole" id="pwscr_sen">
        <PartStructureSpecification>pss_sen</PartStructureSpecification>
        <SubComponent>pu_h_sensor po_h_connector</SubComponent>
      </Role>
      <Part>pv_sen</Part>
    </Component>
    <!-- instantiated subcomponent: the harness side connector -->
    <Component id="po_h_connector">
      <Identification>X12</Identification>
      <Role xsi:type="vec:ConnectorHousingRole" id="chr_h_con">
        <ConnectorHousingSpecification>chs_con</ConnectorHousingSpecification>
      </Role>
      <InstanciatedOccurrence>po_connector</InstanciatedOccurrence>
      <Part>pv_con</Part>
    </Component>
    ...
  </Specification>
  <Specification xsi:type="vec:PartUsageSpecification" id="pus_harness">
    <Identification>INSTANTIATED-USAGES</Identification>
    <!-- instantiated subcomponent: the sensor itself -->
    <PartUsage id="pu_h_sensor">
      <Identification>B12</Identification>
      <Role xsi:type="vec:EEComponentRole" id="eer_h_sensor">
        <EEComponentSpecification>ees_sensor</EEComponentSpecification>
      </Role>
      <PrimaryPartUsageType>EEComponent</PrimaryPartUsageType>
      <InstanciatedUsage>pu_sensor</InstanciatedUsage>
      <PartOrUsageRelatedSpecification>ees_sensor</PartOrUsageRelatedSpecification>
    </PartUsage>
  </Specification>
  <Specification xsi:type="vec:TopologySpecification" id="tps_harness">
    <Identification>TOPOLOGY</Identification>
    <TopologyNode id="tn_h_sensor">
      <Identification>N-B12</Identification>
      <InstantiatedNode>tn_sensor</InstantiatedNode>
    </TopologyNode>
    <TopologyNode id="tn_h_connector">
      <Identification>N-X12</Identification>
      <InstantiatedNode>tn_connector</InstantiatedNode>
    </TopologyNode>
    <TopologySegment id="tsg_h_pigtail">
      <Identification>S-B12</Identification>
      <EndNode>tn_h_connector</EndNode>
      <InstantiatedSegment>tsg_pigtail</InstantiatedSegment>
      <StartNode>tn_h_sensor</StartNode>
    </TopologySegment>
    ...
  </Specification>
  <Specification xsi:type="vec:PlacementSpecification" id="pls_harness">
    <Identification>PLACEMENT</Identification>
    <Placement xsi:type="vec:OnPointPlacement" id="pl_h_sensor">
      <Identification>PL-B12</Identification>
      <PlacedElement>pu_h_sensor</PlacedElement>
      <Location xsi:type="vec:NodeLocation" id="loc_h_sensor">
        <Identification>L-B12</Identification>
        <ReferencedNode>tn_h_sensor</ReferencedNode>
      </Location>
    </Placement>
    <Placement xsi:type="vec:OnPointPlacement" id="pl_h_connector">
      <Identification>PL-X12</Identification>
      <PlacedElement>po_h_connector</PlacedElement>
      <Location xsi:type="vec:NodeLocation" id="loc_h_connector">
        <Identification>L-X12</Identification>
        <ReferencedNode>tn_h_connector</ReferencedNode>
      </Location>
    </Placement>
  </Specification>
</DocumentVersion>
```

## Pigtail with Open Wire Ends

If the wires of the pigtail end openly instead of in a harness side connector, the open ends are contacted in the harness. The harness instantiates the wires of the pigtail ({{< vec-class WireRole >}} → {{< vec-class WireElementReference >}} → {{< vec-class WireEnd >}}, at least for the open ends), and its {{< vec-class ContactingSpecification >}} references these instantiated {{< vec-class WireEnd >}}s together with the terminals and cavities of the harness. The contacting at the E/E component remains part of the assembly.
