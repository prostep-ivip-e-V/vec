﻿---
title: EEComponentSpecification
toc: false
type: specs
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Class
classes:
  - EEComponentSpecification
menu_name: vec-1.1.2
---
<p> Base-class for the specification of electrological components, which are connected to the harness. Usually electrological components are not part of the harness e.g. a fuses, a switch or a control device. All EEComponents can have one or more HousingComponents which are possible interfaces for the connection to a harness.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** | [AntennaSpecification]({{< relref "antennaspecification.md" >}}), [BatterySpecification]({{< relref "batteryspecification.md" >}}), [FuseSpecification]({{< relref "fusespecification.md" >}}), [RelaySpecification]({{< relref "relayspecification.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. Over all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|specialPartType | [String]({{< relref "string.md" >}}) | 0..1 | <p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |
|powerConsumption | [PowerConsumption]({{< relref "powerconsumption.md" >}}) | 0..* | <p> Specifies the <i>PowerConsumptions</i> of this <i>EEComponentSpecification.</i>      </p> | [EEComponentSpecification]({{< relref "eecomponentspecification.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [ExtensionSlot]({{< relref "extensionslot.md" >}}) | extensionSlots | 0..* | 1 | Specifies the available ExtensionSlots of the EEComponent. |
| [SwitchingState]({{< relref "switchingstate.md" >}}) | states | 0..* | 1 | <p> Specifies the available <i>SwitchingStates</i> of the EEComponent.      </p> |
| [HousingComponent]({{< relref "housingcomponent.md" >}}) | housingComponent | 0..* | 1 | Specifies the available connector interfaces of the EEComponent. |
| [InternalComponentConnection]({{< relref "internalcomponentconnection.md" >}}) | connections | 0..* | 1 |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ExtensionSlot]({{< relref "extensionslot.md" >}}) | 0..* | allowedInserts | 0..* | Defines the EEComponentSpecifications that are allowed as an insert for this ExtensionSlot. |
| [EEComponentRole]({{< relref "eecomponentrole.md" >}}) | 0..* | EEComponentSpecification | 1 | <p> References the <i>EEComponentSpecification </i>that is instanced by this <i>EEComponentRole.</i>      </p> |
