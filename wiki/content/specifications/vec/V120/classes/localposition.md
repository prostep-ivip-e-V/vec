---
title: LocalPosition
toc: false
type: specs
date: "2020-05-11"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - LocalPosition
menu_name: vec-1.2.0
---
<p> A<i> LocalPosition </i>defines the position of a relevant point of component within the coordinate system of the component.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | local_geometry |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | true |
| **Derived Classifiers** | [MeasurePointPosition]({{< relref "measurepointposition.md" >}}), [PlacementPointPosition]({{< relref "placementpointposition.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [CartesianPoint3D]({{< relref "cartesianpoint3d.md" >}}) | cartesianPoint | 1 | 0..* |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [LocalGeometrySpecification]({{< relref "localgeometryspecification.md" >}}) | 1 | positions | 0..* | <p> All position defined by this <i>LocalGeometrySpecification.</i>      </p> |
