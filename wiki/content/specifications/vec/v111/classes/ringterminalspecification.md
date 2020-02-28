---
title: RingTerminalSpecification
toc: false
type: specs
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Class
classes:
  - RingTerminalSpecification
menu_name: vec-1.1.1
---
<p>Specification for the definition of ring terminals. </p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [TerminalSpecification]({{< relref "terminalspecification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. Over all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|specialPartType | [String]({{< relref "string.md" >}}) | 0..1 | <p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |
|angle | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..2 | <p> Specifies the angle against two planes of the connector housing a terminal can be buckled.      </p> | [TerminalSpecification]({{< relref "terminalspecification.md" >}}) |
|sealingClass | [SealingClass]({{< relref "sealingclass.md" >}}) | 0..* | <p>Specifies the sealing class of the terminal. </p> | [TerminalSpecification]({{< relref "terminalspecification.md" >}}) |
|voltageRange | [ValueRange]({{< relref "valuerange.md" >}}) | 0..1 | <p> Specifies the allowed voltage range for the connector housing.      </p> | [TerminalSpecification]({{< relref "terminalspecification.md" >}}) |
|boltDiameter | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <p> Specifies the diameter of the bolt for which the ring terminal is designed for.      </p> | [RingTerminalSpecification]({{< relref "ringterminalspecification.md" >}}) |
|thickness | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <p>Specifies the thickness of the contact surface of the ring terminal. </p> | [RingTerminalSpecification]({{< relref "ringterminalspecification.md" >}}) |
|boltType | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies the type of the bolt. This should be an enumeration of values defined in a conformance class.      </p> | [RingTerminalSpecification]({{< relref "ringterminalspecification.md" >}}) |
|outsideDimension | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Specifies the diameter of the circle around the center of the bolt which passes through the farthest outside point of the contact surface of the ring terminal. (see KBLFRM-311) </p> | [RingTerminalSpecification]({{< relref "ringterminalspecification.md" >}}) |
|torsionProtection | [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <p>Specifies if the ring terminal is torsion protected or not.  (see KBLFRM-311) </p> | [RingTerminalSpecification]({{< relref "ringterminalspecification.md" >}}) |

