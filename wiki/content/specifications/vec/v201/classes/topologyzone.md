---
title: TopologyZone
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - TopologyZone
menu_name: vec-2.0.1
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
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the Zone (normally the name). The identification is guaranteed to be unique within the TopologySpecification. For all VEC-documents a Zone-instance can be trusted to be the same if the TopologySpecification-instance is the same (see TopologySpecification) and the identification of the Zone is the same.      </p> | [TopologyZone]({{< relref "topologyzone.md" >}}) |
|type| [TopologyZoneType]({{< relref "topologyzonetype.md" >}}) | 0..1 | <p> The type of the TopologyZone. Valid values are defined in an OpenEnumeration.      </p> | [TopologyZone]({{< relref "topologyzone.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the zone.      </p> | [TopologyZone]({{< relref "topologyzone.md" >}}) |
|ambientTemperature| [TemperatureInformation]({{< relref "temperatureinformation.md" >}}) | 0..1 | <p> Defines the ambient temperature that can occur in this zone. This can result in specific requirements for the used components.      </p> | [TopologyZone]({{< relref "topologyzone.md" >}}) |
|requiredRobustnessProperties| [RobustnessProperties]({{< relref "robustnessproperties.md" >}}) | 0..* | <p> Defines the robustness properties that are required in this zone. This can result in specific requirements for the used components (e.g. the ability for sealing).      </p> | [TopologyZone]({{< relref "topologyzone.md" >}}) |

## Outgoing Relations
<table>
    <thead>
        <tr>
           <th colspan="6">Other End</th>
           <th colspan="1">This End</th>
           <th colspan="1">General</th>
        </tr>
        <tr>
           <th>Role</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Agg.</th>
           <th>Unique</th>
           <th>Ordered</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>subZone</td>
        <td><a href="{{< relref "topologyzone.md" >}}">TopologyZone</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>0..1</td>
        <td><p> Specifies the sub <i>TopologyZones</i> that are part the <i>TopologyZone</i>. All <i>ZoneAssignments </i>defined for subZones are automatically inherited by the parent zone.      </p></td>
    </tr>
    <tr>
        <td>assignment</td>
        <td><a href="{{< relref "zoneassignment.md" >}}">ZoneAssignment</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td></td>
        <td><p> The assignments of specific topology elements to this zone.      </p></td>
    </tr>
    </tbody>
</table>

##  Incoming Relations
<table>
    <thead>
        <tr>
           <th colspan="5">This End</th>
           <th colspan="2">Other End</th>
           <th colspan="1">General</th>
        </tr>
        <tr>
           <th>Role</th>
           <th>Mult.</th>
           <th>Agg.</th>
           <th>Unique</th>
           <th>Ordered</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>subZone</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "topologyzone.md" >}}">TopologyZone</a></td>
        <td>0..1</td>
        <td><p> Specifies the sub <i>TopologyZones</i> that are part the <i>TopologyZone</i>. All <i>ZoneAssignments </i>defined for subZones are automatically inherited by the parent zone.      </p></td>
    </tr>
    <tr>
        <td>topologyZone</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "buildingblockspecification3d.md" >}}">BuildingBlockSpecification3D</a></td>
        <td>0..*</td>
        <td><p> References the Zone that is building block represents. This shall be a TopologyZone with the type &quot;DmuZone&quot;.      </p></td>
    </tr>
    <tr>
        <td>zone</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "topologyzonespecification.md" >}}">TopologyZoneSpecification</a></td>
        <td>0..1</td>
        <td><p> Specifies the <i>TopologyZones</i> that are part of the <i>TopologyZoneSpecification</i>.      </p></td>
    </tr>
    </tbody>
</table>



