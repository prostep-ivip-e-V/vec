﻿---
title: GeometrySegment3D
toc: false
type: specs
date: "2022-01-18"
draft: false
specification: VEC
version: 1.2.2
documentType: "Recommendation"
elementType: Class
classes:
  - GeometrySegment3D
menu_name: vec-1.2.2
---
<p> A GeometrySegment3D is the geometric representation of a TopologySegment in 3D-space.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | geo_3d |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [GeometrySegment]({{< relref "geometrysegment.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the GeometrySegment. The identification is guaranteed to be unique within the corresponding BuildingBlockSpecification. For all VEC-documents a GeometrySegment-instance can be trusted to be the same if the BuildingBlockSpecification-instance is the same (see BuildingBlockSpecification) and the identification of the GeometrySegment is the same.      </p> | [GeometrySegment]({{< relref "geometrysegment.md" >}}) |
|aliasId | [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <p> Specifies additional identifiers for the GeometrySegment.      </p> | [GeometrySegment]({{< relref "geometrysegment.md" >}}) |
|startVector | [CartesianVector3D]({{< relref "cartesianvector3d.md" >}}) | 1 | <p>Specifies the start vector of the geometry segment. The start vector is a tangent to the segment at the start position. </p> | [GeometrySegment3D]({{< relref "geometrysegment3d.md" >}}) |
|endVector | [CartesianVector3D]({{< relref "cartesianvector3d.md" >}}) | 1 | <p>Specifies the end vector of the geometry segment. The end vector is a tangent to the segment at the end position. </p> | [GeometrySegment3D]({{< relref "geometrysegment3d.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [GeometryNode3D]({{< relref "geometrynode3d.md" >}}) | endNode | 1 | 0..* | References the GeometryNode3D where the GeometrySegment3D ends. |
| [Curve3D]({{< relref "curve3d.md" >}}) | curve | 0..* |  | <p> Specifies an ordered list of curves which describe the centerline of the segment. If a segment is described by more than one curve, the centrelines of the individual curves are aligned in the order of this association.      </p> |
| [GeometryNode3D]({{< relref "geometrynode3d.md" >}}) | startNode | 1 | 0..* | References the GeometryNode3D where the GeometrySegment3D starts. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [BuildingBlockSpecification3D]({{< relref "buildingblockspecification3d.md" >}}) | 1 | geometrySegment | 0..* | <p> Specifies the GeometrySegment3Ds defined by the BuildingBlockSpecification3D.      </p> |
