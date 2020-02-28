---
title: OnPointPlacement
toc: false
type: specs
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Class
classes:
  - OnPointPlacement
menu_name: vec-1.1.1
---
<p>An OnPointPlacement is a placement of an OccurrenceOrUsage that places it onto discrete points, in most cases one point. In some cases it is necessary to place a component (with more than one reference point) onto multiple points (e.g. a cable channel).  </p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | placement |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Placement]({{< relref "placement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the Location. The identification is guaranteed to be unique within the PlacementSpecification.      </p> | [Placement]({{< relref "placement.md" >}}) |
|type | [String]({{< relref "string.md" >}}) | 0..1 | <p>Room to specify additional type information of the placement. </p> | [Placement]({{< relref "placement.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Location]({{< relref "location.md" >}}) | location | 1..* | 0..1 | References the Locations where Placement places the reference points of the placed element. |
