---
title: WireTupleSpecification
toc: false
type: specs
date: "2021-11-30"
draft: false
specification: VEC
version: 2.0.0-rc1
documentType: "Recommendation"
elementType: Class
classes:
  - WireTupleSpecification
menu_name: vec-2.0.0-rc1
---
<p> A <i>Specification</i> to define requirements for the handling of wire / wire element tuples (pairs, triple,...) with the focus on twisting. More precisely, the allowed untwisting at the wire ends and required measures against it.      </p>      <p> This definition is made independent from the <i>WireGroup</i>, as the might be defined for the part master data (the wire on the roller). The specifications for untwisting are based on the concrete usage.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Specification]({{< relref "specification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. For all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|fixationRequired | [boolean]({{< relref "boolean.md" >}}) | 0..1 | Specifies if a fixation to prevent untwisting is required. | [WireTupleSpecification]({{< relref "wiretuplespecification.md" >}}) |
|fixationOffset | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | The offset from the wire end, at which the fixation has to be placed. | [WireTupleSpecification]({{< relref "wiretuplespecification.md" >}}) |
|maximumUntwistSingleSided | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | Specifies the maximum untwist for one side. | [WireTupleSpecification]({{< relref "wiretuplespecification.md" >}}) |
|maximumUntwistDualSided | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | Specifies the maximum untwist for both sides together (A+B). | [WireTupleSpecification]({{< relref "wiretuplespecification.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PartRelation]({{< relref "partrelation.md" >}}) | fixationAccessory | 0..* | 1 | Specifies <i>PartRelations</i> that can / have to be used for the fixation. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Signal]({{< relref "signal.md" >}}) |  | wireTupleRequirements | 0..1 | <p> Defines a requirement for wire tuples.      </p> |
| [WireTupleTermination]({{< relref "wiretupletermination.md" >}}) |  | wireTupleSpecification | 0..1 |  |
