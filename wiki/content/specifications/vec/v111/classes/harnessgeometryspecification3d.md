﻿---
title: HarnessGeometrySpecification3D
toc: false
type: specs
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Class
classes:
  - HarnessGeometrySpecification3D
menu_name: vec-1.1.1
---
<p>The HarnessGeometrieSpecification3D specifies a three dimensional model of a harness. A harness model is composed of one or more BuildingBlockSpecifaction3D which are placed in the model.   </p>

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
|type | [GeometryType]({{< relref "geometrytype.md" >}}) | 1 | <p>Specifies the type of the harness geometry.  </p> | [HarnessGeometrySpecification3D]({{< relref "harnessgeometryspecification3d.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [BuildingBlockPositioning3D]({{< relref "buildingblockpositioning3d.md" >}}) | buildingBlockPositionings | 0..* | 1 | <p> Specifies the BuildingBlockPositioning3Ds that are forming the HarnessGeometrySpecification3D.      </p> |
