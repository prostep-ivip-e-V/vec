---
title: FerriteRole
toc: false
type: specs
date: "2022-01-18"
draft: false
specification: VEC
version: 1.2.2
documentType: "Recommendation"
elementType: Class
classes:
  - FerriteRole
menu_name: vec-1.2.2
---
<p> A <i>FerriteRole</i> defines the instance specific properties and relationships of a ferrite.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_non_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Role]({{< relref "role.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the Role. The identification is guaranteed to be unique within the OccurrenceOrUsage.      </p> | [Role]({{< relref "role.md" >}}) |
|numberOfWindings | [Integer]({{< relref "integer.md" >}}) |  | <p> Defines the of windings that the wires are wound around the ferrite.      </p> | [FerriteRole]({{< relref "ferriterole.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [FerriteSpecification]({{< relref "ferritespecification.md" >}}) | ferriteSpecification | 1 |  |  |
