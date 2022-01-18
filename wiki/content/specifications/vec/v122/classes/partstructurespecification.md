---
title: PartStructureSpecification
toc: false
type: specs
date: "2022-01-18"
draft: false
specification: VEC
version: 1.2.2
documentType: "Recommendation"
elementType: Class
classes:
  - PartStructureSpecification
menu_name: vec-1.2.2
---
<p> Specification for the description of a part structure. This specification defines the PartOccurrences that are in the bill of material of the described PartOrUsage. This is necessary, because it is possible, that for a definite description a Part more PartOccurrences are needed than the ones that are in the bill of material (see CompositionSpecification).      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | part_structure |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. For all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|specialPartType | [String]({{< relref "string.md" >}}) | 0..1 | <p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |
|content | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies the type of content of the bill of material (e.g. module, harness complete set)      </p> | [PartStructureSpecification]({{< relref "partstructurespecification.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}}) | inBillOfMaterial | 0..* | 0..* | <p> References the PartOccurrences that are building the bill of material of a composite part.      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [PartWithSubComponentsRole]({{< relref "partwithsubcomponentsrole.md" >}}) | 0..* | partStructureSpecification | 1 | <p> References the <i>PartStructureSpecification </i>that is instantiated by this <i>PartWithSubComponentsRole</i>.      </p> |
