---
title: SegmentLocation
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - SegmentLocation
menu_name: vec-2.0.1
---
<p>Specifies a point on a TopologySegment as a Location. </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | topology |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Location]({{< relref "location.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the Location. The identification is guaranteed to be unique within the PlacementSpecification.      </p> | [Location]({{< relref "location.md" >}}) |
|matchingId| [String]({{< relref "string.md" >}}) | 0..1 | <p>Specifies an identification for matching the location with a reference point of component (e.g. a cable channel).  </p> | [Location]({{< relref "location.md" >}}) |
|offset| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <p>Specifies the offset / distance of the Location to the anchor of the location.  </p> | [SegmentLocation]({{< relref "segmentlocation.md" >}}) |
|anchor| [AnchorType]({{< relref "anchortype.md" >}}) | 1 | <p> Specifies if the location on the <i>TopologySegment</i> is defined as on offset relative to the startNode of the TopologySegment or the endNode.      </p> | [SegmentLocation]({{< relref "segmentlocation.md" >}}) |

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
        <td>referencedSegment</td>
        <td><a href="{{< relref "topologysegment.md" >}}">TopologySegment</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> References the <i>TopologySegment</i> on which the Location is located.      </p></td>
    </tr>
    </tbody>
</table>




