---
title: PowerConsumption
toc: false
type: specs
date: "2020-05-11"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - PowerConsumption
menu_name: vec-1.2.0
---
<p> Defines the power consumption of an <i>EEComponent</i>. An <i>EEComponent</i> can have multiple different <i>PowerConsumptions</i> e.g. standby, maximum. An <i>EEComponent</i> can have multiple <i>PowerConsumptions</i> but must not have more than one <i>PowerConsumptions</i> of the same <i>type</i>.      </p>

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
|type | [String]({{< relref "string.md" >}}) |  | <p> The type of a <i>PowerConsumption</i>. This should be an enumeration of values defined in a conformance class.      </p> | [PowerConsumption]({{< relref "powerconsumption.md" >}}) |
|value | [NumericalValue]({{< relref "numericalvalue.md" >}}) |  | <p> Specifies the power consumption for this type of <i>PowerConsumption</i>.      </p> | [PowerConsumption]({{< relref "powerconsumption.md" >}}) |

