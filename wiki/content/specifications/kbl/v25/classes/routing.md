---
title: Routing
toc: false
type: specs
date: "2018-07-04"
draft: false
specification: KBL
version: 2.5
documentType: "Recommendation"
elementType: Class
classes:
  - Routing
menu_name: kbl-2.5
---
<p>A Routing is a course taken to get from a starting point to a destination.</p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 5_Topology |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Changed_element]({{< relref "changed_element.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Id | [String]({{< relref "string.md" >}}) | 0..1 | <p> The Id specifies the identifier of the routing. This identifier is guaranteed to be unique within a harness and to stable over time.      </p> | [Routing]({{< relref "routing.md" >}}) |
|Special_routed_comment | [Localized_string]({{< relref "localized_string.md" >}}) | 0..* | <p>Allows the specification of an explanation why this routing has been routed in a special way.  </p> | [Routing]({{< relref "routing.md" >}}) |
|Special_routed | [boolean]({{< relref "boolean.md" >}}) | 0..1 | <p> Specifies that routing has been created in a special way. This means it has not been calculated in the standard way, because for some reason the result of the standard calculation has been inconvenient.      </p> | [Routing]({{< relref "routing.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Segment]({{< relref "segment.md" >}}) | Segments | 0..* | 0..* | <p> Represents the result of a routing algorithm.      </p> |
| [Connection]({{< relref "connection.md" >}}) | Routed_wire | 1 | 0..* |  |
| [Segment]({{< relref "segment.md" >}}) | Mandatory_segments | 0..* | 0..* | <p> References a list of segments that are mandatory to be visited during the routing process. As a consequence the <i>Segments</i> determined by a routing algorithm shall contain these <i>Mandatory_segments.</i>      </p> |
| [Processing_instruction]({{< relref "processing_instruction.md" >}}) | Processing_information | 0..* | 0..1 |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [KBL_container]({{< relref "kbl_container.md" >}}) | 1 | Routing | 0..* |  |
