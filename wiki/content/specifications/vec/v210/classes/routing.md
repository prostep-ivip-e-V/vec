---
title: Routing
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - Routing
menu_name: vec-2.1.0
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
|identification| [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the Routing. The identification is guaranteed to be unique within the RoutingSpecification.      </p> | [Routing]({{< relref "routing.md" >}}) |
|specialRoutedComment| [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..1 | <p>Allows the specification of an explanation why this routing has been routed in a special way.  </p> | [Routing]({{< relref "routing.md" >}}) |
|specialRouted| [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <p> Specifies that routing has been created in a special way. This means it has not been calculated in the standard way, because for some reason the result of the standard calculation has been inconvenient.      </p> | [Routing]({{< relref "routing.md" >}}) |

## Outgoing Relations
<table>
    <thead>
        <tr>
           <th colspan="6">Other End</th>
           <th colspan="1">This End</th>
           <th colspan="1">General</th>
        </tr>
        <tr>
           <th>Role</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Agg.{{< info agg >}}</th>
           <th>Unique{{< info unique >}}</th>
           <th>Ordered{{< info ordered >}}</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>path</td>
        <td><a href="{{< relref "path.md" >}}">Path</a></td>
        <td>1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>0..1</td>
        <td>Specifies a Path on the topology that is used for the routing.</td>
    </tr>
    <tr>
        <td>mandatorySegment</td>
        <td><a href="{{< relref "topologysegment.md" >}}">TopologySegment</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>Specifies some constraints for the routing. If the path of the routing is recalculated the referenced segments must be visited.</td>
    </tr>
    <tr>
        <td>routedElement</td>
        <td><a href="{{< relref "routableelement.md" >}}">RoutableElement</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>Specifies the Element that is routed.</td>
    </tr>
    </tbody>
</table>

##  Incoming Relations
<table>
    <thead>
        <tr>
           <th colspan="5">This End</th>
           <th colspan="2">Other End</th>
           <th colspan="1">General</th>
        </tr>
        <tr>
           <th>Role</th>
           <th>Mult.</th>
           <th>Agg.{{< info agg >}}</th>
           <th>Unique{{< info unique >}}</th>
           <th>Ordered{{< info ordered >}}</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>routing</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "routingspecification.md" >}}">RoutingSpecification</a></td>
        <td>1</td>
        <td>Specifies the Routings described by the RoutingSpecification.</td>
    </tr>
    </tbody>
</table>



