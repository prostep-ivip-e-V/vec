---
title: MassInformation
toc: false
type: specs
date: "2020-05-11"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - MassInformation
menu_name: vec-1.2.0
---
<p> Allows the definition of mass information. Attributes of the type MassInformation normally have the multiplicity [0..*]. This means that such an attribute can have mass values for different determinationTypes and valueSources. It must not have multiple values for the same determinationType and valueSource.      </p>

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
|valueSource | [MassInformationSource]({{< relref "massinformationsource.md" >}}) | 0..1 | <p> The <i>valueSource</i> defines in an OpenEnumeration the source from which the <i>MassInformation</i> has been retrieved. This information, in combination with the <i>ValueDetermination</i> gives a hint about the reliability of the <i>MassInformation</i>      </p> | [MassInformation]({{< relref "massinformation.md" >}}) |

