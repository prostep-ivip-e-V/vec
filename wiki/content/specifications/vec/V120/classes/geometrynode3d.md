---
title: GeometryNode3D
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A GeometryNode3D is the geometric representation of a TopologyNode in 3D-space.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | geo_3d |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [GeometryNode]({{< relref "geometrynode.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [3D-Geometry]({{< relref "../topology-and-geometry/3d-geometry" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the GeometryNode. The identification is guaranteed to be unique within the corresponding BuildingBlockSpecification. Over all VEC-documents a GeometryNode-instance can be trusted to be the same if the BuildingBlockSpecification-instance is the same (see BuildingBlockSpecification) and the identification of the GeometryNode is the same.      </p>    </body> </html>  | [GeometryNode]({{< relref "geometrynode.md" >}}) |
|aliasId | [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies additional identifiers for the GeometryNode.      </p>    </body> </html>  | [GeometryNode]({{< relref "geometrynode.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [CartesianPoint3D]({{< relref "cartesianpoint3d.md" >}}) | cartesianPoint | 1 | 0..* | References the CartesianPoint3D where the GeometryNode3D is located.   |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [GeometrySegment3D]({{< relref "geometrysegment3d.md" >}}) | 0..* | endNode | 1 | References the GeometryNode3D where the GeometrySegment3D ends.   |
| [BuildingBlockSpecification3D]({{< relref "buildingblockspecification3d.md" >}}) | 1 | geometryNode | 0..* | Specifies the GeometryNode3Ds defined by the BuildingBlockSpecification3D.  |
| [GeometrySegment3D]({{< relref "geometrysegment3d.md" >}}) | 0..* | startNode | 1 | References the GeometryNode3D where the GeometrySegment3D starts.   |
