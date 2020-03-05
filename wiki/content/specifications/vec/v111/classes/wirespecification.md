---
title: WireSpecification
toc: false
type: specs
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Class
classes:
  - WireSpecification
menu_name: vec-1.1.1
---
<p> Specification for the definition of a wire. This can either be a complex multicore wire or a normal single core. In the VEC a wire is defined by one WireElement, which may be composed from other WireElements.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
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

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [WireElement]({{< relref "wireelement.md" >}}) | wireElement | 1..* | 0..1 | <p> Specifies the WireElements that are available in the <i>WireSpecification</i>.      </p> |
| [WireElementSpecification]({{< relref "wireelementspecification.md" >}}) | wireElementSpecification | 1 | 0..* | <p> References the <i>WireElementSpecification </i>that defines the properties of the top-most <i>WireElement.</i>      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [CompatibilityStatement]({{< relref "compatibilitystatement.md" >}}) | 0..* | wireSpecification | 0..* | <p> References the WireSpecifications for which the compatibility statement is stated.      </p> |
| [WireRole]({{< relref "wirerole.md" >}}) | 0..* | wireSpecification | 1 | <p> References the <i>WireSpecification</i> that is instanced by this <i>WireRole.</i>      </p> |
