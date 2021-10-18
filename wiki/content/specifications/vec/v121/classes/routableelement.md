---
title: RoutableElement
toc: false
type: specs
date: "2021-10-18"
draft: false
specification: VEC
version: 1.2.1
documentType: "Recommendation"
elementType: Class
classes:
  - RoutableElement
menu_name: vec-1.2.1
---
<p>A RoutableElement is an element that can be routed, which mean it is possible to assign it to a Path in the Topology.  </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | core |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | true |
| **Derived Classifiers** | [Connection]({{< relref "connection.md" >}}), [WireElementReference]({{< relref "wireelementreference.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Routing]({{< relref "routing.md" >}}) | 0..* | routedElement | 1 | Specifies the Element that is routed. |
