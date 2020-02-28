---
title: MassInformation
toc: false
type: specs
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Class
classes:
  - MassInformation
menu_name: vec-1.1.2
---
<p>Allows the definition of mass information. Attributes of the type MassInformation normally have the multiplicity [0..*]. This means that such an attribute can have mass values for different determinationTypes. It must not have multiple values for the same determinationType. </p>

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
|determinationType | [ValueDetermination]({{< relref "valuedetermination.md" >}}) | 0..1 | <p>Specifies the determination type of the mass information.  </p> | [MassInformation]({{< relref "massinformation.md" >}}) |
|value | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <p>Specifies the mass as numerical value.  </p> | [MassInformation]({{< relref "massinformation.md" >}}) |

