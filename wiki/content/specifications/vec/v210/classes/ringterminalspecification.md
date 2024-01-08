---
title: RingTerminalSpecification
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - RingTerminalSpecification
menu_name: vec-2.1.0
---
<p> Specification for the definition of ring terminals. These are the counterparts to bolt terminals.      </p>

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
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. For all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|specialPartType| [String]({{< relref "string.md" >}}) | 0..1 | <p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |
|voltageRange| [ValueRange]({{< relref "valuerange.md" >}}) | 0..1 | <p> Specifies the allowed voltage range for the connector housing.      </p> | [TerminalSpecification]({{< relref "terminalspecification.md" >}}) |
|sealingType| [TerminalSealingType]({{< relref "terminalsealingtype.md" >}}) | 0..1 | <p> Defines the <i>SealingType</i> of the Terminal. This type always refers to the sealing of the terminal itself. However, even a terminal which is not sealable can be used in sealed locations with additional measures (e.g. on the slot).        </p> | [TerminalSpecification]({{< relref "terminalspecification.md" >}}) |
|connectionALength| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the length of the terminal between the contact area (terminal reception) and the crimp are (wire reception, see diagram &quot;Terminal Dimensions&quot;).      </p> | [TerminalSpecification]({{< relref "terminalspecification.md" >}}) |
|overallLength| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the overall length the terminal (see diagram &quot;Terminal Dimensions&quot;).      </p> | [TerminalSpecification]({{< relref "terminalspecification.md" >}}) |
|boltDiameter| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the diameter of the bolt for which the ring terminal is designed for in a numerical way.      </p> | [RingTerminalSpecification]({{< relref "ringterminalspecification.md" >}}) |
|boltNominalSize| [TerminalBoltNominalSize]({{< relref "terminalboltnominalsize.md" >}}) | 0..1 | <p> Defines the size (diameter) of the bolt for which the ring terminal is designed for in a nominal way (e.g. &quot;M8&quot;).      </p> | [RingTerminalSpecification]({{< relref "ringterminalspecification.md" >}}) |
|thickness| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Specifies the thickness of the contact surface of the ring terminal. </p> | [RingTerminalSpecification]({{< relref "ringterminalspecification.md" >}}) |
|boltType| [TerminalBoltType]({{< relref "terminalbolttype.md" >}}) | 0..1 | <p> Specifies the type of the bolt to which the ring terminal is compatible.      </p> | [RingTerminalSpecification]({{< relref "ringterminalspecification.md" >}}) |
|outsideDimension| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Specifies the diameter of the circle around the center of the bolt which passes through the farthest outside point of the contact surface of the ring terminal. (see KBLFRM-311) </p> | [RingTerminalSpecification]({{< relref "ringterminalspecification.md" >}}) |
|torsionProtection| [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <p>Specifies if the ring terminal is torsion protected or not.  (see KBLFRM-311) </p> | [RingTerminalSpecification]({{< relref "ringterminalspecification.md" >}}) |
|nutIntegrated| [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <p> Defines if the ring terminal has nut integrated for the fixation on the corresponding bolt terminal.      </p> | [RingTerminalSpecification]({{< relref "ringterminalspecification.md" >}}) |





