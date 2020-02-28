---
title: Location
toc: false
type: specs
date: "2017-02-21"
draft: false
specification: VEC
version: 1.1.3
documentType: "Recommendation"
elementType: Class
classes:
  - Location
menu_name: vec-1.1.3
---
<p>A Location specifies a distinct position on a topology. Locations can be used for the placement of components or for the definition of Dimensions.  </p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | placement |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [DimensionAnchor]({{< relref "dimensionanchor.md" >}})<br/>  |
| **Is Abstract**         | true |
| **Derived Classifiers** | [NodeLocation]({{< relref "nodelocation.md" >}}), [SegmentLocation]({{< relref "segmentlocation.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the Location. The identification is guaranteed to be unique within the PlacementSpecification.      </p> | [Location]({{< relref "location.md" >}}) |
|matchingId | [String]({{< relref "string.md" >}}) | 0..1 | <p>Specifies an identification for matching the location with a reference point of component (e.g. a cable channel).  </p> | [Location]({{< relref "location.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PlacementPointReference]({{< relref "placementpointreference.md" >}}) | placedPlacementPoints | 0..* | 0..* | <p> References the <i>PlacementPointReference </i>that is placed by this location.      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Dimension]({{< relref "dimension.md" >}}) | 1 | definedLocations | 0..2 |  |
| [OnWayPlacement]({{< relref "onwayplacement.md" >}}) | 0..1 | endLocation | 1 | References the Location where OnWayPlacement ends. |
| [OnPointPlacement]({{< relref "onpointplacement.md" >}}) | 0..1 | location | 1..* | References the Locations where Placement places the reference points of the placed element. |
| [OnWayPlacement]({{< relref "onwayplacement.md" >}}) | 0..1 | startLocation | 1 | References the Location where OnWayPlacement starts. |
