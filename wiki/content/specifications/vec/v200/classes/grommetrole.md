---
title: GrommetRole
toc: false
type: specs
date: "2022-03-09"
draft: false
specification: VEC
version: 2.0.0
documentType: "Recommendation"
elementType: Class
classes:
  - GrommetRole
menu_name: vec-2.0.0
---
<p> A GrommetRole defines the instance specific properties and relationships of a grommet.      </p>

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

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [CableLeadThroughReference]({{< relref "cableleadthroughreference.md" >}}) | cableLeadThroughReference | 0..* | 1 |  |
| [GrommetSpecification]({{< relref "grommetspecification.md" >}}) | grommetSpecification | 1 | 0..* | <p> References the <i>GrommetSpecification</i> that is instanced by this <i>GrommetRole.</i>      </p> |
