---
title: GeometryNode3D
toc: false
type: specs
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Class
classes:
  - GeometryNode3D
menu_name: vec-1.1.2
---
<p> A GeometryNode3D is the geometric representation of a TopologyNode in 3D-space.      </p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | geo_3d |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [GeometryNode]({{< relref "geometrynode.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the GeometryNode. The identification is guaranteed to be unique within the corresponding BuildingBlockSpecification. Over all VEC-documents a GeometryNode-instance can be trusted to be the same if the BuildingBlockSpecification-instance is the same (see BuildingBlockSpecification) and the identification of the GeometryNode is the same.      </p> | [GeometryNode]({{< relref "geometrynode.md" >}}) |
|aliasId | [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <p> Specifies additional identifiers for the GeometryNode.      </p> | [GeometryNode]({{< relref "geometrynode.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [CartesianPoint3D]({{< relref "cartesianpoint3d.md" >}}) | cartesianPoint | 1 | 0..* | References the CartesianPoint3D where the GeometryNode3D is located. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [GeometrySegment3D]({{< relref "geometrysegment3d.md" >}}) | 0..* | endNode | 1 | References the GeometryNode3D where the GeometrySegment3D ends. |
| [BuildingBlockSpecification3D]({{< relref "buildingblockspecification3d.md" >}}) | 1 | geometryNode | 0..* | Specifies the GeometryNode3Ds defined by the BuildingBlockSpecification3D. |
| [GeometrySegment3D]({{< relref "geometrysegment3d.md" >}}) | 0..* | startNode | 1 | References the GeometryNode3D where the GeometrySegment3D starts. |
