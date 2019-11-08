---
title: RelaySpecification
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html><body><p>Specification of the electrological aspects of a relay. </p></body></html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [EEComponentSpecification]({{< relref "eecomponentspecification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |


## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. Over all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p>    </body> </html>  | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies additional, human readable information about the specification.      </p>    </body> </html>  | [Specification]({{< relref "specification.md" >}}) |
|specialPartType | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p></body></html> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |
|powerConsumption | [PowerConsumption]({{< relref "powerconsumption.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the <i>PowerConsumptions</i> of this <i>EEComponentSpecification.</i>      </p>    </body> </html>  | [EEComponentSpecification]({{< relref "eecomponentspecification.md" >}}) |
|iMax | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <html><body><p>Specifies the maximum current allowed for the relais.  </p></body></html> | [RelaySpecification]({{< relref "relayspecification.md" >}}) |
|relaisType | [RelaisType]({{< relref "relaistype.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> The type of the relay (switching behaviour). This is an OpenEnumeration, for values see <i>RelaisType.</i>      </p>    </body> </html>  | [RelaySpecification]({{< relref "relayspecification.md" >}}) |
|lowNoise | [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Defines if the relais switch with low noise /&#160;silently or not.      </p>    </body> </html>  | [RelaySpecification]({{< relref "relayspecification.md" >}}) |
|applianceType | [RelaisApplianceType]({{< relref "relaisappliancetype.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies the appliance type of a relais.      </p>    </body> </html>  | [RelaySpecification]({{< relref "relayspecification.md" >}}) |

