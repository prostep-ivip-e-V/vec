---
title: BridgeTerminalSpecification
toc: false
type: specs
date: "2020-05-11"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - BridgeTerminalSpecification
menu_name: vec-1.2.0
---
<p> A bridge terminal is a part that behaves like terminal but has no <i>WireReceptions.</i> It is used to create short circuit between different pins in a connector. In its use, it can realize a schematic connection on its own and independently of other components.      </p>

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

