---
title: PlacementPointPosition
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body> Defines the position of a PlacementPoint within the coordinate system of the component. PlacementPoints are points where a component is attached to a <i>TopologySegment. </i>Therefor a <i>PlacementPointPosition</i> can define a tangent vector (in the coordinate system of the component) for a segment that is connected to the <i>PlacementPoint.</i></body> </html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | local_geometry |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [LocalPosition]({{< relref "localposition.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Coordinate Systems of Components]({{< relref "../description-of-components/coordinate-systems-of-components" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|tangent | [CartesianVector3D]({{< relref "cartesianvector3d.md" >}}) | 0..1 | <html>   <head>     </head>   <body> A vector in the direction of the tangent on the <i>TopologySegment</i> that is attached to the <i>PlacementPoint</i> represented by this instance. The vector is defined in the coordinate system of the 3D model of the component.</body> </html> | [PlacementPointPosition]({{< relref "placementpointposition.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PlacementPoint]({{< relref "placementpoint.md" >}}) | placementPoint | 1 | 0..* |  |
