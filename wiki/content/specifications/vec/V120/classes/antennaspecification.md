---
title: AntennaSpecification
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Specification of the electrological aspects of an antenna.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [EEComponentSpecification]({{< relref "eecomponentspecification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [EE-Component subclasses]({{< relref "../description-of-components/ee-component-subclasses" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. Over all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p>    </body> </html>  | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies additional, human readable information about the specification.      </p>    </body> </html>  | [Specification]({{< relref "specification.md" >}}) |
|specialPartType | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p></body></html> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |
|powerConsumption | [PowerConsumption]({{< relref "powerconsumption.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the <i>PowerConsumptions</i> of this <i>EEComponentSpecification.</i>      </p>    </body> </html>  | [EEComponentSpecification]({{< relref "eecomponentspecification.md" >}}) |
|fMin | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <html><body><p>Specifies the minimum operating frequency of the antenna. </p></body></html> | [AntennaSpecification]({{< relref "antennaspecification.md" >}}) |
|fMax | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <html><body><p>Specifies the maximum operating frequency of the antenna. </p></body></html> | [AntennaSpecification]({{< relref "antennaspecification.md" >}}) |
|impedance | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <html><body><p>Specifies the impedance of the antenna. </p></body></html> | [AntennaSpecification]({{< relref "antennaspecification.md" >}}) |

