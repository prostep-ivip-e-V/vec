---
title: GeometrySegment3D
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - GeometrySegment3D
menu_name: vec-2.0.1
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
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the GeometrySegment. The identification is guaranteed to be unique within the corresponding BuildingBlockSpecification. For all VEC-documents a GeometrySegment-instance can be trusted to be the same if the BuildingBlockSpecification-instance is the same (see BuildingBlockSpecification) and the identification of the GeometrySegment is the same.      </p> | [GeometrySegment]({{< relref "geometrysegment.md" >}}) |
|aliasId| [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <p> Specifies additional identifiers for the GeometrySegment.      </p> | [GeometrySegment]({{< relref "geometrysegment.md" >}}) |
|startVector| [CartesianVector3D]({{< relref "cartesianvector3d.md" >}}) | 1 | <p>Specifies the start vector of the geometry segment. The start vector is a tangent to the segment at the start position. </p> | [GeometrySegment3D]({{< relref "geometrysegment3d.md" >}}) |
|endVector| [CartesianVector3D]({{< relref "cartesianvector3d.md" >}}) | 1 | <p>Specifies the end vector of the geometry segment. The end vector is a tangent to the segment at the end position. </p> | [GeometrySegment3D]({{< relref "geometrysegment3d.md" >}}) |

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
        <td>endNode</td>
        <td><a href="{{< relref "geometrynode3d.md" >}}">GeometryNode3D</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the GeometryNode3D where the GeometrySegment3D ends.</td>
    </tr>
    <tr>
        <td>startNode</td>
        <td><a href="{{< relref "geometrynode3d.md" >}}">GeometryNode3D</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the GeometryNode3D where the GeometrySegment3D starts.</td>
    </tr>
    <tr>
        <td>curve</td>
        <td><a href="{{< relref "curve3d.md" >}}">Curve3D</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>Y</td>
        <td></td>
        <td><p> Specifies an ordered list of curves which describe the centerline of the segment. If a segment is described by more than one curve, the centrelines of the individual curves are aligned in the order of this association.      </p></td>
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
        <td><a href="{{< relref "buildingblockspecification3d.md" >}}">BuildingBlockSpecification3D</a></td>
        <td>1</td>
        <td><p> Specifies the GeometrySegment3Ds defined by the BuildingBlockSpecification3D.      </p></td>
    </tr>
    </tbody>
</table>



