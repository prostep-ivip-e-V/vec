---
title: GeometrySegment
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - GeometrySegment
menu_name: vec-2.1.0
---
<p> A GeometrySegment is the geometric representation of a TopologySegment. A TopologySegment may be represented by more than one GeometrySegments, but only within different <i>BuildingBlockSpecification2D/3D.</i> That means, in a single BuildingBlockSpecification a <i>TopologySegment</i> shall only be represent once&#160;(or not).      </p>      <p> Furthermore, the definition of the <i>GeometrySegment</i> shall be consistent to the definition in the <i>TopologySpecification. </i>That means, that a <i>GeometrySegment</i> shall have those <i>GeometryNodes </i>as start- &amp;&#160;endNode that represent the <i>TopologyNodes</i> referenced from the corresponding <i>TopologySegment</i>.      </p>      <p> A GeometrySegment is either a GeometrySegment2D or a GeometrySegment3D.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | topology |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | true |
| **Derived Classifiers** | [GeometrySegment2D]({{< relref "geometrysegment2d.md" >}}), [GeometrySegment3D]({{< relref "geometrysegment3d.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the GeometrySegment. The identification is guaranteed to be unique within the corresponding BuildingBlockSpecification. For all VEC-documents a GeometrySegment-instance can be trusted to be the same if the BuildingBlockSpecification-instance is the same (see BuildingBlockSpecification) and the identification of the GeometrySegment is the same.      </p> | [GeometrySegment]({{< relref "geometrysegment.md" >}}) |
|aliasId| [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <p> Specifies additional identifiers for the GeometrySegment.      </p> | [GeometrySegment]({{< relref "geometrysegment.md" >}}) |

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
        <td>referenceSegment</td>
        <td><a href="{{< relref "topologysegment.md" >}}">TopologySegment</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the TopologySegment that is represented by the GeometrySegment.</td>
    </tr>
    </tbody>
</table>




