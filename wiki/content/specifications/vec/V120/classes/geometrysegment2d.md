---
title: GeometrySegment2D
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A GeometrySegment2D is the geometric representation of a TopologySegment in 2D-space.      </p>    </body> </html> 
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
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the GeometrySegment. The identification is guaranteed to be unique within the corresponding BuildingBlockSpecification. Over all VEC-documents a GeometrySegment-instance can be trusted to be the same if the BuildingBlockSpecification-instance is the same (see BuildingBlockSpecification) and the identification of the GeometrySegment is the same.      </p>    </body> </html>  | [GeometrySegment]({{< relref "geometrysegment.md" >}}) |
|aliasId | [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies additional identifiers for the GeometrySegment.      </p>    </body> </html>  | [GeometrySegment]({{< relref "geometrysegment.md" >}}) |
|startVector | [CartesianVector2D]({{< relref "cartesianvector2d.md" >}}) | 1 | <html><body><p>Specifies the start vector of the geometry segment. The start vector is a tangent to the segment at the start position. </p></body></html> | [GeometrySegment2D]({{< relref "geometrysegment2d.md" >}}) |
|endVector | [CartesianVector2D]({{< relref "cartesianvector2d.md" >}}) | 1 | <html><body><p>Specifies the end vector of the geometry segment. The end vector is a tangent to the segment at the end position. </p></body></html> | [GeometrySegment2D]({{< relref "geometrysegment2d.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [GeometryNode2D]({{< relref "geometrynode2d.md" >}}) | startNode | 1 | 0..* | References the GeometryNode2D where the GeometrySegment2D starts.   |
| [GeometryNode2D]({{< relref "geometrynode2d.md" >}}) | endNode | 1 | 0..* | References the GeometryNode2D where the GeometrySegment2D ends.   |
| [PathSegment]({{< relref "pathsegment.md" >}}) | pathSegment | 0..* | 1 | Specifies an ordered list of PathSegments that describe the appearance of the GeometrySegment2D. The appearance is described by the concatenation of the PathSegments beginning at the startNode of the GeometrySegment2D.  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [BuildingBlockSpecification2D]({{< relref "buildingblockspecification2d.md" >}}) | 1 | geometrySegment | 0..* | Specifies the GeometrySegment2Ds defined by the BuildingBlockSpecification2D.  |
