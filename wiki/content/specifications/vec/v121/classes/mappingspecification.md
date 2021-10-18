---
title: MappingSpecification
toc: false
type: specs
date: "2021-10-18"
draft: false
specification: VEC
version: 1.2.1
documentType: "Recommendation"
elementType: Class
classes:
  - MappingSpecification
menu_name: vec-1.2.1
---
<p> Specification for the description of a PinMapping. A PinMapping allows the mapping between the Cavities of two independent ConnectorHousingSpecifications. This is for example needed to determine the Mating for an Inliner or for the Mating between an EE-Component and a ConnectorHousing. The PinMapping is a part master data.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | mapping |
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
| [Mapping]({{< relref "mapping.md" >}}) | mapping | 0..* | 1 |  |
