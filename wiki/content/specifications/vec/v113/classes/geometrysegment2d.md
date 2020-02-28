---
title: GeometrySegment2D
toc: false
type: specs
date: "2017-02-21"
draft: false
specification: VEC
version: 1.1.3
documentType: "Recommendation"
elementType: Class
classes:
  - GeometrySegment2D
menu_name: vec-1.1.3
---
<p> A GeometrySegment2D is the geometric representation of a TopologySegment in 2D-space.      </p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | geo_2d |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [GeometrySegment]({{< relref "geometrysegment.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the GeometrySegment. The identification is guaranteed to be unique within the corresponding BuildingBlockSpecification. Over all VEC-documents a GeometrySegment-instance can be trusted to be the same if the BuildingBlockSpecification-instance is the same (see BuildingBlockSpecification) and the identification of the GeometrySegment is the same.      </p> | [GeometrySegment]({{< relref "geometrysegment.md" >}}) |
|aliasId | [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <p> Specifies additional identifiers for the GeometrySegment.      </p> | [GeometrySegment]({{< relref "geometrysegment.md" >}}) |
|startVector | [CartesianVector2D]({{< relref "cartesianvector2d.md" >}}) | 1 | <p>Specifies the start vector of the geometry segment. The start vector is a tangent to the segment at the start position. </p> | [GeometrySegment2D]({{< relref "geometrysegment2d.md" >}}) |
|endVector | [CartesianVector2D]({{< relref "cartesianvector2d.md" >}}) | 1 | <p>Specifies the end vector of the geometry segment. The end vector is a tangent to the segment at the end position. </p> | [GeometrySegment2D]({{< relref "geometrysegment2d.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [GeometryNode2D]({{< relref "geometrynode2d.md" >}}) | endNode | 1 | 0..* | References the GeometryNode2D where the GeometrySegment2D ends. |
| [PathSegment]({{< relref "pathsegment.md" >}}) | pathSegment | 0..* | 1 | Specifies an ordered list of PathSegments that describe the appearance of the GeometrySegment2D. The appearance is described by the concatenation of the PathSegments beginning at the startNode of the GeometrySegment2D. |
| [GeometryNode2D]({{< relref "geometrynode2d.md" >}}) | startNode | 1 | 0..* | References the GeometryNode2D where the GeometrySegment2D starts. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [BuildingBlockSpecification2D]({{< relref "buildingblockspecification2d.md" >}}) | 1 | geometrySegment | 0..* | Specifies the GeometrySegment2Ds defined by the BuildingBlockSpecification2D. |
