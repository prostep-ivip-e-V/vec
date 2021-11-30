---
title: WireReceptionAddOn
toc: false
type: specs
date: "2021-11-30"
draft: false
specification: VEC
version: 2.0.0-rc1
documentType: "Recommendation"
elementType: Class
classes:
  - WireReceptionAddOn
menu_name: vec-2.0.0-rc1
---
<p> Specifies the wire addon required for this wire reception.      </p>

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
|wireAddOn | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <p> Specifies the wire length add on needed for the wire reception.      </p> | [WireReceptionAddOn]({{< relref "wirereceptionaddon.md" >}}) |
|type | [WireAddOnType]({{< relref "wireaddontype.md" >}}) | 1 | <p> Defines the type of the add-on.      </p> | [WireReceptionAddOn]({{< relref "wirereceptionaddon.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) | 1 | addOns | 0..* |  |
