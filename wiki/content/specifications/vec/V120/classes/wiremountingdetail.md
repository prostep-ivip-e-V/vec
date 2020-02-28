---
title: WireMountingDetail
toc: false
type: specs
date: "2020-02-01"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - WireMountingDetail
menu_name: vec-1.2.0
---
<p> With a WireMountingDetail it is possible to describe a detailed wire mounting.     </p>      <p> This is needed if the information which wire end is mounted onto which wire reception is important (e.g. coax contacts).      </p>
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
| [WireReceptionReference]({{< relref "wirereceptionreference.md" >}}) | contactedWireReception | 1 | 0..* | References the WireReception that is used for the WireMounting. |
| [WireEnd]({{< relref "wireend.md" >}}) | referencedWireEnd | 1..* | 0..* | References the WireEnds that are mounted to referenced WireReception. A cardinality of more than one is allowed in order support parallel connectors, where multiple wire ends are placed on one side of the connector (one wire reception) and the other wire ends are placed on the other side of the connector (the other wire reception). |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [WireMounting]({{< relref "wiremounting.md" >}}) | 1 | wireMountingDetail | 0..* | <p> Specifies the WireMoutingDetails, if a detailed description of the relationships between WireEnds and WireReceptions is needed.      </p> |
