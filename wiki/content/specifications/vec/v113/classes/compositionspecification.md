---
title: CompositionSpecification
toc: false
type: specs
date: "2017-02-21"
draft: false
specification: VEC
version: 1.1.3
documentType: "Recommendation"
elementType: Class
classes:
  - CompositionSpecification
menu_name: vec-1.1.3
---
<p> The CompositionSpecificiation is used to define a set of occurrences required to describe unambiguously the design of a composite part. This does not have to be necessarily the same occurrences which are building the bill of material. Example: A company might want to regard an antenna cable as one part out of a bill of material perspective. However, at the same time it may be useful for the company to be able to describe the contacting of the antenna cable within the VEC. (see also PartStructureSpecification)      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | part_structure |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Specification]({{< relref "specification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. Over all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PartOccurrence]({{< relref "partoccurrence.md" >}}) | component | 0..* | 1 | <p> Specifies the PartOccurrences defined in the CompositionSpecification.      </p> |
