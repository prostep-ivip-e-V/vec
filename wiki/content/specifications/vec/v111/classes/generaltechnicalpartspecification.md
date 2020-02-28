---
title: GeneralTechnicalPartSpecification
toc: false
type: specs
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Class
classes:
  - GeneralTechnicalPartSpecification
menu_name: vec-1.1.1
---
<p>Specification for the definition of common properties for technical parts.  </p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. Over all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|specialPartType | [String]({{< relref "string.md" >}}) | 0..1 | <p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |
|colorInformation | [Color]({{< relref "color.md" >}}) | 0..* | <p> Specifies the color of the part.      </p> | [GeneralTechnicalPartSpecification]({{< relref "generaltechnicalpartspecification.md" >}}) |
|massInformation | [MassInformation]({{< relref "massinformation.md" >}}) | 0..* | <p>Specifies the mass of the part.  </p> | [GeneralTechnicalPartSpecification]({{< relref "generaltechnicalpartspecification.md" >}}) |
|materialInformation | [Material]({{< relref "material.md" >}}) | 0..* | <p>Specifies the material of a part.  </p> | [GeneralTechnicalPartSpecification]({{< relref "generaltechnicalpartspecification.md" >}}) |
|robustnessProperties | [RobustnessProperties]({{< relref "robustnessproperties.md" >}}) | 0..* | <p>Specifies the robustness of a part.  </p> | [GeneralTechnicalPartSpecification]({{< relref "generaltechnicalpartspecification.md" >}}) |
|temperatureInformation | [TemperatureInformation]({{< relref "temperatureinformation.md" >}}) | 0..* | <p>Specifies valid temperatures for a part.  </p> | [GeneralTechnicalPartSpecification]({{< relref "generaltechnicalpartspecification.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PartRelation]({{< relref "partrelation.md" >}}) | partRelation | 0..* | 1 | Specifies possible relations (accessories) of the specified part with other PartVersion (e.g. caps, clips). |
