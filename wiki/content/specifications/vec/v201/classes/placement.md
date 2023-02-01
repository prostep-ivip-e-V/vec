---
title: Placement
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - Placement
menu_name: vec-2.0.1
---
<p>A placement defines the placement of a PlaceableElementRole onto a Topology. For the definition of the place on the Topology, Locations are used. A Placement can either be a placement on discrete points (OnPointPlacement) or on an area of the topology (OnWayPlacement).  </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | placement |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | true |
| **Derived Classifiers** | [OnPointPlacement]({{< relref "onpointplacement.md" >}}), [OnWayPlacement]({{< relref "onwayplacement.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the Location. The identification is guaranteed to be unique within the PlacementSpecification.      </p> | [Placement]({{< relref "placement.md" >}}) |
|type| [String]({{< relref "string.md" >}}) | 0..1 | <p>Room to specify additional type information of the placement. </p> | [Placement]({{< relref "placement.md" >}}) |

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
           <th>Agg.</th>
           <th>Unique</th>
           <th>Ordered</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>placedElement</td>
        <td><a href="{{< relref "placeableelementrole.md" >}}">PlaceableElementRole</a></td>
        <td>1..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the PlaceableElementRoles placed by the Placement.</td>
    </tr>
    <tr>
        <td>isOnTopOf</td>
        <td><a href="{{< relref "placement.md" >}}">Placement</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>Specifies constraints on ordering of Placements. All referenced Placements must be below (nearer to the center of the Segment) this Placement.  (see KBLFRM-171)</td>
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
           <th>Agg.</th>
           <th>Unique</th>
           <th>Ordered</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>isOnTopOf</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "placement.md" >}}">Placement</a></td>
        <td>0..*</td>
        <td>Specifies constraints on ordering of Placements. All referenced Placements must be below (nearer to the center of the Segment) this Placement.  (see KBLFRM-171)</td>
    </tr>
    <tr>
        <td>placement</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "placementspecification.md" >}}">PlacementSpecification</a></td>
        <td>1</td>
        <td>Specifies the Placements defined by the PlacementSpecification.</td>
    </tr>
    </tbody>
</table>



