---
title: Path
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - Path
menu_name: vec-2.0.1
---
<p> Describes a path in the topology. A <i>Path</i> is a continuous way through a topology without interruptions, defined by an ordered list of <i>TopologySegments</i>.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | topology |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

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
        <td>segment</td>
        <td><a href="{{< relref "topologysegment.md" >}}">TopologySegment</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>Y</td>
        <td>0..*</td>
        <td>Specifies an ordered list of TopologySegments the routing goes through.</td>
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
        <td>mappedPosition</td>
        <td>1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "segmentmapping.md" >}}">SegmentMapping</a></td>
        <td>0..1</td>
        <td></td>
    </tr>
    <tr>
        <td>path</td>
        <td>0..1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "dimension.md" >}}">Dimension</a></td>
        <td>0..1</td>
        <td>Specifies a path in the topology along which the dimension is defined.</td>
    </tr>
    <tr>
        <td>path</td>
        <td>1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "routing.md" >}}">Routing</a></td>
        <td>0..1</td>
        <td>Specifies a Path on the topology that is used for the routing.</td>
    </tr>
    <tr>
        <td>path</td>
        <td>0..1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "onwayplacement.md" >}}">OnWayPlacement</a></td>
        <td>0..1</td>
        <td>Specifies the topology path defining the way the OnWayPlacement takes in the topology.</td>
    </tr>
    <tr>
        <td>restrictedPath</td>
        <td>1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "topologybendingrestriction.md" >}}">TopologyBendingRestriction</a></td>
        <td>0..1</td>
        <td><p> The path that defines the restricted way in the topology.      </p></td>
    </tr>
    </tbody>
</table>



