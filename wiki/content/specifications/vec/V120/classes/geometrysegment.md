---
title: GeometrySegment
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A GeometrySegment is the geometric representation of a TopologySegment. A TopologySegment may be represented by more than one GeometrySegments, but only within different <i>BuildingBlockSpecification2D/3D.</i> That means, in a single BuildingBlockSpecification a <i>TopologySegment</i> shall only be represent once&#160;(or not).      </p>      <p> Futhermore, the definition of the <i>GeometrySegment</i> shall be consistent to the definition in the <i>TopologySpecification. </i>That means, that a <i>GeometrySegment</i> shall have those <i>GeometryNodes </i>as start- &amp;&#160;endNode that represent the <i>TopologyNodes</i> referenced from the corresponding <i>TopologySegment</i>.       </p>      <p> A GeometrySegment is either a GeometrySegment2D or a GeometrySegment3D.      </p>  </body> </html>
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
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the GeometrySegment. The identification is guaranteed to be unique within the corresponding BuildingBlockSpecification. Over all VEC-documents a GeometrySegment-instance can be trusted to be the same if the BuildingBlockSpecification-instance is the same (see BuildingBlockSpecification) and the identification of the GeometrySegment is the same.      </p>    </body> </html>  | [GeometrySegment]({{< relref "geometrysegment.md" >}}) |
|aliasId | [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies additional identifiers for the GeometrySegment.      </p>    </body> </html>  | [GeometrySegment]({{< relref "geometrysegment.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [TopologySegment]({{< relref "topologysegment.md" >}}) | referenceSegment | 0..1 | 0..* | References the TopologySegment that is represented by the GeometrySegment.   |
