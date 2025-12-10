---
title: "Topological Protection Requirements"
#linktitle: Link in Sidemenu
type: specs
# Table of Content on the right side. Only useful for large pages.
toc: true
authors: [becker]
tags: []
categories: []
date: 2025-12-08T00:00:00Z
draft: false
review: true
classes:
  - TopologySpecification
  - TopologyZoneSpecification
  - TopologyZone
  - ZoneAssignment
  - ZoneCoverage

history:
  - date: 2025-12-08T00:00:00Z
    description: "Routing Variants in the VEC"
    ghIusse: "1138"

menu:
  vec-guidelines:
    # Toplevel element. For sub sections the identifier of the subsection
    parent: Topology
    weight: 50

links:
  - icon_pack: fas
    icon: file-code
    name: topology.vec
    url: 'topology.vec'
    

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 100
---
{{< gh-review "1138">}}
## Background
During geometrical harness design (e.g. in 3D), certain sections of the electrical wiring harness may require additional protection — e.g., increased abrasion resistance or sound damping — due to the local mechanical or environmental conditions at the vehicle.

## Modelling Options

In the VEC, there are two relevant modeling approaches to express such requirements or solutions:

1. Using a {{< vec-class PartUsage>}} to define Requirements for a wire protection component.  
2. Using a {{< vec-class Topologyzone >}} to describe conditions and requirements implied by topology elements

This guideline explains when to use which approach and clarifies the validity of zones covering disjoint locations.

### `PartUsage`

A {{< vec-class PartUsage>}} represents a **placeholder component** that must later be realized as a {{< vec-class PartOccurrence>}} during detailed design and production preparation. The {{< vec-class PartOrUsageRelatedSpecification >}} referenced by the {{< vec-class PartUsage>}} express **requirements** for a wire protection component, that must be satisfied by the {{< vec-class PartOccurrence>}} selected later in the process,without defining the actual solution or specific component.

Use this approach when:

- You are already **defining the solution** for a requirement  
- It is known **what type** of protection will be installed (e.g. tape, tube, sleeve…)
- Placement along segments is already planned
- Properties of the planned protection need to be specified (e.g. {{<vec-class SoundDampingClass>}}, {{<vec-class RobustnessProperties>}}, {{<vec-class Material>}} etc.)

> **Statement expressed:**  
> “A wire protection component will be installed here, and here are its intended characteristics.”

### `TopologyZone`

A {{< vec-class Topologyzone >}} represents a **spatial condition** in the vehicle that imposes requirements on the harness.

Use this approach when:

- You want to express **requirements caused by the installation environment**
- No specific solution has yet been decided
- The affected topology areas may be **intermittent** (segments enter or exit the zone)

Examples:

- “Wet zone close to the ground”  
- “High-abrasion zone at specific contact points”
- Areas requiring **sound damping** due to vibration risk

> **Statement expressed:**  
> “Segments inside this zone must satisfy certain robustness or damping requirements.”

## Topology Zone Example

The following section explains how {{< vec-class Topologyzone >}}s work using a specific example. 
A description of the general concepts of topology zone modelling in the VEC can be in found in
Specification, Chapter "{{<vec-diagram "topology-and-geometry/topology-zones">}}".

The figure below shows a {{<vec-class TopologySegment >}} routed through different topology zones in a vehicle. 
Each zone represents an area with specific environmental conditions that impose requirements on the wiring harness.
In this example a _Hot Zone_ (red) and a _Wet Zone_ (blue) are defined. The example topology consists of three segments:

- `SEG-I`: Starts at `ND-I` in no specific zone, then enters the _Hot Zone_ at the location `Loc A` and ends at `ND-IV`, still in the _Hot Zone_.  
- `SEG-II`: Starts at `ND-IV` in the Hot Zone and ends at `ND-II` in no specific zone. It leaves the _Hot Zone_ at `Loc B`. On its way it passes through the _Wet Zone_ between locations `Loc C` and `Loc D`. Between `Loc C` and `Loc B` the segment is therefore in both zones simultaneously.
- `SEG-III`: Located entirely within the _Hot Zone_.

{{< figure src="topology-requirements.svg" lightbox="true" title="Topology Zones" numbered="true">}}

The assignments of the segments to the zones are modelled using {{< vec-class ZoneAssignment >}}s. Each assignment defines the relation between a {{< vec-class TopologySegment >}} and a {{< vec-class TopologyZone >}}. If the {{< vec-class TopologySegment >}} is only partially located within the {{< vec-class TopologyZone >}} a {{< vec-class ZoneCoverage >}} defines the start and end locations of the coverage on the segment. Multiple {{< vec-class ZoneCoverage >}}s can be defined for one {{< vec-class ZoneAssignment >}} to cover disjoint areas of a segment.

{{% callout note %}}
The zones are defined solely on the basis of the topology, which is ‘formless’ in the VEC. The spatial characteristics and shape of the topology zones are also not part of the VEC. The modelling of the topology zones and determining the corresponding intersections with the topology is the task of an engineering system. The topology zones in the VEC represent the result of this process.
{{% /callout %}}

The XML snippets in the following sections are taken from a consistent file representing the example above. For better readbability, some part of the XML are omitted. This is indicated by using `...` in the XML. The complete VEC file can be downloaded from the [Additional Resources]({{<relref "#additional-resources">}}) at the end of this page.

The definition consists of two relevant specifications: A {{< vec-class TopologySpecification >}} and {{< vec-class TopologyZoneSpecification >}} for the zones. In this example, both are contained in the same {{< vec-class DocumentVersion >}}. The definition of the topology looks as follows:

```xml
    ...
    <Specification xsi:type="vec:TopologySpecification" id="TopologySpecification_00002">
      <Identification>TOPOLOGY</Identification>
      <TopologyNode id="TopologyNode_00003">
        <Identification>ND-I</Identification>
      </TopologyNode>
      <TopologyNode id="TopologyNode_00004">
        <Identification>ND-II</Identification>
      </TopologyNode>
      <TopologyNode id="TopologyNode_00005">
        <Identification>ND-III</Identification>
      </TopologyNode>
      <TopologyNode id="TopologyNode_00006">
        <Identification>ND-IV</Identification>
      </TopologyNode>
      <TopologySegment id="TopologySegment_00007">
        <Identification>SEG-I</Identification>
        <EndNode>TopologyNode_00006</EndNode>
        <StartNode>TopologyNode_00003</StartNode>
        <LengthInformation id="SegmentLength_00008">
          <Length id="NumericalValue_00009">
            <UnitComponent>SIUnit_00037</UnitComponent>
            <ValueComponent>1100.0</ValueComponent>
          </Length>
          <Classification>Designed</Classification>
        </LengthInformation>
      </TopologySegment>
      <TopologySegment id="TopologySegment_00010">
        <Identification>SEG-II</Identification>
        <EndNode>TopologyNode_00004</EndNode>
        <StartNode>TopologyNode_00006</StartNode>
        ...
      </TopologySegment>
      <TopologySegment id="TopologySegment_00013">
        <Identification>SEG-III</Identification>
        <EndNode>TopologyNode_00006</EndNode>
        <StartNode>TopologyNode_00005</StartNode>
        ...
      </TopologySegment>
    </Specification>
    ...
```

The definition of the Zones is the following. The snippet shows the complete definition of the _Hot Zone_. The definition of the _Wet Zone_ is similar and therefore the assigment section is omitted here (see complete file for a full reference).

For `SEG-I` and `SEG-II` the assignment defines a {{< vec-class ZoneCoverage >}} to indicate the start and end locations of the coverage on the segment, since they are only partially within in the zone. If those segments had multiple areas where the interacted with zone, each area would be defined by an indiviual {{< vec-class ZoneCoverage >}}. `SEG-III` is entirely within the _Hot Zone_ and therefore does not need a coverage definition.
```xml
    ...
    <Specification xsi:type="vec:TopologyZoneSpecification" id="TopologyZoneSpecification_00016">
      <Identification>TOPOLOGY-ZONES</Identification>
      <Zone id="TopologyZone_00017">
        <Identification>HOT</Identification>
        <AmbientTemperature id="TemperatureInformation_00018">
          <TemperatureRange id="ValueRange_00019">
            <UnitComponent>SIUnit_00041</UnitComponent>
            <Minimum>-30.0</Minimum>
            <Maximum>125.0</Maximum>
          </TemperatureRange>
          <TemperatureType>AmbientTemperature</TemperatureType>
        </AmbientTemperature>
        <!-- SEG-I is partially within the Hot Zone, from Loc A to ND-IV -->
        <Assignment id="ZoneAssignment_00018">
          <AssignedSegment>TopologySegment_00007</AssignedSegment>
          <Coverage id="ZoneCoverage_00019">
            <FirstLocation xsi:type="vec:NodeLocation" id="NodeLocation_00020">
              <Identification>ND-IV</Identification>
              <ReferencedNode>TopologyNode_00006</ReferencedNode>
            </FirstLocation>
            <SecondLocation xsi:type="vec:SegmentLocation" id="SegmentLocation_00021">
              <Identification>Loc A</Identification>
              <Offset id="NumericalValue_00022">
                <UnitComponent>SIUnit_00037</UnitComponent>
                <ValueComponent>600.0</ValueComponent>
              </Offset>
              <Anchor>FromEndNode</Anchor>
              <ReferencedSegment>TopologySegment_00007</ReferencedSegment>
            </SecondLocation>
          </Coverage>
        </Assignment>
        <!-- SEG-II is partially within the Hot Zone, from ND-IV to Loc B -->
        <Assignment id="ZoneAssignment_00023">
          <AssignedSegment>TopologySegment_00010</AssignedSegment>          
          <Coverage id="ZoneCoverage_00024">
            <FirstLocation xsi:type="vec:NodeLocation" id="NodeLocation_00025">
              <Identification>ND-IV</Identification>
              <ReferencedNode>TopologyNode_00006</ReferencedNode>
            </FirstLocation>
            <SecondLocation xsi:type="vec:SegmentLocation" id="SegmentLocation_00026">
              <Identification>Loc B</Identification>
              <Offset id="NumericalValue_00027">
                <UnitComponent>SIUnit_00037</UnitComponent>
                <ValueComponent>500.0</ValueComponent>
              </Offset>
              <Anchor>FromStartNode</Anchor>
              <ReferencedSegment>TopologySegment_00010</ReferencedSegment>
            </SecondLocation>
          </Coverage>
        </Assignment>
        <!-- SEG-III is entirely within the Hot Zone -->
        <Assignment id="ZoneAssignment_00028">
          <AssignedSegment>TopologySegment_00013</AssignedSegment>
        </Assignment>
      </Zone>
       <Zone id="TopologyZone_00031">
        <Identification>WET</Identification>
        <RequiredRobustnessProperties id="RobustnessProperties_00032">
          <Class>LiquidIngressProtection</Class>
          <ClassKey>9K</ClassKey>
          <ClassReferenceSystem>ISO 20653</ClassReferenceSystem>
          <HasRobustness>true</HasRobustness>
        </RequiredRobustnessProperties>
        ...
      </Zone>
      ...
    </Specification>
    ...
```