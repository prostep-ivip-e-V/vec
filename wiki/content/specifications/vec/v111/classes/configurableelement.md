---
title: ConfigurableElement
toc: false
type: specs
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Class
classes:
  - ConfigurableElement
menu_name: vec-1.1.1
---
<p> Abstract base class for all elements which can be configured with a VariantConfiguration.      </p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | core |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | true |
| **Derived Classifiers** | [BuildingBlockPositioning2D]({{< relref "buildingblockpositioning2d.md" >}}), [BuildingBlockPositioning3D]({{< relref "buildingblockpositioning3d.md" >}}), [ComponentNode]({{< relref "componentnode.md" >}}), [ComponentPort]({{< relref "componentport.md" >}}), [ConnectionEnd]({{< relref "connectionend.md" >}}), [ConnectionGroup]({{< relref "connectiongroup.md" >}}), [ContactPoint]({{< relref "contactpoint.md" >}}), [Dimension]({{< relref "dimension.md" >}}), [GeometryNode]({{< relref "geometrynode.md" >}}), [GeometrySegment]({{< relref "geometrysegment.md" >}}), [MatingPoint]({{< relref "matingpoint.md" >}}), [Net]({{< relref "net.md" >}}), [NetGroup]({{< relref "netgroup.md" >}}), [NetworkNode]({{< relref "networknode.md" >}}), [NetworkPort]({{< relref "networkport.md" >}}), [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}}), [Path]({{< relref "path.md" >}}), [PinComponentBehavior]({{< relref "pincomponentbehavior.md" >}}), [Placement]({{< relref "placement.md" >}}), [RoutableElement]({{< relref "routableelement.md" >}}), [Routing]({{< relref "routing.md" >}}), [TopologyNode]({{< relref "topologynode.md" >}}), [TopologySegment]({{< relref "topologysegment.md" >}}), [UsageNode]({{< relref "usagenode.md" >}}), [Zone]({{< relref "zone.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [VariantConfiguration]({{< relref "variantconfiguration.md" >}}) | configInfo | 0..1 | 0..* | References the configuration information that applies to the ConfigurableElement. |
