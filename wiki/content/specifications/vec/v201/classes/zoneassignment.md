---
title: ZoneAssignment
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - ZoneAssignment
menu_name: vec-2.0.1
---
<p> A <i>ZoneAssignment </i>defines that a specific TopologySegment is affected by the <i>TopologyZone.</i> If a coverage is defined, only the parts of the Segment that have a coverage are affected. If no coverage is defined, the whole segment is affected.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | topology |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
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
           <th>Agg.{{< info agg >}}</th>
           <th>Unique{{< info unique >}}</th>
           <th>Ordered{{< info ordered >}}</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>coverage</td>
        <td><a href="{{< relref "zonecoverage.md" >}}">ZoneCoverage</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td><p> Contains a set of <i>ZoneCoverages</i> that define the areas of a <i>TopologySegment</i> that is affected by the TopologyZone.&#160;If no coverage is defined, the complete segment is affected. Multiple coverages can be necessary if the <i>TopologySegment</i> zigzags in and out of the <i>TopologyZone.</i>      </p></td>
    </tr>
    <tr>
        <td>assignedSegment</td>
        <td><a href="{{< relref "topologysegment.md" >}}">TopologySegment</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> The <i>TopologySegment</i> that is assigned to <i>TopologyZone</i> with this <i>ZoneAssignment.</i>      </p></td>
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
        <td>assignment</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "topologyzone.md" >}}">TopologyZone</a></td>
        <td></td>
        <td><p> The assignments of specific topology elements to this zone.      </p></td>
    </tr>
    </tbody>
</table>



