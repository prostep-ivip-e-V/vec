---
title: WireTupleTermination
toc: false
type: specs
date: "2021-11-30"
draft: false
specification: VEC
version: 2.0.0-rc1
documentType: "Recommendation"
elementType: Class
classes:
  - WireTupleTermination
menu_name: vec-2.0.0-rc1
---
<p> A <i>WireTupleTermination</i> is to define the handling of wire ends in a tuple (group). This is mostly relevant for twisted pairs&#160;/&#160;triple / tuple to define the handling of untwisting.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|fixation | [boolean]({{< relref "boolean.md" >}}) | 0..1 | Specifies if a fixation of the <i>WireEnds</i> is required. | [WireTupleTermination]({{< relref "wiretupletermination.md" >}}) |
|fixationOffset | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | Specifies the offset of the fixation. | [WireTupleTermination]({{< relref "wiretupletermination.md" >}}) |
|permittedUntwist | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | Specifies the allowed length of untwist for the WireElementReferences on the sides of associated WireEnds. | [WireTupleTermination]({{< relref "wiretupletermination.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [WireEnd]({{< relref "wireend.md" >}}) | associatedWireEnds | 0..* | 0..* |  |
| [WireTupleSpecification]({{< relref "wiretuplespecification.md" >}}) | wireTupleSpecification | 0..1 |  |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [WireTupleTerminationSpecification]({{< relref "wiretupleterminationspecification.md" >}}) |  |  |  |  |
