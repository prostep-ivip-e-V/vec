---
title: DefaultDimension
toc: false
type: specs
date: "2022-03-09"
draft: false
specification: VEC
version: 2.0.0
documentType: "Recommendation"
elementType: Class
classes:
  - DefaultDimension
menu_name: vec-2.0.0
---
<p> A <i>DefaultDimension</i> defines a tolerance value that shall be applied to a part, if no explicit tolerance value has been defined.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | placement |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|dimensionValueRange | [ValueRange]({{< relref "valuerange.md" >}}) | 1 | <p> dimensionValueRange defines the magnitude of measurements for which the tolerance applies (e.g. length from 500mm - 1500mm).      </p> | [DefaultDimension]({{< relref "defaultdimension.md" >}}) |
|dimensionType | [DefaultDimensionType]({{< relref "defaultdimensiontype.md" >}}) | 1 | <p> The <i>dimensionType</i> defines to which measurements this <i>DefaultDimension</i> applies.      </p> | [DefaultDimension]({{< relref "defaultdimension.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Tolerance]({{< relref "tolerance.md" >}}) | toleranceIndication | 1 | 0..1 |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [DefaultDimensionSpecification]({{< relref "defaultdimensionspecification.md" >}}) |  |  |  |  |
