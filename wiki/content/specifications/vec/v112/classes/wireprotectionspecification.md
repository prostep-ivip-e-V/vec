﻿---
title: WireProtectionSpecification
toc: false
type: specs
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Class
classes:
  - WireProtectionSpecification
menu_name: vec-1.1.2
---
<p> Specification for the description of wire protections.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | non_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** | [FittingSpecification]({{< relref "fittingspecification.md" >}}), [StripeSpecification]({{< relref "stripespecification.md" >}}), [TapeSpecification]({{< relref "tapespecification.md" >}}), [TubeSpecification]({{< relref "tubespecification.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. Over all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|specialPartType | [String]({{< relref "string.md" >}}) | 0..1 | <p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |
|abrasionResistanceClass | [AbrasionResistanceClass]({{< relref "abrasionresistanceclass.md" >}}) | 0..* | <p> Specifies the abrasion resistance class of the wire protection. According to the VDA this is a value between A &amp; G.     </p>      <p> KBLFRM-311     </p> | [WireProtectionSpecification]({{< relref "wireprotectionspecification.md" >}}) |
|soundDampingClass | [SoundDampingClass]({{< relref "sounddampingclass.md" >}}) | 0..* | <p>Specifies the class of sound damping. According to the VDA this is a value between A &amp; E. KBLFRM-311  </p> | [WireProtectionSpecification]({{< relref "wireprotectionspecification.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [WireProtectionRole]({{< relref "wireprotectionrole.md" >}}) | 0..* | wireProtectionSpecification | 1 | <p> References the <i>WireProtectionSpecification</i> that is instanced by this <i>WireProtectionRole.</i>      </p> |
