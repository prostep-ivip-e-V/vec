---
title: TopologySegment
toc: false
type: specs
date: "2020-02-01"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - TopologySegment
menu_name: vec-1.2.0
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
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the TopologySegment. The identification is guaranteed to be unique within the TopologySpecification. For all VEC-documents a TopologySegment-instance can be trusted to be the same if the TopologySpecification-instance is the same (see TopologySpecification) and the identification of the TopologySegment is the same.      </p> | [TopologySegment]({{< relref "topologysegment.md" >}}) |
|form | [SegmentForm]({{< relref "segmentform.md" >}}) | 1 | <p>Specifies the form of the TopologySegment. A TopologySegment can either be circular or noncircular.  </p> | [TopologySegment]({{< relref "topologysegment.md" >}}) |
|aliasId | [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <p> Specifies additional identifiers for the TopologySegment.      </p>      <p> Example: TopologySegment Ids may vary from one CAD system export to another. Therefore, the CAD system Id is improper for identification attribute. The identification shall have a value which is unique within the Topology. AliasId may be used for the CAD system Id.      </p> | [TopologySegment]({{< relref "topologysegment.md" >}}) |
|processingInstruction | [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..* | <p> Specifies processing instructions for the TopologySegment.      </p> | [TopologySegment]({{< relref "topologysegment.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [TopologySegment]({{< relref "topologysegment.md" >}}) | instantiatedSegment | 0..1 | 0..* | <p> If this <i>TopologySegment</i> is an instance of another <i>To</i><i>pologySegment </i>that is defined elsewhere (e.g. the topology of an assembly), then the instantiated may be referenced here.      </p> |
| [SegmentCrossSectionArea]({{< relref "segmentcrosssectionarea.md" >}}) | crossSectionAreaInformation | 0..* | 1 | Specifies the different SegmentCrossSectionAreas of the TopologySegment. |
| [TopologyNode]({{< relref "topologynode.md" >}}) | startNode | 1 | 0..* | References the TopologyNode where the TopologySegment starts. |
| [TopologyNode]({{< relref "topologynode.md" >}}) | endNode | 1 | 0..* | References the TopologyNode where the TopologySegment ends. |
| [SegmentLength]({{< relref "segmentlength.md" >}}) | lengthInformation | 0..* | 1 | Specifies the different SegmentLengths of the TopologySegment. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ZoneAssignment]({{< relref "zoneassignment.md" >}}) | 0..* | assignedSegment | 1 | <p> The <i>TopologySegment</i> that is assigned to <i>TopologyZone</i> with this <i>ZoneAssignment.</i>      </p> |
| [SegmentMapping]({{< relref "segmentmapping.md" >}}) |  | innerSegment | 1 |  |
| [TopologySegment]({{< relref "topologysegment.md" >}}) | 0..* | instantiatedSegment | 0..1 | <p> If this <i>TopologySegment</i> is an instance of another <i>To</i><i>pologySegment </i>that is defined elsewhere (e.g. the topology of an assembly), then the instantiated may be referenced here.      </p> |
| [Routing]({{< relref "routing.md" >}}) | 0..* | mandatorySegment | 0..* | Specifies some constraints for the routing. If the path of the routing is recalculated the referenced segments must be visited. |
| [SegmentLocation]({{< relref "segmentlocation.md" >}}) | 0..* | referencedSegment | 1 | <p> References the <i>TopologySegment</i> on which the Location is located.      </p> |
| [GeometrySegment]({{< relref "geometrysegment.md" >}}) | 0..* | referenceSegment | 0..1 | References the TopologySegment that is represented by the GeometrySegment. |
| [Path]({{< relref "path.md" >}}) | 0..* | segment | 0..* | Specifies an ordered list of TopologySegments the routing goes through. |
| [TopologySpecification]({{< relref "topologyspecification.md" >}}) | 1 | topologySegment | 0..* | Specifies the TopologySegments defined by the TopologySpecification. |
