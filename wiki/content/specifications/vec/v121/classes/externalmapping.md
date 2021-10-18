---
title: ExternalMapping
toc: false
type: specs
date: "2021-10-18"
draft: false
specification: VEC
version: 1.2.1
documentType: "Recommendation"
elementType: Class
classes:
  - ExternalMapping
menu_name: vec-1.2.1
---
<p> An <i>ExternalMapping </i>is used to relate an <i>ExtendableElement </i>in the VEC with an element located in an external data source. The element in the VEC&#160;is referenced by the <i>mappedElement</i>, the external element is identified by the attribute <i>externalReference.</i>      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | external_mapping |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|externalReference | [String]({{< relref "string.md" >}}) | 1 | <p> Defines the unique key of the external element. How this key shall be interpreted is dependent from the format of the external data source.      </p> | [ExternalMapping]({{< relref "externalmapping.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [ExtendableElement]({{< relref "extendableelement.md" >}}) | mappedElement | 1 | 0..* |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ExternalMappingSpecification]({{< relref "externalmappingspecification.md" >}}) | 1 | mappings | 0..* | <p> Specifies the mappings of individual element.      </p> |
