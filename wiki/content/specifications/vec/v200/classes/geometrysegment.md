---
title: GeometrySegment
toc: false
type: specs
date: "2022-03-09"
draft: false
specification: VEC
version: 2.0.0
documentType: "Recommendation"
elementType: Class
classes:
  - GeometrySegment
menu_name: vec-2.0.0
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
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the GeometrySegment. The identification is guaranteed to be unique within the corresponding BuildingBlockSpecification. For all VEC-documents a GeometrySegment-instance can be trusted to be the same if the BuildingBlockSpecification-instance is the same (see BuildingBlockSpecification) and the identification of the GeometrySegment is the same.      </p> | [GeometrySegment]({{< relref "geometrysegment.md" >}}) |
|aliasId | [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <p> Specifies additional identifiers for the GeometrySegment.      </p> | [GeometrySegment]({{< relref "geometrysegment.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [TopologySegment]({{< relref "topologysegment.md" >}}) | referenceSegment | 0..1 | 0..* | References the TopologySegment that is represented by the GeometrySegment. |
