---
title: BoltMountedFixingSpecification
toc: false
type: specs
date: "2022-03-09"
draft: false
specification: VEC
version: 2.0.0
documentType: "Recommendation"
elementType: Class
classes:
  - BoltMountedFixingSpecification
menu_name: vec-2.0.0
---
<p> Specification for fixings that are mounted onto a bolt. This means the fixing itself has got a hole, which is mounted onto a bolt of the surrounding.&#160;      </p>

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
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. For all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|specialPartType | [String]({{< relref "string.md" >}}) | 0..1 | <p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |
|offset | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 |  | [FixingSpecification]({{< relref "fixingspecification.md" >}}) |
|nominalSize | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 |  | [FixingSpecification]({{< relref "fixingspecification.md" >}}) |
|boltType | [BoltMountedFixingBoltType]({{< relref "boltmountedfixingbolttype.md" >}}) | 0..1 | <p> Specifies the type of the bolt on which the fixing can be mounted.      </p> | [BoltMountedFixingSpecification]({{< relref "boltmountedfixingspecification.md" >}}) |
|boltShape | [BoltMountedFixingBoltShape]({{< relref "boltmountedfixingboltshape.md" >}}) | 0..1 | <p> Specifies the shape of the bolt on which the fixing can be mounted.      </p> | [BoltMountedFixingSpecification]({{< relref "boltmountedfixingspecification.md" >}}) |
|boltDiameter | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the diameter of the bolt on which the fixing can be mounted.      </p> | [BoltMountedFixingSpecification]({{< relref "boltmountedfixingspecification.md" >}}) |
|boltHeight | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the height of the bolt on which the fixing can be mounted.      </p> | [BoltMountedFixingSpecification]({{< relref "boltmountedfixingspecification.md" >}}) |

