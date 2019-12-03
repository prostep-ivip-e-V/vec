---
title: BuildingBlockSpecification2D
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Specification for the description of a two dimensional building block. A building block is a reusable section of a geometry.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | geo_2d |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Specification]({{< relref "specification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [2D-Geometry]({{< relref "../topology-and-geometry/2d-geometry" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. Over all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p>    </body> </html>  | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies additional, human readable information about the specification.      </p>    </body> </html>  | [Specification]({{< relref "specification.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [CartesianPoint2D]({{< relref "cartesianpoint2d.md" >}}) | cartesianPoint | 0..* | 0..1 | Specifies the CartesianPoint2Ds that are used in the BuildingBlockSpecification2D.  |
| [GeometrySegment2D]({{< relref "geometrysegment2d.md" >}}) | geometrySegment | 0..* | 1 | Specifies the GeometrySegment2Ds defined by the BuildingBlockSpecification2D.  |
| [Unit]({{< relref "unit.md" >}}) | baseUnit | 1 | 0..* |  |
| [OccurrenceOrUsageViewItem2D]({{< relref "occurrenceorusageviewitem2d.md" >}}) | placedElementViewItem | 0..* | 1 | Specifies the view items for OccurrenceOrUsages on a BuildingBlockSpecification2D.   |
| [CartesianDimension]({{< relref "cartesiandimension.md" >}}) | boundingBox | 1 | 0..1 | Specifies the size of the area described by the BuildingBlockSpecification2D in Cartesian dimensions.   |
| [GeometryNode2D]({{< relref "geometrynode2d.md" >}}) | geometryNode | 0..* | 1 | Specifies the GeometryNode2Ds defined by the BuildingBlockSpecification2D.  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [BuildingBlockPositioning2D]({{< relref "buildingblockpositioning2d.md" >}}) | 0..* | referenced2DBuildingBlock | 1 | References the building block which is placed on the harness drawing.   |
