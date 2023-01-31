---
title: OnWayPlacement
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - OnWayPlacement
menu_name: vec-2.0.1
---
<p> An OnWayPlacement places an OccurrenceOrUsage onto an area of the Topology (e.g. a tape or a tube). The area is defined by a startLocation and an endLocation. If startLocation and endLocation are not located on the same TopologySegment it is possible to specify a Path of TopologySegments over which the OnWayPlacement goes.      </p>      <p> The names start- and endLocation are used to distinguish between the two ends. It does <b><u>not</u></b> indicate a direction as property of the product (e.g. for tapes).      </p>

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
           <th>Agg.</th>
           <th>Unique</th>
           <th>Ordered</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>path</td>
        <td><a href="{{< relref "path.md" >}}">Path</a></td>
        <td>0..1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>0..1</td>
        <td>Specifies the topology path defining the way the OnWayPlacement takes in the topology.</td>
    </tr>
    <tr>
        <td>startLocation</td>
        <td><a href="{{< relref "location.md" >}}">Location</a></td>
        <td>1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>0..1</td>
        <td>References the Location where OnWayPlacement starts.</td>
    </tr>
    <tr>
        <td>endLocation</td>
        <td><a href="{{< relref "location.md" >}}">Location</a></td>
        <td>1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>0..1</td>
        <td>References the Location where OnWayPlacement ends.</td>
    </tr>
    </tbody>
</table>




