---
title: HoleMountedFixingSpecification
toc: false
type: specs
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Class
classes:
  - HoleMountedFixingSpecification
menu_name: vec-1.1.2
---
<p> Specification for fixings that are mounted with a hole. This means, the fixing itself has got a hole, which is mounted onto a bolt.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | non_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [FixingSpecification]({{< relref "fixingspecification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. Over all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|specialPartType | [String]({{< relref "string.md" >}}) | 0..1 | <p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |
|offset | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 |  | [FixingSpecification]({{< relref "fixingspecification.md" >}}) |
|holeDiameter | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the diameter of the hole in which the fixing is mounted.      </p> | [HoleMountedFixingSpecification]({{< relref "holemountedfixingspecification.md" >}}) |
|plateThickness | [ValueRange]({{< relref "valuerange.md" >}}) | 0..1 | <p>Specifies the thickness of the plate in which the hole is positioned. </p> | [HoleMountedFixingSpecification]({{< relref "holemountedfixingspecification.md" >}}) |
|holeType | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies the type of the hole in which the fixing can be mounted. Appropriate values should be defined in a conformance class.      </p> | [HoleMountedFixingSpecification]({{< relref "holemountedfixingspecification.md" >}}) |
|holeShape | [String]({{< relref "string.md" >}}) | 0..1 |  | [HoleMountedFixingSpecification]({{< relref "holemountedfixingspecification.md" >}}) |

