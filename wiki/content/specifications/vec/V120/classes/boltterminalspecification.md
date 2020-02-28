---
title: BoltTerminalSpecification
toc: false
type: specs
date: "2020-02-01"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - BoltTerminalSpecification
menu_name: vec-1.2.0
---
<p> Specification for the definition of bolt terminals. These are the counterparts to ring terminals.      </p>
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
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. For all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|specialPartType | [String]({{< relref "string.md" >}}) | 0..1 | <p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |
|voltageRange | [ValueRange]({{< relref "valuerange.md" >}}) | 0..1 | <p> Specifies the allowed voltage range for the connector housing.      </p> | [TerminalSpecification]({{< relref "terminalspecification.md" >}}) |
|sealingType | [TerminalSealingType]({{< relref "terminalsealingtype.md" >}}) | 0..1 | <p> Defines the <i>SealingType</i> of the Terminal. This type always refers to the sealing of the terminal itself. However, even a terminal which is not sealable can be used in sealed locations with additional measures (e.g. on the slot).        </p> | [TerminalSpecification]({{< relref "terminalspecification.md" >}}) |
|boltDiameter | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the diameter of the bolt in a nominal way.      </p> | [BoltTerminalSpecification]({{< relref "boltterminalspecification.md" >}}) |
|boltHeight | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> &#160;Specifies the height of the bolt (the height of the part to which ring terminals can be attached).      </p> | [BoltTerminalSpecification]({{< relref "boltterminalspecification.md" >}}) |
|boltNominalSize | [String]({{< relref "string.md" >}}) | 0..1 | <p> Defines the size (diameter) of the bolt in a nominal way (e.g. &quot;M8&quot;).       </p> | [BoltTerminalSpecification]({{< relref "boltterminalspecification.md" >}}) |
|boltType | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies the type of the bolt.      </p> | [BoltTerminalSpecification]({{< relref "boltterminalspecification.md" >}}) |
|torsionProtection | [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <p> Specifies if the bolt provides torsion protected or not.      </p> | [BoltTerminalSpecification]({{< relref "boltterminalspecification.md" >}}) |
|maxTerminalCount | [Integer]({{< relref "integer.md" >}}) | 0..1 | <p> &#160;Defines the maximum number of (ring) terminals that can be attached to this bolt at the same time.      </p> | [BoltTerminalSpecification]({{< relref "boltterminalspecification.md" >}}) |

