---
title: TopologyZone
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A <i>TopologyZone</i> divides a topology in different sections / design spaces. A <i>TopologyZone</i> may be subdivided in further <i>TopologyZone</i>. There can be multiple reasons for creating orthogonal sectionings on a <i>Topology</i>. Therefore <i>TopologyZones</i> can be overlapping.      </p>      <p> &#160;      </p>      <p> &#160;      </p>  </body> </html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | topology |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [3D-Geometry]({{< relref "../topology-and-geometry/3d-geometry" >}})<br/> [Topology Zones]({{< relref "../topology-and-geometry/topology-zones" >}})<br/> [Topology- and Topology Group Specification]({{< relref "../topology-and-geometry/topology--and-topology-group-specification" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the Zone (normally the name). The identification is guaranteed to be unique within the TopologySpecification. Over all VEC-documents a Zone-instance can be trusted to be the same if the TopologySpecification-instance is the same (see TopologySpecification) and the identification of the Zone is the same.      </p>    </body> </html>  | [TopologyZone]({{< relref "topologyzone.md" >}}) |
|type | [TopologyZoneType]({{< relref "topologyzonetype.md" >}}) | 0..1 | <html>   <head>     </head>   <body> The type of the TopologyZone. Valid values are defined in an OpenEnumeration.</body> </html> | [TopologyZone]({{< relref "topologyzone.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies additional, human readable information about the zone.      </p>    </body> </html>  | [TopologyZone]({{< relref "topologyzone.md" >}}) |
|ambientTemperature | [TemperatureInformation]({{< relref "temperatureinformation.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Defines the ambient temperature that can occur in this zone. This can result in specific requirements for the used components.      </p>    </body> </html>  | [TopologyZone]({{< relref "topologyzone.md" >}}) |
|requiredRobustnessProperties | [RobustnessProperties]({{< relref "robustnessproperties.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Defines the robustness properties that are required in this zone. This can result in specific requirements for the used components (e.g. the ability for sealing).      </p>    </body> </html>  | [TopologyZone]({{< relref "topologyzone.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [TopologyZone]({{< relref "topologyzone.md" >}}) | subZone | 0..* | 0..1 | <html>   <head>     </head>   <body> Specifies the sub <i>TopologyZones</i> that are part the <i>TopologyZone</i>. All <i>ZoneAssignments </i>defined for subZones are automatically inherited by the parent zone.</body> </html> |
| [ZoneAssignment]({{< relref "zoneassignment.md" >}}) | assignment | 0..* |  | <html>   <head>     </head>   <body> The assignments of specific topology elements to this zone.</body> </html> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [BuildingBlockSpecification3D]({{< relref "buildingblockspecification3d.md" >}}) | 0..* |  | 0..1 | <html>   <head>     </head>   <body> References the Zone that is building block represents. This shall be a TopologyZone with the type &quot;DmuZone&quot;.</body> </html> |
| [TopologyZone]({{< relref "topologyzone.md" >}}) | 0..1 | subZone | 0..* | <html>   <head>     </head>   <body> Specifies the sub <i>TopologyZones</i> that are part the <i>TopologyZone</i>. All <i>ZoneAssignments </i>defined for subZones are automatically inherited by the parent zone.</body> </html> |
| [TopologyZoneSpecification]({{< relref "topologyzonespecification.md" >}}) | 0..1 | zone | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the <i>TopologyZones</i> that are part of the <i>TopologyZoneSpecification</i>.      </p>  </body> </html> |
