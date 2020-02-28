---
title: GeometryNode2D
toc: false
type: specs
date: "2020-02-01"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - GeometryNode2D
menu_name: vec-1.2.0
---
<p> A GeometryNode2D is the geometric representation of a TopologyNode in 2D-space.      </p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | geo_2d |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [GeometryNode]({{< relref "geometrynode.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the GeometryNode. The identification is guaranteed to be unique within the corresponding BuildingBlockSpecification. For all VEC-documents a GeometryNode-instance can be trusted to be the same if the BuildingBlockSpecification-instance is the same (see BuildingBlockSpecification) and the identification of the GeometryNode is the same.      </p> | [GeometryNode]({{< relref "geometrynode.md" >}}) |
|aliasId | [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <p> Specifies additional identifiers for the GeometryNode.      </p> | [GeometryNode]({{< relref "geometrynode.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [CartesianPoint2D]({{< relref "cartesianpoint2d.md" >}}) | cartesianPoint | 1 | 0..* | References the CartesianPoint2D where the GeometryNode2D is located. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [GeometrySegment2D]({{< relref "geometrysegment2d.md" >}}) | 0..* | endNode | 1 | References the GeometryNode2D where the GeometrySegment2D ends. |
| [BuildingBlockSpecification2D]({{< relref "buildingblockspecification2d.md" >}}) | 1 | geometryNode | 0..* | Specifies the GeometryNode2Ds defined by the BuildingBlockSpecification2D. |
| [GeometrySegment2D]({{< relref "geometrysegment2d.md" >}}) | 0..* | startNode | 1 | References the GeometryNode2D where the GeometrySegment2D starts. |
