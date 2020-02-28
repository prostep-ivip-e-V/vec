---
title: PinCurrentInformation
toc: false
type: specs
date: "2017-02-21"
draft: false
specification: VEC
version: 1.1.3
documentType: "Recommendation"
elementType: Class
classes:
  - PinCurrentInformation
menu_name: vec-1.1.3
---
<p>Allows the definition of currents for a pin of an EEComponent. A current can be further specified by a duration. Attributes of the type PinCurrentInformation normally have the multiplicity [0..*]. This means that such an attribute can have PinCurrentInformation entries for different types and durations. It must not have multiple entries for the same type and duration.  </p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|type | [PinCurrentType]({{< relref "pincurrenttype.md" >}}) | 1 | <p>Defines the type of the current. </p> | [PinCurrentInformation]({{< relref "pincurrentinformation.md" >}}) |
|current | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <p>The current of the pin. </p> | [PinCurrentInformation]({{< relref "pincurrentinformation.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PinTiming]({{< relref "pintiming.md" >}}) | timing | 0..* | 0..1 | <p> Specifies the timing of the <i>PinCurrentInformation.</i>      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [PinComponentBehavior]({{< relref "pincomponentbehavior.md" >}}) | 1 | currentInformation | 0..* | <p> Specifies the current information of the <i>PinComponent</i> in this <i>PinComponentBehavior</i>. Since the current values of a pin can be defined for different types and times it is possible to define multiple <i>PinCurrentInformations</i> for a <i>PinComponentBehavior</i>.      </p> |
