---
title: "Splices"
#linktitle: Link in Sidemenu
type: specs
# Table of Content on the right side. Only useful for large pages.
toc: false
authors: [fehlmann]
tags: []
categories: []
date: 2022-11-09
lastmod: 2022-11-09T12:45:07+01:00
draft: false
review: true
classes:
  - SpliceTerminalSpecification
  - SpliceTerminalRole
  - WireReception
  - PlacementPoint

history:
  - date: 2022-10-21
    description: "Splice: Number of wires from the left / number of wires from the right"
    issue: "KBLFRM-855"

menu:
  vec-guidelines:
    parent: component-types
    weight: 6500

weight: 6500
---
<style>
table th,td{
  width: 50%;
}
table {
    overflow-x: auto;
}
</style>

{{% callout note %}}
Before reading this implementation guideline, it is highly recommended to read the following sections in the VEC Online Model Description first:
* "{{< vec-diagram "component-characteristics/terminals">}}"
* "{{< vec-diagram "connectivity/contacting-specification">}}"
{{% /callout %}}


{{< figure src="splice_contacting.png" numbered="true" lightbox="true"  title="Examples of contacting a splice terminal"  width="80%"  align="center">}}

A splice is normally used to create a contacting between multiple wires with the same potential e.g. for ground distribution. A splice can be created with or without real material (e.g. ultra-sonic welding vs. crimping).
The figure above is a schematic illustration of the two common types of splices. On the left side is an end splice, on the right side an inline or parallel splice. The following sections will give you a comparison of those variants every time a different handling is needed. To do so the examples of an end splice with just two wire ends and an inline splice with one wire end on the left and two wire ends on the right will be used. (see figure 2 + 3)


## Part Master Definition

### Technical Properties

In the VEC the technical properties of splices are defined with a {{< vec-class SpliceTerminalSpecification>}}. The specification can represent a process definition (e.g. for ultra-sonic welding) or a real component (e.g. the sleeve for crimped splices).
The different types of splices are defined with the inner structure of the specification ({{< vec-class WireReception>}}s and their relations)

|{{< figure src="end_splice_contacting.png" numbered="true" width="40%" title="End splice example">}}|{{< figure src="inline_splice_contacting.png" numbered="true" width="40%" title="Inline splice example">}}|
|:----------- |:----------- |
|<br/>{{< figure src="end_splice_definition.svg">}} An end splices connects all wire ends together. This is why only one single {{< vec-class WireReception>}} is needed |<br/>{{< figure src="inline_splice_definition.svg">}} In case of a parallel splice the {{< vec-class SpliceTerminalSpecification>}} contains a wire reception for each side. |

{{< figure src="legend.svg" title="Legend">}}

{{% callout note %}}
**Proposal**: If a TerminalSpecification does not define any {{< vec-class InternalTerminalConnection>}}, the default assumption is that all recepetions (wire & terminal) are short circuited (have the same potential). So, for most regular splices it is not required to defined InternalTerminalConnections.
{{% /callout %}}


### Placeability

To allow the placement of a splice in the topology it requires a {{< vec-class PlaceableElementSpecification>}} (compare [Placement and Dimensions]({{< relref "../../placement-and-dimensions">}})). 

|             |             |
|:----------- |:----------- |
|{{< figure src="inline_splice_contacting.png" width="40%" title="Inline splice example">}}|In case of an inline splice it might be neccessary to know / to specify the orientation of the splice in the topology. The details of a placement are defined with individual {{< vec-class PlacementPoint>}}s in the {{< vec-class PlaceableElementSpecification>}}.To associate this with the splice specific properties,  a {{< vec-class WireReception>}} can reference the {{< vec-class PlacementPoint>}} that represents itself in the placement.| 

## Usage

### Instantiation

Instances are required when using splices in a harness or wiring definition (see [Instances of Components]({{< relref "../../product-definition/component-instances">}})). Splice specific properties are defined with a {{< vec-class SpliceTerminalRole>}}. The role contains all instance information about the splice like sealing or insulation and it also contains a {{< vec-class WirereceptionReference>}} foreach {{< vec-class WireReception>}} in the part master definition.

|{{< figure src="end_splice_contacting.png" width="40%" title="End splice example">}}|{{< figure src="inline_splice_contacting.png" width="40%" title="Inline splice example">}}|
|:----------- |:----------- |
|The end splice needs just **one** {{< vec-class WirereceptionReference>}}|In case of the inline splice **two** {{< vec-class WirereceptionReference>}}s have to be put in the {{< vec-class SpliceTerminalRole>}}| 

To define reference elements for definition of the placement of a splice in the topolgy, a {{< vec-class PlaceableElementRole>}} has to be put inside the instance representation. This is valid for both example cases.

|             |             |
|:----------- |:----------- |
|{{< figure src="inline_splice_contacting.png" width="40%" title="Inline splice example">}}|When the direction of the inline splice shall be specified, it is necessary to create {{< vec-class PlacementPointReference>}}s underneath the {{< vec-class PlaceableElementRole>}}. They represent the spots of the splice which shall be placed in the topology instead of the whole splice itself. For the inline splice example  **two** {{< vec-class PlacementPointReference>}}s are required, referencing the {{< vec-class PlacementPoint>}}s from the master data definition.| 

### Contacting

Splices exist in 100% or 150% configurations (e.g. to create a ground distribution point for wires from different modules). 
The part master definition of the splice contains exactly one WireReception if it is an End-Splice. In case of an Inline (e.g. a Parallel Splice) the part master data definition contains as many Wirereceptions as directions exists from which a contacting can be realized.

Different predefined contacting variants (100%) of the splice are expressed by one {{< vec-class ContactPoint>}} per variant. If the splice has no variants, it defines just one {{< vec-class ContactPoint>}}. If the splice is undefined at design time and actual variants are only known at manufacturing time, one {{< vec-class ContactPoint>}} per {{< vec-class WireEnd >}} shall be used. 

If different configurations require different terminal / contacting material (e.g. crimp sleeves) the corresponding material needs to be expressed by a new splice instance (part master data + instance + contact points for all variants with new material). This is the same situation when a certain position can be realized with connector housing with different number of cavities. If different configurations require (different) additional material (e.g. sealings) it is also referenced from the {{< vec-class ContactPoint>}}s as _WireEndAccessory_.

For _inline splices_ (more than one  {{< vec-class WireReception >}}) there are situations where the allocation of wires to sides / wire receptions is free or is not explicitly defined. However, if it necessary to defines this assignment explicitly {{< vec-class WireMountingDetail>}}s are added to the {{< vec-class WireMounting>}} in the {{< vec-class ContactPoint>}}. The {{< vec-class WireMountingDetail>}} defines which {{< vec-class WireEnd >}}s are related to which {{< vec-class WireReceptionReference >}}. 

### Placement

The splice terminal is placed in the topology with a {{< vec-class Placement >}} contained in a {{< vec-class PlacementSpecification>}} and a {{< vec-class PlaceableElementRole>}} contained in the {{< vec-class OccurrenceOrUsage>}}. A detailed description can be found in the specification "{{< vec-diagram "topology-and-geometry/placement-and-dimensions" >}}" and corresponding [implementation guideline]({{< relref "../../placement-and-dimensions">}}).

If a splice has more than one {{< vec-class WireReception >}} and if it is required to define the exact orientation of the splice in the topology, or the splice has such a size that the exact positioning makes a geometrical difference (e.g. high voltage splices), then such a definition is possible in the VEC. 

A prerequisite for this is, that the topology has to define individual {{< vec-class TopologyNode >}}s for each {{< vec-class WireReceptionReference >}}, instead of one node, when orientation is irrelevant (see figure below).

{{< figure src="splice_topology.svg" numbered="true" lightbox="true"  title="TopologyNodes per WireReception"  width="70%">}}

The details of the placement are then defined with references between the corresponding {{< vec-class NodeLocation >}}s and the {{< vec-class PlacementPointReference >}}s representing the {{< vec-class WireReceptionReference >}}s (compare the instance diagram below).

{{< figure src="splice_placement_diagram.png" numbered="true" lightbox="true"  title="Placement of wire receptions"  width="80%">}}

{{% callout note %}}
These very detailed levels of representation are only required if the allocation of wires to specific receptions / sides of a splice shall be defined and/or the orientation of the splice in the topology is relevant. If this is not the case, {{< vec-class WireReceptionReference >}}s, {{< vec-class PlacementPointReference >}}s etc. can be omitted.
{{% /callout %}}


## XML-Example

The following XML listings show an example of splice instance with placed {{< vec-class WireReception>}}s

### Part Master Data
```xml
<DocumentVersion id="documentVersion_1">
        [...]
        <ReferencedPart>partVersion_1</ReferencedPart>
        <Specification id="wireReceptionSpecification_1" xsi:type="vec:WireReceptionSpecification" >
            <Identification>SpliceReception</Identification>
            <CoreCrossSectionArea id="valueRange_1">
                <Minimum>0.5</Minimum>
                <Maximum>1.5</Maximum>
                [...]
            </CoreCrossSectionArea>
        [...]
        </Specification>
        <Specification id="spliceTerminalSpecification_1" xsi:type="vec:SpliceTerminalSpecification">
            <Identification>Splice</Identification>
            <DescribedPart>partVersion_1</DescribedPart>
            <WireReception id="wireReception_1">
                <Identification>Left</Identification>
                <WireReceptionSpecification>wireReceptionSpecification_1</WireReceptionSpecification>
                <PlacementPoint>placementPoint_1</PlacementPoint>
            </WireReception>
            <WireReception id="wireReception_2">
                <Identification>Right</Identification>
                <WireReceptionSpecification>wireReceptionSpecification_1</WireReceptionSpecification>
                <PlacementPoint>placementPoint_2</PlacementPoint>
            </WireReception>
        </Specification>
        <Specification id="placeableElementSpecification_1" xsi:type="vec:PlaceableElementSpecification">
            <Identification>Pes</Identification>
            <PlacementPoint id="placementPoint_1">
                <Identification>First</Identification>
            </PlacementPoint>
            <PlacementPoint id="placementPoint_2">
                <Identification>Second</Identification>
            </PlacementPoint>
        </Specification>
        [...]
    </DocumentVersion>

     <PartVersion id="partVersion_1">
        <CompanyName>The VEC Company Ltd.</CompanyName>
        <PartNumber>007_123</PartNumber>
        <PartVersion>1</PartVersion>
        <PrimaryPartType>SpliceTerminal</PrimaryPartType>
    </PartVersion> 
```

### Instance
```xml
<PartOccurrence id="partOccurrence_1">
        <Role xsi:type="vec:PlaceableElementRole" id="placeableElementRole_1">
             <Identification>PlaceableElementRole</Identification>
             <PlaceableElementSpecification>placeableElementSpecification_1</PlaceableElementSpecification>
             <PlacementPointReference id="placementPointReference_1">
                 <Identification>placementPointReference_1</Identification>
                 <PlacementPoint>placementPoint_1</PlacementPoint>
             </PlacementPointReference>
             <PlacementPointReference id="placementPointReference_2">
                 <Identification>placementPointReference_2</Identification>
                 <PlacementPoint>placementPoint_2</PlacementPoint>
             </PlacementPointReference>
         </Role>
        <Role xsi:type="vec:SpliceTerminalRole" id="spliceTerminalRole_1">
            <Identification>SpliceTerminalRole</Identification>
            <TerminalSpecification>spliceTerminalSpecification_1</TerminalSpecification>
            <WireReceptionReference id="wireReceptionReference_1">
                <Identification>Left</Identification>
                <WireReception>wireReception_1</WireReception>
            </WireReceptionReference>
            <WireReceptionReference id="wireReceptionReference_2">
                <Identification>Right</Identification>
                <WireReception>wireReception_2</WireReception>
            </WireReceptionReference>
        </Role>
        <Part>partVersion_1</Part>
    </PartOccurrence>
```

### Placement
```xml
  <Specification xsi:type="vec:PlacementSpecification" id="placementSpecification_1">
        <Identification>PLACEMENT</Identification>
        <Placement xsi:type="vec:OnPointPlacement" id="placement_1">
            <Identification>Splice</Identification>
            <Location xsi:type="vec:NodeLocation" id="location_1">
                <Identification>Left</Identification>
                <ReferencedNode>node_1</ReferencedNode>
                <PlacedPlacementPoints>placementPointReference_1</PlacedPlacementPoints>
            </Location>
            <Location xsi:type="vec:NodeLocation" id="location_2">
                <Identification>Rigth</Identification>
                <ReferencedNode>node_2</ReferencedNode>
                <PlacedPlacementPoints>placementPointReference_2</PlacedPlacementPoints>
            </Location>
        </Placement>
        [...]
    </Specification>
    <Specification xsi:type="vec:TopologySpecification" id="topologySpecification_1">
        <TopologyNode id="node_1">
            <Identification>PNID1</Identification>
        </TopologyNode>
        <TopologyNode id="node_2">
            <Identification>PNID2</Identification>
        </TopologyNode>
    </Specification>
```