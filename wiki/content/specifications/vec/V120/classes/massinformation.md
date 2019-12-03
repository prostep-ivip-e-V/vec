---
title: MassInformation
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Allows the definition of mass information. Attributes of the type MassInformation normally have the multiplicity [0..*]. This means that such an attribute can have mass values for different determinationTypes and valueSources. It must not have multiple values for the same determinationType and valueSource.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | physical_information |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Foundation Classes for Physical Properties]({{< relref "../description-of-components/foundation-classes-for-physical-properties" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|determinationType | [ValueDetermination]({{< relref "valuedetermination.md" >}}) | 0..1 | <html><body><p>Specifies the determination type of the mass information.  </p></body></html> | [MassInformation]({{< relref "massinformation.md" >}}) |
|value | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <html><body><p>Specifies the mass as numerical value.  </p></body></html> | [MassInformation]({{< relref "massinformation.md" >}}) |
|valueSource | [MassInformationSource]({{< relref "massinformationsource.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> The <i>valueSource</i> defines in an OpenEnumeration the source from which the <i>MassInformation</i> has been retrieved. This information, in combination with the <i>ValueDetermination</i> gives a hint about the reliability of the <i>MassInformation</i>      </p>    </body> </html>  | [MassInformation]({{< relref "massinformation.md" >}}) |

