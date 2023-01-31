---
title: ConfigurableElement
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - ConfigurableElement
menu_name: vec-2.0.1
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
        <td>configurationConstraint</td>
        <td><a href="{{< relref "configurationconstraint.md" >}}">ConfigurationConstraint</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td><p> Contains or more <i>ConfigurationContraints</i> that apply to this <i>ConfigurableElement.</i> This is explained in more details in the recommendation chapter / model diagram &quot;Variants&quot;.      </p></td>
    </tr>
    <tr>
        <td>{{< deprecated since="[]" reason="[]">}}applicationConstraint</td>
        <td><a href="{{< relref "applicationconstraint.md" >}}">ApplicationConstraint</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td></td>
        <td><p> <i>Deprecated since VEC&#160;V2.0.0. Use ConfigurationConstraints instead.</i>      </p>      <p> References the application constraints that apply to the ConfigurableElement.      </p></td>
    </tr>
    <tr>
        <td>{{< deprecated since="[]" reason="[]">}}configInfo</td>
        <td><a href="{{< relref "variantconfiguration.md" >}}">VariantConfiguration</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> <i>Deprecated since VEC&#160;V2.0.0. Use ConfigurationConstraints instead.</i>      </p>      <p> References the configuration information that applies to the ConfigurableElement.      </p></td>
    </tr>
    <tr>
        <td>associatedAssignmentGroups</td>
        <td><a href="{{< relref "assignmentgroup.md" >}}">AssignmentGroup</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td></td>
    </tr>
    </tbody>
</table>




