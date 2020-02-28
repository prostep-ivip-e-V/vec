---
title: GrommetSpecification
toc: false
type: specs
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Class
classes:
  - GrommetSpecification
menu_name: vec-1.1.1
---
<p>Specification for the definition of grommets. </p>

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
|hardness | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Specifies the hardness of the grommet.  </p> | [GrommetSpecification]({{< relref "grommetspecification.md" >}}) |
|holeDiameter | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Specifies the valid diameter of a hole into which the grommet fits.  </p> | [GrommetSpecification]({{< relref "grommetspecification.md" >}}) |
|plateThickness | [ValueRange]({{< relref "valuerange.md" >}}) | 0..1 | <p>Specifies valid the plate thickness at the hole into which the grommet fits.  </p> | [GrommetSpecification]({{< relref "grommetspecification.md" >}}) |
|grommetType | [String]({{< relref "string.md" >}}) | 0..1 | <p>Specifies the type of the grommet. Appropriate values should be defined in a conformance class.  </p> | [GrommetSpecification]({{< relref "grommetspecification.md" >}}) |
|sealingClass | [SealingClass]({{< relref "sealingclass.md" >}}) | 0..* | <p>Specifies the sealing class of the grommet. </p> | [GrommetSpecification]({{< relref "grommetspecification.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [CableLeadThrough]({{< relref "cableleadthrough.md" >}}) | cableLeadThrough | 0..* | 1 | Specifies the CableLeadThroughs of the Grommet. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [GrommetRole]({{< relref "grommetrole.md" >}}) | 0..* | grommetSpecification | 1 | <p> References the <i>GrommetSpecification</i> that is instanced by this <i>GrommetRole.</i>      </p> |
