---
title: SpecificRole
toc: false
type: specs
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Class
classes:
  - SpecificRole
menu_name: vec-1.1.2
---
<p> A SpecificRole is the possibility to define instance specific properties with custom properties (see ExtendableElement). This is necessary, if the part is described by custom properties of a PartOrUsageRelatedSpecification.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Role]({{< relref "role.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <p>Specifies a unique identification of the Role. The identification is guaranteed to be unqiue within the OccurrenceOrUsage. </p> | [Role]({{< relref "role.md" >}}) |
|specificRoleType | [String]({{< relref "string.md" >}}) | 1 | <p>Specifies the type for role.  </p> | [SpecificRole]({{< relref "specificrole.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) | specification | 1 | 0..* | <p> References the <i>PartOrUsageRelatedSpecification </i>that is instantiated by this <i>SpecificRole.</i>      </p> |
