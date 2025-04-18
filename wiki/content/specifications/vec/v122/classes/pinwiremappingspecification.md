﻿---
title: PinWireMappingSpecification
toc: false
type: specs
date: "2022-01-18"
draft: false
specification: VEC
version: 1.2.2
documentType: "Recommendation"
elementType: Class
classes:
  - PinWireMappingSpecification
menu_name: vec-1.2.2
---
<p> A <i>PinWireMappingSpecification</i> can be used create <b>variance free </b>mappings between a wire (represented by the contact point) and the pin of an E/E component. This is a possibility to create a shortcut in the model between a wire and its connected E/E-component (e.g. a fuse) that might be only indirectly connected to a wire (e.g. via a fuse and relay carrier). This is a relevant information for e.g. the validation of fusing. See the Pin Wire Mapping Diagram for more details.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | pin_wire_mapping |
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
| [PinWireMappingPoint]({{< relref "pinwiremappingpoint.md" >}}) |  |  |  |  |
