---
title: Routing
toc: false
type: specs
date: "2022-01-18"
draft: false
specification: VEC
version: 1.2.2
documentType: "Recommendation"
elementType: Class
classes:
  - Routing
menu_name: vec-1.2.2
---
<p>A Routing is the assignment of a RoutableElement (Connection or WireElementReference) to a path in the topology.  </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | routing |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the Routing. The identification is guaranteed to be unique within the RoutingSpecification.      </p> | [Routing]({{< relref "routing.md" >}}) |
|specialRoutedComment | [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..1 | <p>Allows the specification of an explanation why this routing has been routed in a special way.  </p> | [Routing]({{< relref "routing.md" >}}) |
|specialRouted | [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <p> Specifies that routing has been created in a special way. This means it has not been calculated in the standard way, because for some reason the result of the standard calculation has been inconvenient.      </p> | [Routing]({{< relref "routing.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [RoutableElement]({{< relref "routableelement.md" >}}) | routedElement | 1 | 0..* | Specifies the Element that is routed. |
| [Path]({{< relref "path.md" >}}) | path | 1 | 0..1 | Specifies a Path on the topology that is used for the routing. |
| [TopologySegment]({{< relref "topologysegment.md" >}}) | mandatorySegment | 0..* | 0..* | Specifies some constraints for the routing. If the path of the routing is recalculated the referenced segments must be visited. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [RoutingSpecification]({{< relref "routingspecification.md" >}}) | 1 | routing | 0..* | Specifies the Routings described by the RoutingSpecification. |
