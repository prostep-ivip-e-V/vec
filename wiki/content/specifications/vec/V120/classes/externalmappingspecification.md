---
title: ExternalMappingSpecification
toc: false
type: specs
date: "2020-02-01"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - ExternalMappingSpecification
menu_name: vec-1.2.0
---
<p> An<i> ExternalMappingSpecification </i>is used to define a mapping between an external data source (represented by the referenced <i>mappedDocument</i>) and the content of a VEC file.      </p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | external_mapping |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Specification]({{< relref "specification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. For all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [ExternalMapping]({{< relref "externalmapping.md" >}}) | mappings | 0..* | 1 | <p> Specifies the mappings of individual element.      </p> |
| [DocumentVersion]({{< relref "documentversion.md" >}}) | mappedDocument | 1 | 0..* | <p> Reference to the <i>DocumentVersion</i> that represents the external data source that connected to the VEC content by the <i>ExternalMappingSpecification</i>.      </p> |
