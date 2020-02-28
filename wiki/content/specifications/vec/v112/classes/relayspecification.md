---
title: RelaySpecification
toc: false
type: specs
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Class
classes:
  - RelaySpecification
menu_name: vec-1.1.2
---
<p>Specification of the electrological aspects of a relay. </p>

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
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. Over all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|specialPartType | [String]({{< relref "string.md" >}}) | 0..1 | <p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |
|powerConsumption | [PowerConsumption]({{< relref "powerconsumption.md" >}}) | 0..* | <p> Specifies the <i>PowerConsumptions</i> of this <i>EEComponentSpecification.</i>      </p> | [EEComponentSpecification]({{< relref "eecomponentspecification.md" >}}) |
|iMax | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Specifies the maximum current allowed for the relais.  </p> | [RelaySpecification]({{< relref "relayspecification.md" >}}) |
|relaisType | [RelaisType]({{< relref "relaistype.md" >}}) | 0..1 | <p> The type of the relay (switching behaviour). This is an OpenEnumeration, for values see <i>RelaisType.</i>      </p> | [RelaySpecification]({{< relref "relayspecification.md" >}}) |
|lowNoise | [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <p> Defines if the relais switch with low noise /&#160;silently or not.      </p> | [RelaySpecification]({{< relref "relayspecification.md" >}}) |
|applianceType | [RelaisApplianceType]({{< relref "relaisappliancetype.md" >}}) | 0..1 | <p> Specifies the appliance type of a relais.      </p> | [RelaySpecification]({{< relref "relayspecification.md" >}}) |

