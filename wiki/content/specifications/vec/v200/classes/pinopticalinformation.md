---
title: PinOpticalInformation
toc: false
type: specs
date: "2022-03-09"
draft: false
specification: VEC
version: 2.0.0
documentType: "Recommendation"
elementType: Class
classes:
  - PinOpticalInformation
menu_name: vec-2.0.0
---
<p> Allows the specification of optical information in a PinComponentBehavior.      </p>

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
|frequency | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <p> The frequency of the optical signal.      </p> | [PinOpticalInformation]({{< relref "pinopticalinformation.md" >}}) |
|attenuation | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> The attenuation of the optical pin at the defined frequency.       </p> | [PinOpticalInformation]({{< relref "pinopticalinformation.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [PinComponentBehavior]({{< relref "pincomponentbehavior.md" >}}) | 1 | opticalInformation | 0..* | <p> Specifies the optical information of the pin, if it has the type optical.      </p> |
