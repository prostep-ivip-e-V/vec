---
title: SegmentLength
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - SegmentLength
menu_name: vec-2.1.0
---
<p> Specifies the length of a <i>TopologySegment</i>. The length of a <i>TopologySegment </i>is defined as the length of the centerline of the segment.      </p>      <p> Attributes of the type SegmentLength normally have the multiplicity [0..*]. This means that such an attribute can have SegmentLength-entries for different classifications. It must not have multiple entries with the same classification.      </p>

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
|length| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <p>Specifies the length of the TopologySegment.  </p> | [SegmentLength]({{< relref "segmentlength.md" >}}) |
|classification| [LengthClassification]({{< relref "lengthclassification.md" >}}) | 1 | <p> Specifies the classification of the segment length.      </p> | [SegmentLength]({{< relref "segmentlength.md" >}}) |


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
        <td>lengthInformation</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "topologysegment.md" >}}">TopologySegment</a></td>
        <td>1</td>
        <td>Specifies the different SegmentLengths of the TopologySegment.</td>
    </tr>
    </tbody>
</table>



