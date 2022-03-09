---
title: PartSubstitutionSpecification
toc: false
type: specs
date: "2022-03-09"
draft: false
specification: VEC
version: 2.0.0
documentType: "Recommendation"
elementType: Class
classes:
  - PartSubstitutionSpecification
menu_name: vec-2.0.0
---
<p> A <i>PartSubstitutionSpecification</i> defines a set of <i>PartVersions</i> that can be used alternatively, due to an incomplete specification for the 150% product description. For a concrete wiring harness only on valid <i>PartVersion</i> remains. The selection logic for valid <i>PartVersions</i> is not included in the VEC.      </p>      <p> A <i>PartSubstitutionSpecification </i>can be used for example tubes or ring terminals, where a part of the specification is known at design time, but not yet the complete specification. For tubes for example the tube diameter is not known at design time, since it depends on the bundle diameter of a specific configuration.       </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | core |
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
| [PartVersion]({{< relref "partversion.md" >}}) | alternativePartVersions | 0..* |  |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [PartUsage]({{< relref "partusage.md" >}}) |  | partSubstitution | 0..1 |  |
