---
title: ConfigurableElement
toc: false
type: specs
date: "2020-02-01"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - ConfigurableElement
menu_name: vec-1.2.0
---
<p> Abstract base class for all elements which can be configured with a VariantConfiguration.      </p>

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
| [AssignmentGroup]({{< relref "assignmentgroup.md" >}}) | associatedAssignmentGroups | 0..* | 0..* |  |
| [ApplicationConstraint]({{< relref "applicationconstraint.md" >}}) | applicationConstraint | 0..* |  | <p> References the application constraints that apply to the ConfigurableElement.      </p> |
| [VariantConfiguration]({{< relref "variantconfiguration.md" >}}) | configInfo | 0..1 | 0..* | References the configuration information that applies to the ConfigurableElement. |
