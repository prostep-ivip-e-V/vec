---
title: WireMounting
toc: false
type: specs
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Class
classes:
  - WireMounting
menu_name: vec-1.1.2
---
<p> A wire mouting defines the mouting of a wire end to terminal. If the contacting is required to be water proof a cavity seal can be mounted additionally.      </p>

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
| [WireMountingDetail]({{< relref "wiremountingdetail.md" >}}) | wireMountingDetail | 0..* | 1 | <p> Specifies the WireMoutingDetails, if a detailed description of the relationships between WireEnds and WireReceptions is needed.      </p> |
| [WireEnd]({{< relref "wireend.md" >}}) | referencedWireEnd | 1..* | 0..* | <p> References the wire ends that are used for the wire mounting. The minimum cardinality is one, because a wire mounting without wire end makes no sense.     </p>      <p> The maximum cardinality is * in order to support multi crimps.      </p> |
| [CavitySealRole]({{< relref "cavitysealrole.md" >}}) | mountedCavitySeal | 0..1 | 0..* | <p> References the cavity seal that is used for the wire mounting.      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ContactPoint]({{< relref "contactpoint.md" >}}) | 1 | wireMounting | 0..* | Specifies the WireMouting defined by ContactPoint. More than one WireMounting is allowed in order to support variance. In concrete configuration the WireMounting with all referenced elements present is used. |
