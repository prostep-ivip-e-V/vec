﻿---
title: PlacementPointReference
toc: false
type: specs
date: "2022-01-18"
draft: false
specification: VEC
version: 1.2.2
documentType: "Recommendation"
elementType: Class
classes:
  - PlacementPointReference
menu_name: vec-1.2.2
---
<p> A <i>PlacementPointReference</i> is the instance of a <i>PlacementPoint</i> in the context of an <i>OccurrenceOrUsage</i>.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | placement |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the PlacementPointReference. The identification is guaranteed to be unique within the containing PlaceableElementRole.      </p> | [PlacementPointReference]({{< relref "placementpointreference.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PlacementPoint]({{< relref "placementpoint.md" >}}) | placementPoint | 1 | 0..* | <p> References the <i>PlacementPoint</i> that is instanced by this <i>PlacementPointReference.</i>      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Location]({{< relref "location.md" >}}) | 0..* | placedPlacementPoints | 0..* | <p> References the <i>PlacementPointReference </i>that is placed by this location.      </p> |
| [PlaceableElementRole]({{< relref "placeableelementrole.md" >}}) | 1 | placementPointReference | 0..* |  |
