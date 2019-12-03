---
title: Mapping
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html><body><p>The Mapping defines the concrete mapping two parts aliased as A &amp; B. For performance reasons the roles PartSideA and PartSideB are abbreviated to A &amp; B. </p></body></html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | mapping |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Cavity Mapping]({{< relref "../description-of-components/cavity-mapping" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PartVersion]({{< relref "partversion.md" >}}) | B | 1 | 0..* |  |
| [PartVersion]({{< relref "partversion.md" >}}) | A | 1 | 0..* |  |
| [SlotMapping]({{< relref "slotmapping.md" >}}) | slotMapping | 0..* | 1 |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [MappingSpecification]({{< relref "mappingspecification.md" >}}) | 1 | mapping | 0..* |  |
