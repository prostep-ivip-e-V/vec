---
title: ZoneCoverage
toc: false
type: specs
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - ZoneCoverage
menu_name: vec-2.1.0
---
<p> A <i>ZoneCoverage </i>defines an area on a <i>TopologySegment</i> that lies within a <i>TopologyZone.</i> The area is defined with two <i>Locations</i>. <i>Locations </i>are the same mechanism that is used to define placements for components. The area that is in the <i>TopologyZone </i>is the area between the two locations. There is no semantic in the direction of the definition, so the assignment of first &amp;&#160;second Location is completely arbitrary.       </p>      <p> However, there are some restrictions for the definition of the locations. All locations have to be in relation to the&#160;<i>TopologySegment </i>that is referenced by the containing <i>ZoneAssignment</i>. This means the <i>Locations</i> have to be either a <i>SegmentLocation on the </i>respective<i> </i><i>TopologySegment</i> or a <i>NodeLocation</i> on the start or end node of this particular <i>T</i><i>opologySegment.</i> A <i>ZoneCoverage</i> from start to end node of a <i>TopologySegment</i> is equivalent to the complete omission of <i>ZoneCoverages</i> for a particular <i>ZoneAssignment</i>.      </p>      <p> &#160;      </p>

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
           <th>Agg.{{< info agg >}}</th>
           <th>Unique{{< info unique >}}</th>
           <th>Ordered{{< info ordered >}}</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>firstLocation</td>
        <td><a href="{{< relref "location.md" >}}">Location</a></td>
        <td>1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>0..1</td>
        <td></td>
    </tr>
    <tr>
        <td>secondLocation</td>
        <td><a href="{{< relref "location.md" >}}">Location</a></td>
        <td>1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>0..1</td>
        <td></td>
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
        <td>coverage</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "zoneassignment.md" >}}">ZoneAssignment</a></td>
        <td>1</td>
        <td><p> Contains a set of <i>ZoneCoverages</i> that define the areas of a <i>TopologySegment</i> that is affected by the TopologyZone.&#160;If no coverage is defined, the complete segment is affected. Multiple coverages can be necessary if the <i>TopologySegment</i> zigzags in and out of the <i>TopologyZone.</i>      </p></td>
    </tr>
    </tbody>
</table>



