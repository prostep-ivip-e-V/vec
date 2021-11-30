---
title: PinComponentBehavior
toc: false
type: specs
date: "2021-11-30"
draft: false
specification: VEC
version: 2.0.0-rc1
documentType: "Recommendation"
elementType: Class
classes:
  - PinComponentBehavior
menu_name: vec-2.0.0-rc1
---
<p> A <i>PinComponentBehavior</i> specifies the electrical behavior of a <i>PinComponent.</i> Since the behavior of a pin is configuration dependent (e.g. the software deployed on an ECU) the <i>PinComponentBehavior </i>inherits from <i>ConfigurableElement.</i> Therefore, a <i>PinComponent</i> can specify multiple <i>PinComponentBehavior.</i>      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Identification of the PinComponentBehavior which identifies it from a user perspective, and which must be distinct for all PinComponentBehaviors of a PinComponent.      </p> | [PinComponentBehavior]({{< relref "pincomponentbehavior.md" >}}) |
|signalDirection | [SignalDirection]({{< relref "signaldirection.md" >}}) | 0..1 | <p>The direction of the signal on this pin. </p> | [PinComponentBehavior]({{< relref "pincomponentbehavior.md" >}}) |
|pinType | [PinType]({{< relref "pintype.md" >}}) | 0..1 | <p> Specifies the <i>PinType</i> of the <i>PinComponent</i>.      </p> | [PinComponentBehavior]({{< relref "pincomponentbehavior.md" >}}) |
|applianceType | [PinApplianceType]({{< relref "pinappliancetype.md" >}}) | 0..1 | <p> Classifies the appliance of a Pin in terms of the duration of the appliance (see PinApplianceType).      </p> | [PinComponentBehavior]({{< relref "pincomponentbehavior.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the <i>PinComponentBehaviour</i>.      </p> | [PinComponentBehavior]({{< relref "pincomponentbehavior.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Signal]({{< relref "signal.md" >}}) | signal | 0..1 | 0..* | <p> Specifies the <i>Signal </i>associated with the pin in this behavior.      </p> |
| [PinOpticalInformation]({{< relref "pinopticalinformation.md" >}}) | opticalInformation | 0..* | 1 | <p> Specifies the optical information of the pin, if it has the type optical.      </p> |
| [PinVoltageInformation]({{< relref "pinvoltageinformation.md" >}}) | voltageInformation | 0..* | 1 | <p> Specifies the voltage information of the <i>PinComponent</i> in this <i>PinComponentBehavior</i>. Since the voltage values of a pin can be defined for different types and times it is possible to define multiple <i>PinVoltageInformations</i> for a <i>PinComponentBehavior</i>.      </p> |
| [PinCurrentInformation]({{< relref "pincurrentinformation.md" >}}) | currentInformation | 0..* | 1 | <p> Specifies the current information of the <i>PinComponent</i> in this <i>PinComponentBehavior</i>. Since the current values of a pin can be defined for different types and times it is possible to define multiple <i>PinCurrentInformations</i> for a <i>PinComponentBehavior</i>.      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [PinComponent]({{< relref "pincomponent.md" >}}) | 1 | behaviour | 0..* | <p> Specifies the configuration dependent electrical behavior of the<i> PinComponent.</i>      </p> |
