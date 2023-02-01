---
title: PlacementPointPosition
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - PlacementPointPosition
menu_name: vec-2.0.1
---
<p> Defines the position of a PlacementPoint within the coordinate system of the component. PlacementPoints are points where a component is attached to a <i>TopologySegment. </i>Therefor a <i>PlacementPointPosition</i> can define a tangent vector (in the coordinate system of the component) for a segment that is connected to the <i>PlacementPoint.</i>      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | local_geometry |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [LocalPosition]({{< relref "localposition.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|tangent| [CartesianVector3D]({{< relref "cartesianvector3d.md" >}}) | 0..1 | <p> A vector in the direction of the tangent on the <i>TopologySegment</i> that is attached to the <i>PlacementPoint</i> represented by this instance. The vector is defined in the coordinate system of the 3D model of the component.      </p> | [PlacementPointPosition]({{< relref "placementpointposition.md" >}}) |

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
        <td>placementPoint</td>
        <td><a href="{{< relref "placementpoint.md" >}}">PlacementPoint</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td></td>
    </tr>
    </tbody>
</table>




