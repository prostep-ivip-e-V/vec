---
title: Mapping
toc: false
type: specs
date: "2020-02-01"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - Mapping
menu_name: vec-1.2.0
---
<p>The Mapping defines the concrete mapping two parts aliased as A &amp; B. For performance reasons the roles PartSideA and PartSideB are abbreviated to A &amp; B. </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | mapping |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [SlotMapping]({{< relref "slotmapping.md" >}}) | slotMapping | 0..* | 1 |  |
| [PartVersion]({{< relref "partversion.md" >}}) | B | 1 | 0..* |  |
| [PartVersion]({{< relref "partversion.md" >}}) | A | 1 | 0..* |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [MappingSpecification]({{< relref "mappingspecification.md" >}}) | 1 | mapping | 0..* |  |
