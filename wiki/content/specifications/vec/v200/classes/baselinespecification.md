---
title: BaselineSpecification
toc: false
type: specs
date: "2021-11-30"
draft: false
specification: VEC
version: 2.0.0-rc1
documentType: "Recommendation"
elementType: Class
classes:
  - BaselineSpecification
menu_name: vec-2.0.0-rc1
---
<p> A <i>BaselineSpecification</i> defines a set of <i>ItemVersion</i>s (<i>Document-</i> and <i>PartVersions</i>) that relate to each other in a certain way e.g. all parts and documents in their specific versions that contributed to a specific manufactured result.      </p>      <p> Baselines are a standard mechanism to support change, release and configuration management.      </p>

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
|state | [BaselineState]({{< relref "baselinestate.md" >}}) | 0..1 | <p> Defines the state of the baseline itself (e.g. if it is finalized or work in progress).      </p>      <p> &#160;      </p> | [BaselineSpecification]({{< relref "baselinespecification.md" >}}) |
|content | [BaselineContent]({{< relref "baselinecontent.md" >}}) | 0..1 | <p> Defines the state of the content of the baseline in regard of its defined scope.      </p>      <p> &#160;      </p> | [BaselineSpecification]({{< relref "baselinespecification.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [ItemVersion]({{< relref "itemversion.md" >}}) | validVersions | 0..* | 0..* | <p> References the <i>ItemVersions </i>that are the content of the baseline.      </p>      <p> &#160;      </p> |
