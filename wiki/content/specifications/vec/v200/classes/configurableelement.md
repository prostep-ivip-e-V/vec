---
title: ConfigurableElement
toc: false
type: specs
date: "2021-11-30"
draft: false
specification: VEC
version: 2.0.0-rc1
documentType: "Recommendation"
elementType: Class
classes:
  - ConfigurableElement
menu_name: vec-2.0.0-rc1
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
| [ApplicationConstraint]({{< relref "applicationconstraint.md" >}}) | applicationConstraint | 0..* |  | <p> <i>Deprecated since VEC&#160;V2.0.0. Use ConfigurationConstraints instead.</i>      </p>      <p> References the application constraints that apply to the ConfigurableElement.      </p> |
| [ConfigurationConstraint]({{< relref "configurationconstraint.md" >}}) | configurationConstraint | 0..* | 1 | <p> Contains or more <i>ConfigurationContraints</i> that apply to this <i>ConfigurableElement.</i> This is explained in more details in the recommendation chapter / model diagram &quot;Variants&quot;.      </p> |
| [AssignmentGroup]({{< relref "assignmentgroup.md" >}}) | associatedAssignmentGroups | 0..* | 0..* |  |
| [VariantConfiguration]({{< relref "variantconfiguration.md" >}}) | configInfo | 0..1 | 0..* | <p> <i>Deprecated since VEC&#160;V2.0.0. Use ConfigurationConstraints instead.</i>      </p>      <p> References the configuration information that applies to the ConfigurableElement.      </p> |
