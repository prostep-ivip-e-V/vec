---
title: Placement
toc: false
type: specs
date: "2022-03-09"
draft: false
specification: VEC
version: 2.0.0
documentType: "Recommendation"
elementType: Class
classes:
  - Placement
menu_name: vec-2.0.0
---
<p>A placement defines the placement of a PlaceableElementRole onto a Topology. For the definition of the place on the Topology, Locations are used. A Placement can either be a placement on discrete points (OnPointPlacement) or on an area of the topology (OnWayPlacement).  </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | placement |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | true |
| **Derived Classifiers** | [OnPointPlacement]({{< relref "onpointplacement.md" >}}), [OnWayPlacement]({{< relref "onwayplacement.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the Location. The identification is guaranteed to be unique within the PlacementSpecification.      </p> | [Placement]({{< relref "placement.md" >}}) |
|type | [String]({{< relref "string.md" >}}) | 0..1 | <p>Room to specify additional type information of the placement. </p> | [Placement]({{< relref "placement.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PlaceableElementRole]({{< relref "placeableelementrole.md" >}}) | placedElement | 1..* | 0..* | References the PlaceableElementRoles placed by the Placement. |
| [Placement]({{< relref "placement.md" >}}) | isOnTopOf | 0..* | 0..* | Specifies constraints on ordering of Placements. All referenced Placements must be below (nearer to the center of the Segment) this Placement.  (see KBLFRM-171) |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Placement]({{< relref "placement.md" >}}) | 0..* | isOnTopOf | 0..* | Specifies constraints on ordering of Placements. All referenced Placements must be below (nearer to the center of the Segment) this Placement.  (see KBLFRM-171) |
| [PlacementSpecification]({{< relref "placementspecification.md" >}}) | 1 | placement | 0..* | Specifies the Placements defined by the PlacementSpecification. |
