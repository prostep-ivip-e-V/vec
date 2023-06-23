---
title: OnPointPlacement
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - OnPointPlacement
menu_name: vec-2.0.1
---
<p> An OnPointPlacement is a placement of an OccurrenceOrUsage that places it onto discrete points, in most cases one point. In some cases, it is necessary to place a component (with more than one reference point) onto multiple points (e.g. a cable duct).      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | placement |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Placement]({{< relref "placement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

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
           <th>Agg.{{< info agg >}}</th>
           <th>Unique{{< info unique >}}</th>
           <th>Ordered{{< info ordered >}}</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>location</td>
        <td><a href="{{< relref "location.md" >}}">Location</a></td>
        <td>1..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>0..1</td>
        <td>References the Locations where Placement places the reference points of the placed element.</td>
    </tr>
    </tbody>
</table>




