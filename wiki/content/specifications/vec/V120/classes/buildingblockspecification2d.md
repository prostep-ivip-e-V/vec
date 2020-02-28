---
title: BuildingBlockSpecification2D
toc: false
type: specs
date: "2020-02-01"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - BuildingBlockSpecification2D
menu_name: vec-1.2.0
---
<p> Specification for the description of a two-dimensional building block. A building block is a reusable section of a geometry.      </p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | geo_2d |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Specification]({{< relref "specification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. For all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Unit]({{< relref "unit.md" >}}) | baseUnit | 1 | 0..* |  |
| [CartesianDimension]({{< relref "cartesiandimension.md" >}}) | boundingBox | 1 | 0..1 | Specifies the size of the area described by the BuildingBlockSpecification2D in Cartesian dimensions. |
| [CartesianPoint2D]({{< relref "cartesianpoint2d.md" >}}) | cartesianPoint | 0..* | 0..1 | Specifies the CartesianPoint2Ds that are used in the BuildingBlockSpecification2D. |
| [GeometryNode2D]({{< relref "geometrynode2d.md" >}}) | geometryNode | 0..* | 1 | Specifies the GeometryNode2Ds defined by the BuildingBlockSpecification2D. |
| [OccurrenceOrUsageViewItem2D]({{< relref "occurrenceorusageviewitem2d.md" >}}) | placedElementViewItem | 0..* | 1 | Specifies the view items for OccurrenceOrUsages on a BuildingBlockSpecification2D. |
| [GeometrySegment2D]({{< relref "geometrysegment2d.md" >}}) | geometrySegment | 0..* | 1 | Specifies the GeometrySegment2Ds defined by the BuildingBlockSpecification2D. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [BuildingBlockPositioning2D]({{< relref "buildingblockpositioning2d.md" >}}) | 0..* | referenced2DBuildingBlock | 1 | References the building block which is placed on the harness drawing. |
