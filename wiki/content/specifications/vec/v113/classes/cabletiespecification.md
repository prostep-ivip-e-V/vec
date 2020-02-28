---
title: CableTieSpecification
toc: false
type: specs
date: "2017-02-21"
draft: false
specification: VEC
version: 1.1.3
documentType: "Recommendation"
elementType: Class
classes:
  - CableTieSpecification
menu_name: vec-1.1.3
---
<p> Specification for the definition of cable ties.      </p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | non_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. Over all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|specialPartType | [String]({{< relref "string.md" >}}) | 0..1 | <p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |
|length | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 |  | [CableTieSpecification]({{< relref "cabletiespecification.md" >}}) |
|width | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 |  | [CableTieSpecification]({{< relref "cabletiespecification.md" >}}) |
|thickness | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 |  | [CableTieSpecification]({{< relref "cabletiespecification.md" >}}) |
|tensioningStrength | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 |  | [CableTieSpecification]({{< relref "cabletiespecification.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [CableTieRole]({{< relref "cabletierole.md" >}}) | 0..* | cableTieSpecification | 1 |  |
