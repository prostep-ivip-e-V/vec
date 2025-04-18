﻿---
title: BuildingBlockSpecification3D
toc: false
type: specs
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Class
classes:
  - BuildingBlockSpecification3D
menu_name: vec-1.1.1
---
<p> Specification for the description of a three dimensional building block. A building block is a reusable section of a geometry.      </p>

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
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. Over all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Unit]({{< relref "unit.md" >}}) | baseUnit | 1 | 0..* |  |
| [GeometrySegment3D]({{< relref "geometrysegment3d.md" >}}) | geometrySegment | 0..* | 1 | Specifies the GeometrySegment3Ds defined by the BuildingBlockSpecification3D. |
| [OccurrenceOrUsageViewItem3D]({{< relref "occurrenceorusageviewitem3d.md" >}}) | placedElementViewItem3D | 0..* | 1 | Specifies the view items for OccurrenceOrUsages in a BuildingBlockSpecification3D. |
| [Zone]({{< relref "zone.md" >}}) |  | 0..1 | 0..* | References the Zone that is building block describes. |
| [GeometryNode3D]({{< relref "geometrynode3d.md" >}}) | geometryNode | 0..* | 1 | Specifies the GeometryNode3Ds defined by the BuildingBlockSpecification3D. |
| [CartesianPoint3D]({{< relref "cartesianpoint3d.md" >}}) | cartesianPoint | 0..* | 1 | Specifies the CartesianPoint3Ds that are used in the BuildingBlockSpecification3D. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [BuildingBlockPositioning3D]({{< relref "buildingblockpositioning3d.md" >}}) | 0..* | referenced3DBuildingBlock | 1 | <p> References the building block that is positioned.      </p> |
