﻿---
title: UsageConstraintSpecification
toc: false
type: specs
date: "2022-01-18"
draft: false
specification: VEC
version: 1.2.2
documentType: "Recommendation"
elementType: Class
classes:
  - UsageConstraintSpecification
menu_name: vec-1.2.2
---
<p> Specification for the definition of usage constraints. The associated UsageConstraints are restricting the possible usages of the associated PartVersions and PartUsages.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | usage_constraint |
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
| [UsageConstraint]({{< relref "usageconstraint.md" >}}) | partUsageConstraint | 1..* | 1 | <p> Specifies the UsageConstraints that apply to the PartVersion or PartUsages described by the UsageConstraintSpecification. The ordering of this association is relevant. The elements shall arranged in the order of ascending priority.&#160;That means, elements further back in the collection have a higher priority.      </p> |
| [PartVersion]({{< relref "partversion.md" >}}) | constrainedParts | 0..* | 0..* | <p> References the <i>PartVersions</i> to which this <i>UsageConstraintSpecification</i> applies.      </p> |
