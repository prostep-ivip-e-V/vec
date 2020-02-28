---
title: PlaceableElementRole
toc: false
type: specs
date: "2020-02-01"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - PlaceableElementRole
menu_name: vec-1.2.0
---
<p>A PlaceableElementRole defines the instance specific properties and relationships of a PlaceableElement. </p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | placement |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Role]({{< relref "role.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the Role. The identification is guaranteed to be unique within the OccurrenceOrUsage.      </p> | [Role]({{< relref "role.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PlaceableElementSpecification]({{< relref "placeableelementspecification.md" >}}) | placeableElementSpecification | 1 | 0..* | <p> References the <i>PlaceableElementSpecification</i> that is instanced by this <i>PlaceableElementRole.</i>      </p> |
| [MeasurementPointReference]({{< relref "measurementpointreference.md" >}}) | measurementPointReference | 0..* | 1 |  |
| [PlacementPointReference]({{< relref "placementpointreference.md" >}}) | placementPointReference | 0..* | 1 |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Placement]({{< relref "placement.md" >}}) | 0..* | placedElement | 1..* | References the PlaceableElementRoles placed by the Placement. |
