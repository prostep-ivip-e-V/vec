---
title: GeometrySegment2D
toc: false
type: specs
date: "2023-03-24"
draft: false
specification: VEC
version: 2.0.2
documentType: "Recommendation"
elementType: Class
classes:
  - GeometrySegment2D
menu_name: vec-2.0.2
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
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the GeometrySegment. The identification is guaranteed to be unique within the corresponding BuildingBlockSpecification. For all VEC-documents a GeometrySegment-instance can be trusted to be the same if the BuildingBlockSpecification-instance is the same (see BuildingBlockSpecification) and the identification of the GeometrySegment is the same.      </p> | [GeometrySegment]({{< relref "geometrysegment.md" >}}) |
|aliasId| [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <p> Specifies additional identifiers for the GeometrySegment.      </p> | [GeometrySegment]({{< relref "geometrysegment.md" >}}) |
|startVector| [CartesianVector2D]({{< relref "cartesianvector2d.md" >}}) | 1 | <p>Specifies the start vector of the geometry segment. The start vector is a tangent to the segment at the start position. </p> | [GeometrySegment2D]({{< relref "geometrysegment2d.md" >}}) |
|endVector| [CartesianVector2D]({{< relref "cartesianvector2d.md" >}}) | 1 | <p>Specifies the end vector of the geometry segment. The end vector is a tangent to the segment at the end position. </p> | [GeometrySegment2D]({{< relref "geometrysegment2d.md" >}}) |

## Outgoing Relations
<table>
    <thead>
        <tr>
           <th colspan="6">Other End</th>
           <th colspan="1">This End</th>
           <th colspan="1">General</th>
        </tr>
        <tr>
           <th>Role</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Agg.{{< info agg >}}</th>
           <th>Unique{{< info unique >}}</th>
           <th>Ordered{{< info ordered >}}</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>pathSegment</td>
        <td><a href="{{< relref "pathsegment.md" >}}">PathSegment</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>Y</td>
        <td>1</td>
        <td>Specifies an ordered list of PathSegments that describe the appearance of the GeometrySegment2D. The appearance is described by the concatenation of the PathSegments beginning at the startNode of the GeometrySegment2D.</td>
    </tr>
    <tr>
        <td>endNode</td>
        <td><a href="{{< relref "geometrynode2d.md" >}}">GeometryNode2D</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the GeometryNode2D where the GeometrySegment2D ends.</td>
    </tr>
    <tr>
        <td>startNode</td>
        <td><a href="{{< relref "geometrynode2d.md" >}}">GeometryNode2D</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the GeometryNode2D where the GeometrySegment2D starts.</td>
    </tr>
    </tbody>
</table>

##  Incoming Relations
<table>
    <thead>
        <tr>
           <th colspan="5">This End</th>
           <th colspan="2">Other End</th>
           <th colspan="1">General</th>
        </tr>
        <tr>
           <th>Role</th>
           <th>Mult.</th>
           <th>Agg.{{< info agg >}}</th>
           <th>Unique{{< info unique >}}</th>
           <th>Ordered{{< info ordered >}}</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>geometrySegment</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "buildingblockspecification2d.md" >}}">BuildingBlockSpecification2D</a></td>
        <td>1</td>
        <td>Specifies the GeometrySegment2Ds defined by the BuildingBlockSpecification2D.</td>
    </tr>
    </tbody>
</table>



