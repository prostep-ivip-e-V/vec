---
title: BuildingBlockSpecification3D
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Specification for the description of a three dimensional building block. A building block is a reusable section of a geometry.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | geo_3d |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Specification]({{< relref "specification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |


## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. Over all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p>    </body> </html>  | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies additional, human readable information about the specification.      </p>    </body> </html>  | [Specification]({{< relref "specification.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [CartesianPoint3D]({{< relref "cartesianpoint3d.md" >}}) | cartesianPoint | 0..* | 1 | Specifies the CartesianPoint3Ds that are used in the BuildingBlockSpecification3D.  |
| [Unit]({{< relref "unit.md" >}}) | baseUnit | 1 | 0..* |  |
| [OccurrenceOrUsageViewItem3D]({{< relref "occurrenceorusageviewitem3d.md" >}}) | placedElementViewItem3D | 0..* | 1 | Specifies the view items for OccurrenceOrUsages in a BuildingBlockSpecification3D.   |
| [GeometryNode3D]({{< relref "geometrynode3d.md" >}}) | geometryNode | 0..* | 1 | Specifies the GeometryNode3Ds defined by the BuildingBlockSpecification3D.  |
| [TopologyZone]({{< relref "topologyzone.md" >}}) |  | 0..1 | 0..* | <html>   <head>     </head>   <body> References the Zone that is building block represents. This shall be a TopologyZone with the type &quot;DmuZone&quot;.</body> </html> |
| [GeometrySegment3D]({{< relref "geometrysegment3d.md" >}}) | geometrySegment | 0..* | 1 | <html>   <head>     </head>   <body>     <p> Specifies the GeometrySegment3Ds defined by the BuildingBlockSpecification3D.      </p>  </body> </html> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [BuildingBlockPositioning3D]({{< relref "buildingblockpositioning3d.md" >}}) | 0..* | referenced3DBuildingBlock | 1 | <html>   <head>     </head>   <body>     <p> References the building block that is positioned.      </p>    </body> </html>  |
