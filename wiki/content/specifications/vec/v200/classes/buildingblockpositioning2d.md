﻿---
title: BuildingBlockPositioning2D
toc: false
type: specs
date: "2022-03-09"
draft: false
specification: VEC
version: 2.0.0
documentType: "Recommendation"
elementType: Class
classes:
  - BuildingBlockPositioning2D
menu_name: vec-2.0.0
---
<p> Defines the position of a BuildingBlock2D on a HarnessDrawing.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | geo_2d |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique (optional) identification of the BuildingBlockPositioning2D. The identification is guaranteed to be unique within the HarnessDrawingSpecification2D.      </p> | [BuildingBlockPositioning2D]({{< relref "buildingblockpositioning2d.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [BuildingBlockSpecification2D]({{< relref "buildingblockspecification2d.md" >}}) | referenced2DBuildingBlock | 1 | 0..* | References the building block which is placed on the harness drawing. |
| [CartesianPoint2D]({{< relref "cartesianpoint2d.md" >}}) | centerPoint | 0..1 | 0..1 | Specifies the center point of the BuildingBlock in the coordinate system of the harness drawing. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [HarnessDrawingSpecification2D]({{< relref "harnessdrawingspecification2d.md" >}}) | 1 | buildingBlockPositionings | 1..* | Specifies the BuildingBlockPositioning2Ds that are forming the 2D harness drawing. |
