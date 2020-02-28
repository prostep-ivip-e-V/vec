---
title: Zone
toc: false
type: specs
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Class
classes:
  - Zone
menu_name: vec-1.1.1
---
<p> A Zone divides a topology in different sections / design spaces. A Zone may be subdivided in further zones.      </p>

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
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the Zone (normally the name). The identification is guaranteed to be unique within the TopologySpecification. Over all VEC-documents a Zone-instance can be trusted to be the same if the TopologySpecification-instance is the same (see TopologySpecification) and the identification of the Zone is the same.      </p> | [Zone]({{< relref "zone.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the zone.      </p> | [Zone]({{< relref "zone.md" >}}) |
|ambientTemperature | [TemperatureInformation]({{< relref "temperatureinformation.md" >}}) | 0..1 | <p> Defines the ambient temperature that can occur in this zone. This can result in specific requirements for the used components.      </p> | [Zone]({{< relref "zone.md" >}}) |
|requiredRobustnessProperties | [RobustnessProperties]({{< relref "robustnessproperties.md" >}}) | 0..* | <p> Defines the robustness properties that are required in this zone. This can result in specific requirements for the used components (e.g. the ability for sealing).      </p> | [Zone]({{< relref "zone.md" >}}) |
|requiredSealingClass | [SealingClass]({{< relref "sealingclass.md" >}}) | 0..* | <p> Defines the <i>SealingClass</i> that is required in this <i>Zone.</i>      </p> | [Zone]({{< relref "zone.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Zone]({{< relref "zone.md" >}}) | subZone | 0..* | 0..1 | Specifies the sub Zones that are part the Zone. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [BuildingBlockSpecification3D]({{< relref "buildingblockspecification3d.md" >}}) | 0..* |  | 0..1 | References the Zone that is building block describes. |
| [Zone]({{< relref "zone.md" >}}) | 0..1 | subZone | 0..* | Specifies the sub Zones that are part the Zone. |
| [TopologySpecification]({{< relref "topologyspecification.md" >}}) | 0..1 | zone | 0..* | <p> Specifies the Zones that are part of the TopologySpecification.      </p> |
