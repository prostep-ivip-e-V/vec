---
title: BuildingBlockPositioning3D
toc: false
type: specs
date: "2021-11-30"
draft: false
specification: VEC
version: 2.0.0-rc1
documentType: "Recommendation"
elementType: Class
classes:
  - BuildingBlockPositioning3D
menu_name: vec-2.0.0-rc1
---
<p> Defines the position of a BuildingBlock3D in the HarnessGeometry.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | geo_3d |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique (optional) identification of the BuildingBlockPositioning3D. The identification is guaranteed to be unique within the HarnessGeometrySpecification3D.      </p> | [BuildingBlockPositioning3D]({{< relref "buildingblockpositioning3d.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Transformation3D]({{< relref "transformation3d.md" >}}) | positioning | 0..1 | 0..1 | <p> Specifies the positioning of the building block in the harness geometry.      </p> |
| [BuildingBlockSpecification3D]({{< relref "buildingblockspecification3d.md" >}}) | referenced3DBuildingBlock | 1 | 0..* | <p> References the building block that is positioned.      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [HarnessGeometrySpecification3D]({{< relref "harnessgeometryspecification3d.md" >}}) | 1 | buildingBlockPositionings | 0..* | <p> Specifies the BuildingBlockPositioning3Ds that are forming the HarnessGeometrySpecification3D.      </p> |
