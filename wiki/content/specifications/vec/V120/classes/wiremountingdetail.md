---
title: WireMountingDetail
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> With a WireMountingDetail it is possible to describe a detailed wire mounting.     </p>      <p> This is needed if the information which wire end is mounted onto which wire reception is important (e.g. coax contacts).      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | contacting |
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
| [WireReceptionReference]({{< relref "wirereceptionreference.md" >}}) | contactedWireReception | 1 | 0..* | References the WireReception that is used for the WireMounting.   |
| [WireEnd]({{< relref "wireend.md" >}}) | referencedWireEnd | 1..* | 0..* | References the WireEnds that are mounted to referenced WireReception. A cardinality of more than one is allowed in order support parallel connectors, where multiple wire ends are placed on one side of the connector (one wire reception) and the other wire ends are placed on the other side of the connector (the other wire reception).  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [WireMounting]({{< relref "wiremounting.md" >}}) | 1 | wireMountingDetail | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the WireMoutingDetails, if a detailed description of the relationships between WireEnds and WireReceptions is needed.      </p>    </body> </html>  |
