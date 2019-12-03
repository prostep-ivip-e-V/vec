---
title: GeneralTechnicalPartSpecification
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html><body><p>Specification for the definition of common properties for technical parts.  </p></body></html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Coordinate Systems of Components]({{< relref "../description-of-components/coordinate-systems-of-components" >}})<br/> [General Technical Part]({{< relref "../description-of-components/general-technical-part" >}})<br/> [Supplementary Parts]({{< relref "../description-of-components/supplementary-parts" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. Over all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p>    </body> </html>  | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies additional, human readable information about the specification.      </p>    </body> </html>  | [Specification]({{< relref "specification.md" >}}) |
|specialPartType | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p></body></html> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |
|colorInformation | [Color]({{< relref "color.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the color of the part.      </p>    </body> </html>  | [GeneralTechnicalPartSpecification]({{< relref "generaltechnicalpartspecification.md" >}}) |
|massInformation | [MassInformation]({{< relref "massinformation.md" >}}) | 0..* | <html><body><p>Specifies the mass of the part.  </p></body></html> | [GeneralTechnicalPartSpecification]({{< relref "generaltechnicalpartspecification.md" >}}) |
|materialInformation | [Material]({{< relref "material.md" >}}) | 0..* | <html><body><p>Specifies the material of a part.  </p></body></html> | [GeneralTechnicalPartSpecification]({{< relref "generaltechnicalpartspecification.md" >}}) |
|robustnessProperties | [RobustnessProperties]({{< relref "robustnessproperties.md" >}}) | 0..* | <html><body><p>Specifies the robustness of a part.  </p></body></html> | [GeneralTechnicalPartSpecification]({{< relref "generaltechnicalpartspecification.md" >}}) |
|temperatureInformation | [TemperatureInformation]({{< relref "temperatureinformation.md" >}}) | 0..* | <html><body><p>Specifies valid temperatures for a part.  </p></body></html> | [GeneralTechnicalPartSpecification]({{< relref "generaltechnicalpartspecification.md" >}}) |
|fitRate | [Double]({{< relref "double.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> The Failures In Time (FIT) rate of a device is the number of failures that can be expected in one billion (109) device-hours of operation.[14]&#160;(E.g. 1000 devices for 1 million hours, or 1 million devices for 1000 hours each, or some other combination.) (see <a href="https://en.wikipedia.org/wiki/Failure_rate#Units">https://en.wikipedia.org/wiki/Failure_rate#Units</a>)      </p>  </body> </html> | [GeneralTechnicalPartSpecification]({{< relref "generaltechnicalpartspecification.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PartRelation]({{< relref "partrelation.md" >}}) | partRelation | 0..* | 1 | Specifies possible relations (accessories) of the specified part with other PartVersion (e.g. caps, clips).  |
| [BoundingBox]({{< relref "boundingbox.md" >}}) | boundingBox | 0..1 |  | <html>   <head>     </head>   <body> Defines the bounding box of the part.   </body> </html>  |
