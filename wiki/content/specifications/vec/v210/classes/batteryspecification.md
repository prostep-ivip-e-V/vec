﻿---
title: BatterySpecification
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - BatterySpecification
menu_name: vec-2.1.0
---
<p> Specification of the electrological aspects of a battery.      </p>

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
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. For all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|specialPartType| [String]({{< relref "string.md" >}}) | 0..1 | <p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |
|powerConsumption| [PowerConsumption]({{< relref "powerconsumption.md" >}}) | 0..* | <p> Specifies the <i>PowerConsumptions</i> of this <i>EEComponentSpecification.</i> This refers to the internal power consumption of this E/E-component, not the power-consumption that might occur indirectly over other E/E-components that are supplied through this component.      </p> | [EEComponentSpecification]({{< relref "eecomponentspecification.md" >}}) |
|voltageRating| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | The <i>voltageRating</i> of an <i>EEComponentSpecification</i> indicates the maximum voltage of the circuit for which the E/E component (e.g. a fuse)&#160;is designed to operate safely. | [EEComponentSpecification]({{< relref "eecomponentspecification.md" >}}) |
|u| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Specifies the nominal voltage of the battery.  </p> | [BatterySpecification]({{< relref "batteryspecification.md" >}}) |
|i| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Specifies the current the battery provides.  </p> | [BatterySpecification]({{< relref "batteryspecification.md" >}}) |
|iCool| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Specifies the battery's current in cool state.  </p> | [BatterySpecification]({{< relref "batteryspecification.md" >}}) |
|capacity| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the power capacity of the battery.      </p> | [BatterySpecification]({{< relref "batteryspecification.md" >}}) |





