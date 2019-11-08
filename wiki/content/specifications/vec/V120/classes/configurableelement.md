---
title: ConfigurableElement
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Abstract base class for all elements which can be configured with a VariantConfiguration.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | core |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | true |
| **Derived Classifiers** | [BuildingBlockPositioning2D]({{< relref "buildingblockpositioning2d.md" >}}), [BuildingBlockPositioning3D]({{< relref "buildingblockpositioning3d.md" >}}), [CavityCoupling]({{< relref "cavitycoupling.md" >}}), [ComponentConnector]({{< relref "componentconnector.md" >}}), [ComponentNode]({{< relref "componentnode.md" >}}), [ComponentPort]({{< relref "componentport.md" >}}), [ConnectionEnd]({{< relref "connectionend.md" >}}), [ConnectionGroup]({{< relref "connectiongroup.md" >}}), [ContactPoint]({{< relref "contactpoint.md" >}}), [CouplingPoint]({{< relref "couplingpoint.md" >}}), [Dimension]({{< relref "dimension.md" >}}), [ExtensionSlot]({{< relref "extensionslot.md" >}}), [ExtensionSlotReference]({{< relref "extensionslotreference.md" >}}), [GeometryNode]({{< relref "geometrynode.md" >}}), [GeometrySegment]({{< relref "geometrysegment.md" >}}), [HousingComponent]({{< relref "housingcomponent.md" >}}), [HousingComponentReference]({{< relref "housingcomponentreference.md" >}}), [InternalComponentConnection]({{< relref "internalcomponentconnection.md" >}}), [MatingPoint]({{< relref "matingpoint.md" >}}), [Net]({{< relref "net.md" >}}), [NetGroup]({{< relref "netgroup.md" >}}), [NetworkNode]({{< relref "networknode.md" >}}), [NetworkPort]({{< relref "networkport.md" >}}), [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}}), [PinComponent]({{< relref "pincomponent.md" >}}), [PinComponentBehavior]({{< relref "pincomponentbehavior.md" >}}), [PinComponentReference]({{< relref "pincomponentreference.md" >}}), [Placement]({{< relref "placement.md" >}}), [RoutableElement]({{< relref "routableelement.md" >}}), [Routing]({{< relref "routing.md" >}}), [SlotCoupling]({{< relref "slotcoupling.md" >}}), [SwitchingState]({{< relref "switchingstate.md" >}}), [TopologyNode]({{< relref "topologynode.md" >}}), [TopologySegment]({{< relref "topologysegment.md" >}}), [TopologyZone]({{< relref "topologyzone.md" >}}), [UsageNode]({{< relref "usagenode.md" >}}) |


## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [ApplicationConstraint]({{< relref "applicationconstraint.md" >}}) | applicationConstraint | 0..* |  | <html>   <head>     </head>   <body>     <p> References the application constraints that apply to the ConfigurableElement.      </p>  </body> </html> |
| [VariantConfiguration]({{< relref "variantconfiguration.md" >}}) | configInfo | 0..1 | 0..* | References the configuration information that applies to the ConfigurableElement.  |
