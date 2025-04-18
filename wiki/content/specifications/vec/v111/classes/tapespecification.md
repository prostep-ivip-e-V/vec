﻿---
title: TapeSpecification
toc: false
type: specs
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Class
classes:
  - TapeSpecification
menu_name: vec-1.1.1
---
<p>Specification for the description of tapes.  </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | non_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [WireProtectionSpecification]({{< relref "wireprotectionspecification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. Over all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|specialPartType | [String]({{< relref "string.md" >}}) | 0..1 | <p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |
|abrasionResistanceClass | [AbrasionResistanceClass]({{< relref "abrasionresistanceclass.md" >}}) | 0..* | <p> Specifies the abrasion resistance class of the wire protection. According to the VDA this is a value between A &amp; G.     </p>      <p> KBLFRM-311     </p> | [WireProtectionSpecification]({{< relref "wireprotectionspecification.md" >}}) |
|soundDampingClass | [SoundDampingClass]({{< relref "sounddampingclass.md" >}}) | 0..* | <p>Specifies the class of sound damping. According to the VDA this is a value between A &amp; E. KBLFRM-311  </p> | [WireProtectionSpecification]({{< relref "wireprotectionspecification.md" >}}) |
|backing | [Material]({{< relref "material.md" >}}) | 0..* | <p> Specifies the material of carrier of the tape, on which the adhesive material is applied.      </p> | [TapeSpecification]({{< relref "tapespecification.md" >}}) |
|adhesive | [Material]({{< relref "material.md" >}}) | 0..* | <p> Specifies the adhesive material of the tape.     </p> | [TapeSpecification]({{< relref "tapespecification.md" >}}) |
|width | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..* | <p> Specifies the width of the tape.     </p> | [TapeSpecification]({{< relref "tapespecification.md" >}}) |
|thickness | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..* | <p>Specifies the thickness of the tape (adhesive + backing).   </p> | [TapeSpecification]({{< relref "tapespecification.md" >}}) |
|coilCoreDiameter | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..* | <p> Specifies the inner diameter of the coil on which the tape is delivered.     </p> | [TapeSpecification]({{< relref "tapespecification.md" >}}) |

