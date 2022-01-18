---
title: PinTiming
toc: false
type: specs
date: "2022-01-18"
draft: false
specification: VEC
version: 1.2.2
documentType: "Recommendation"
elementType: Class
classes:
  - PinTiming
menu_name: vec-1.2.2
---
<p> Specifies the timing for a <i>PinCurrentInformation </i>or a <i>PinVoltageInformation</i>.      </p>

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
|type | [PinTimingType]({{< relref "pintimingtype.md" >}}) | 1 | <p> Specifies the type of the timing.      </p> | [PinTiming]({{< relref "pintiming.md" >}}) |
|time | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <p> Specifies the time value of the timing.      </p> | [PinTiming]({{< relref "pintiming.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [PinCurrentInformation]({{< relref "pincurrentinformation.md" >}}) | 0..1 | timing | 0..* | <p> Specifies the timing of the <i>PinCurrentInformation.</i>      </p> |
| [PinVoltageInformation]({{< relref "pinvoltageinformation.md" >}}) | 0..1 | timing | 0..* | <p> Specifies the timing of the <i>PinVoltageInformation</i>.      </p> |
