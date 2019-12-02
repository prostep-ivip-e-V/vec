---
title: ExternalMapping
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> An <i>ExternalMapping </i>is used to relate an <i>ExtendableElement </i>in the VEC with an element located in an external data source. The element in the VEC&#160;is referenced by the <i>mappedElement</i>, the external element is identified by the attribute <i>externalReference.</i>      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | external_mapping |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [External Mapping]({{< relref "../external-mapping/external-mapping" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|externalReference | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body> Defines the unique key of the external element. How this key shall be interpreted is dependent from the format of the external data source.   </body> </html>  | [ExternalMapping]({{< relref "externalmapping.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [ExtendableElement]({{< relref "extendableelement.md" >}}) | mappedElement | 1 | 0..* |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ExternalMappingSpecification]({{< relref "externalmappingspecification.md" >}}) | 1 | mappings | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the mappings of individual element.      </p>    </body> </html>  |
