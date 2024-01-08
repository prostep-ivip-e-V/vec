---
title: ConfigurableElement
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - ConfigurableElement
menu_name: vec-2.1.0
---
<p> Abstract base class for all elements which can be configured with a VariantConfiguration.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | core |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | true |
| **Derived Classifiers** | [BuildingBlockPositioning2D]({{< relref "buildingblockpositioning2d.md" >}}), [BuildingBlockPositioning3D]({{< relref "buildingblockpositioning3d.md" >}}), [CavityCoupling]({{< relref "cavitycoupling.md" >}}), [ComponentConnector]({{< relref "componentconnector.md" >}}), [ComponentNode]({{< relref "componentnode.md" >}}), [ComponentPort]({{< relref "componentport.md" >}}), [ConnectionEnd]({{< relref "connectionend.md" >}}), [ConnectionGroup]({{< relref "connectiongroup.md" >}}), [ContactPoint]({{< relref "contactpoint.md" >}}), [CouplingPoint]({{< relref "couplingpoint.md" >}}), [Dimension]({{< relref "dimension.md" >}}), [ExtensionSlot]({{< relref "extensionslot.md" >}}), [ExtensionSlotReference]({{< relref "extensionslotreference.md" >}}), [GeometryNode]({{< relref "geometrynode.md" >}}), [GeometrySegment]({{< relref "geometrysegment.md" >}}), [HousingComponent]({{< relref "housingcomponent.md" >}}), [HousingComponentReference]({{< relref "housingcomponentreference.md" >}}), [InternalComponentConnection]({{< relref "internalcomponentconnection.md" >}}), [MatingPoint]({{< relref "matingpoint.md" >}}), [Net]({{< relref "net.md" >}}), [NetGroup]({{< relref "netgroup.md" >}}), [NetworkNode]({{< relref "networknode.md" >}}), [NetworkPort]({{< relref "networkport.md" >}}), [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}}), [PinComponent]({{< relref "pincomponent.md" >}}), [PinComponentBehavior]({{< relref "pincomponentbehavior.md" >}}), [PinComponentReference]({{< relref "pincomponentreference.md" >}}), [Placement]({{< relref "placement.md" >}}), [RoutableElement]({{< relref "routableelement.md" >}}), [Routing]({{< relref "routing.md" >}}), [SignalGraph]({{< relref "signalgraph.md" >}}), [SignalGraphEdge]({{< relref "signalgraphedge.md" >}}), [SignalGraphNode]({{< relref "signalgraphnode.md" >}}), [SignalGraphRelation]({{< relref "signalgraphrelation.md" >}}), [SlotCoupling]({{< relref "slotcoupling.md" >}}), [SwitchingState]({{< relref "switchingstate.md" >}}), [TopologyNode]({{< relref "topologynode.md" >}}), [TopologySegment]({{< relref "topologysegment.md" >}}), [TopologyZone]({{< relref "topologyzone.md" >}}), [UsageNode]({{< relref "usagenode.md" >}}) |

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
           <th>Agg.{{< info agg >}}</th>
           <th>Unique{{< info unique >}}</th>
           <th>Ordered{{< info ordered >}}</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
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
    <tr>
        <td>configInfo</td>
        <td><a href="{{< relref "variantconfiguration.md" >}}">VariantConfiguration</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>{{< deprecated since="2.0.0" reason="Replaced with ConfigurationConstraint.">}}<p> References the configuration information that applies to the ConfigurableElement.      </p></td>
    </tr>
    <tr>
        <td>configurationConstraint</td>
        <td><a href="{{< relref "configurationconstraint.md" >}}">ConfigurationConstraint</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>0..1</td>
        <td>{{< deprecated since="2.0.2" reason="The relationship has been inverted, allowing external configuration of ConfigurableElements. The ConfigurationConstraint is now contained in its own Specification.">}}<p> Contains or more <i>ConfigurationContraints</i> that apply to this <i>ConfigurableElement.</i> This is explained in more details in the recommendation chapter / model diagram &quot;Variants&quot;.      </p></td>
    </tr>
    <tr>
        <td>applicationConstraint</td>
        <td><a href="{{< relref "applicationconstraint.md" >}}">ApplicationConstraint</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td></td>
        <td>{{< deprecated since="2.0.0" reason="Replaced with ConfigurationConstraint.">}}<p> References the application constraints that apply to the ConfigurableElement.      </p></td>
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
           <th>Agg.{{< info agg >}}</th>
           <th>Unique{{< info unique >}}</th>
           <th>Ordered{{< info ordered >}}</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>constrainedElements</td>
        <td>1..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "configurationconstraint.md" >}}">ConfigurationConstraint</a></td>
        <td>0..*</td>
        <td><p> Introduced with VEC V2.0.2. References the <i>ConfigurableElement</i>s that are constrained by this <i>ConfigurationConstraint.</i> This association shall only be used in combination with a containment in a <i>ConfigurationConstraintSpecification.</i> When using the deprecated containment in the <i>ConfigurableElement </i>it shall not be used.      </p></td>
    </tr>
    <tr>
        <td>representedElement</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "signalgraphnode.md" >}}">SignalGraphNode</a></td>
        <td></td>
        <td><p> References the <i>ConfigurableElement</i> that is represented by a <i>SignalGraphNode.</i> This is expected to be some physical element of the vehicle network, that participates in signal transmission. In many cases this will be an <i>OccurrenceOrUsage</i>, however in some cases sub elements of the <i>OccurrenceOrUsage </i>might be relevant, e.g. a <i>PinComponentReference</i> or a <i>WireElementReference.</i>      </p></td>
    </tr>
    </tbody>
</table>



