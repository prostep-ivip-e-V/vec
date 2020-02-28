---
title: PlacementPointPosition
toc: false
type: specs
date: "2020-02-01"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - PlacementPointPosition
menu_name: vec-1.2.0
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
|tangent | [CartesianVector3D]({{< relref "cartesianvector3d.md" >}}) | 0..1 | <p> A vector in the direction of the tangent on the <i>TopologySegment</i> that is attached to the <i>PlacementPoint</i> represented by this instance. The vector is defined in the coordinate system of the 3D model of the component.      </p> | [PlacementPointPosition]({{< relref "placementpointposition.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PlacementPoint]({{< relref "placementpoint.md" >}}) | placementPoint | 1 | 0..* |  |
