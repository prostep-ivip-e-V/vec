---
title: TopologySegment
toc: false
type: specs
date: "2023-03-24"
draft: false
specification: VEC
version: 2.0.2
documentType: "Recommendation"
elementType: Class
classes:
  - TopologySegment
menu_name: vec-2.0.2
---
<p> A <i>TopologySegment</i> is a distance in the Topology where no intermediate electrical contacts appear. If a Topology contains routed wires, then the wire at the beginning of a TopologySegment must be the same as in the ending.      </p>      <p> <i>TopologySegments</i> are a logical construct to describe the physical representation of a wiring harness topology. Therefore, a <i>TopologySegment</i> is only valid if it has a physical manifestation. <i>TopologySegments</i> with a length of 0 or less do not have a physical manifestation and are therefore <u>not</u> valid.      </p>      <p> Additionally, the usage of <i>TopologySegments</i> with a length of 0 create problems in the overall process. For example, the synchronization of 3D /&#160;2D&#160;systems becomes harder or even impossible and the handling of wire protections on those <i>TopologySegment</i> is also unclear.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | topology |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the TopologySegment. The identification is guaranteed to be unique within the TopologySpecification. For all VEC-documents a TopologySegment-instance can be trusted to be the same if the TopologySpecification-instance is the same (see TopologySpecification) and the identification of the TopologySegment is the same.      </p> | [TopologySegment]({{< relref "topologysegment.md" >}}) |
|form| [SegmentForm]({{< relref "segmentform.md" >}}) | 0..1 | <p>Specifies the form of the TopologySegment. A TopologySegment can either be circular or noncircular.  </p> | [TopologySegment]({{< relref "topologysegment.md" >}}) |
|aliasId| [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <p> Specifies additional identifiers for the TopologySegment.      </p>      <p> Example: TopologySegment Ids may vary from one CAD system export to another. Therefore, the CAD system Id is improper for identification attribute. The identification shall have a value which is unique within the Topology. AliasId may be used for the CAD system Id.      </p> | [TopologySegment]({{< relref "topologysegment.md" >}}) |
|processingInstruction| [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..* | <p> Specifies processing instructions for the TopologySegment.      </p> | [TopologySegment]({{< relref "topologysegment.md" >}}) |

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
        <td>instantiatedSegment</td>
        <td><a href="{{< relref "topologysegment.md" >}}">TopologySegment</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> If this <i>TopologySegment</i> is an instance of another <i>To</i><i>pologySegment </i>that is defined elsewhere (e.g. the topology of an assembly), then the instantiated may be referenced here.      </p></td>
    </tr>
    <tr>
        <td>lengthInformation</td>
        <td><a href="{{< relref "segmentlength.md" >}}">SegmentLength</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Specifies the different SegmentLengths of the TopologySegment.</td>
    </tr>
    <tr>
        <td>startNode</td>
        <td><a href="{{< relref "topologynode.md" >}}">TopologyNode</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the TopologyNode where the TopologySegment starts.</td>
    </tr>
    <tr>
        <td>crossSectionAreaInformation</td>
        <td><a href="{{< relref "segmentcrosssectionarea.md" >}}">SegmentCrossSectionArea</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Specifies the different SegmentCrossSectionAreas of the TopologySegment.</td>
    </tr>
    <tr>
        <td>endNode</td>
        <td><a href="{{< relref "topologynode.md" >}}">TopologyNode</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the TopologyNode where the TopologySegment ends.</td>
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
        <td>assignedSegment</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "zoneassignment.md" >}}">ZoneAssignment</a></td>
        <td>0..*</td>
        <td><p> The <i>TopologySegment</i> that is assigned to <i>TopologyZone</i> with this <i>ZoneAssignment.</i>      </p></td>
    </tr>
    <tr>
        <td>innerSegment</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "segmentmapping.md" >}}">SegmentMapping</a></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>instantiatedSegment</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "topologysegment.md" >}}">TopologySegment</a></td>
        <td>0..*</td>
        <td><p> If this <i>TopologySegment</i> is an instance of another <i>To</i><i>pologySegment </i>that is defined elsewhere (e.g. the topology of an assembly), then the instantiated may be referenced here.      </p></td>
    </tr>
    <tr>
        <td>mandatorySegment</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "routing.md" >}}">Routing</a></td>
        <td>0..*</td>
        <td>Specifies some constraints for the routing. If the path of the routing is recalculated the referenced segments must be visited.</td>
    </tr>
    <tr>
        <td>referencedSegment</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "segmentlocation.md" >}}">SegmentLocation</a></td>
        <td>0..*</td>
        <td><p> References the <i>TopologySegment</i> on which the Location is located.      </p></td>
    </tr>
    <tr>
        <td>referenceSegment</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "geometrysegment.md" >}}">GeometrySegment</a></td>
        <td>0..*</td>
        <td>References the TopologySegment that is represented by the GeometrySegment.</td>
    </tr>
    <tr>
        <td>segment</td>
        <td>0..*</td>
        <td>N</td>
        <td>N</td>
        <td>Y</td>
        <td><a href="{{< relref "path.md" >}}">Path</a></td>
        <td>0..*</td>
        <td>Specifies an ordered list of TopologySegments the routing goes through.</td>
    </tr>
    <tr>
        <td>topologySegment</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "topologyspecification.md" >}}">TopologySpecification</a></td>
        <td>1</td>
        <td>Specifies the TopologySegments defined by the TopologySpecification.</td>
    </tr>
    </tbody>
</table>



