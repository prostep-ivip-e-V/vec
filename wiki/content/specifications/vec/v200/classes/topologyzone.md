---
title: TopologyZone
toc: false
type: specs
date: "2021-11-30"
draft: false
specification: VEC
version: 2.0.0-rc1
documentType: "Recommendation"
elementType: Class
classes:
  - TopologyZone
menu_name: vec-2.0.0-rc1
---
<p> A <i>TopologyZone</i> divides a topology in different sections / design spaces. A <i>TopologyZone</i> may be subdivided in further <i>TopologyZone</i>. There can be multiple reasons for creating an orthogonal sectioning on a <i>Topology</i>. Therefore, <i>TopologyZones</i> can be overlapping.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | topology |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the Zone (normally the name). The identification is guaranteed to be unique within the TopologySpecification. For all VEC-documents a Zone-instance can be trusted to be the same if the TopologySpecification-instance is the same (see TopologySpecification) and the identification of the Zone is the same.      </p> | [TopologyZone]({{< relref "topologyzone.md" >}}) |
|type | [TopologyZoneType]({{< relref "topologyzonetype.md" >}}) | 0..1 | <p> The type of the TopologyZone. Valid values are defined in an OpenEnumeration.      </p> | [TopologyZone]({{< relref "topologyzone.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the zone.      </p> | [TopologyZone]({{< relref "topologyzone.md" >}}) |
|ambientTemperature | [TemperatureInformation]({{< relref "temperatureinformation.md" >}}) | 0..1 | <p> Defines the ambient temperature that can occur in this zone. This can result in specific requirements for the used components.      </p> | [TopologyZone]({{< relref "topologyzone.md" >}}) |
|requiredRobustnessProperties | [RobustnessProperties]({{< relref "robustnessproperties.md" >}}) | 0..* | <p> Defines the robustness properties that are required in this zone. This can result in specific requirements for the used components (e.g. the ability for sealing).      </p> | [TopologyZone]({{< relref "topologyzone.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [TopologyZone]({{< relref "topologyzone.md" >}}) | subZone | 0..* | 0..1 | <p> Specifies the sub <i>TopologyZones</i> that are part the <i>TopologyZone</i>. All <i>ZoneAssignments </i>defined for subZones are automatically inherited by the parent zone.      </p> |
| [ZoneAssignment]({{< relref "zoneassignment.md" >}}) | assignment | 0..* |  | <p> The assignments of specific topology elements to this zone.      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [BuildingBlockSpecification3D]({{< relref "buildingblockspecification3d.md" >}}) | 0..* |  | 0..1 | <p> References the Zone that is building block represents. This shall be a TopologyZone with the type &quot;DmuZone&quot;.      </p> |
| [TopologyZone]({{< relref "topologyzone.md" >}}) | 0..1 | subZone | 0..* | <p> Specifies the sub <i>TopologyZones</i> that are part the <i>TopologyZone</i>. All <i>ZoneAssignments </i>defined for subZones are automatically inherited by the parent zone.      </p> |
| [TopologyZoneSpecification]({{< relref "topologyzonespecification.md" >}}) | 0..1 | zone | 0..* | <p> Specifies the <i>TopologyZones</i> that are part of the <i>TopologyZoneSpecification</i>.      </p> |
