---
title: PartRelation
toc: false
type: specs
date: "2017-02-21"
draft: false
specification: VEC
version: 1.1.3
documentType: "Recommendation"
elementType: Class
classes:
  - PartRelation
menu_name: vec-1.1.3
---
<p>A PartRelation can define Accessories to a specific Part. For example a fixing can need an additional cable tie. Accessories can either be mandatory, optional or one out of a group.  (see KBLFRM-311) </p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|relationType | [PartRelationType]({{< relref "partrelationtype.md" >}}) | 1 | <p>Specifies the type of the relation. </p> | [PartRelation]({{< relref "partrelation.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PartVersion]({{< relref "partversion.md" >}}) | accessoryPart | 1..* | 0..* | References the PartVersions that are related by the PartRelation. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [GeneralTechnicalPartSpecification]({{< relref "generaltechnicalpartspecification.md" >}}) | 1 | partRelation | 0..* | Specifies possible relations (accessories) of the specified part with other PartVersion (e.g. caps, clips). |
