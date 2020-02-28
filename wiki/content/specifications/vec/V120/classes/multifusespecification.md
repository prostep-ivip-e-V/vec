---
title: MultiFuseSpecification
toc: false
type: specs
date: "2020-02-01"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - MultiFuseSpecification
menu_name: vec-1.2.0
---

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [EEComponentSpecification]({{< relref "eecomponentspecification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. For all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|specialPartType | [String]({{< relref "string.md" >}}) | 0..1 | <p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |
|powerConsumption | [PowerConsumption]({{< relref "powerconsumption.md" >}}) | 0..* | <p> Specifies the <i>PowerConsumptions</i> of this <i>EEComponentSpecification.</i>      </p> | [EEComponentSpecification]({{< relref "eecomponentspecification.md" >}}) |
|fuseType | [String]({{< relref "string.md" >}}) | 0..1 | <p> The type of a fuse.      </p> | [MultiFuseSpecification]({{< relref "multifusespecification.md" >}}) |
|iMaxTotal | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the maximum electric current tolerated by the multifuse in total.      </p> | [MultiFuseSpecification]({{< relref "multifusespecification.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [FuseComponent]({{< relref "fusecomponent.md" >}}) | fuseComponents | 0..* | 1 |  |
