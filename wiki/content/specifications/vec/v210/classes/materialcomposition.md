---
title: MaterialComposition
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - MaterialComposition
menu_name: vec-2.1.0
---
<p> Parts and components are often composed from a material-mix. The <i>MaterialComposition </i>allows the definition of the various <i>Material</i>s in a part and their mass.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | physical_information |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|material| [Material]({{< relref "material.md" >}}) | 0..* | <p> Specifies the material of a this composition entry with the syntax and nomenclature of a arbitrary reference system.      </p> | [MaterialComposition]({{< relref "materialcomposition.md" >}}) |
|massInformation| [MassInformation]({{< relref "massinformation.md" >}}) | 0..* | <p> Specifies the mass of this corresponding <i>Material</i> in a part per Unit of quantity (e.g. g/piece or g/meter...) of the part.       </p> | [MaterialComposition]({{< relref "materialcomposition.md" >}}) |





