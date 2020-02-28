---
title: TopologySegment
toc: false
type: specs
date: "2017-02-21"
draft: false
specification: VEC
version: 1.1.3
documentType: "Recommendation"
elementType: Class
classes:
  - TopologySegment
menu_name: vec-1.1.3
---
<p>A TopologySegment is a distance in the Topology where no intermediate electrical contacts appear. If a Topology contains routed wires, then the wire at the beginning of a TopologySegment have to be the same as in the ending. </p>

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
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the TopologySegment. The identification is guaranteed to be unique within the TopologySpecification. Over all VEC-documents a TopologySegment-instance can be trusted to be the same if the TopologySpecification-instance is the same (see TopologySpecification) and the identification of the TopologySegment is the same.      </p> | [TopologySegment]({{< relref "topologysegment.md" >}}) |
|form | [SegmentForm]({{< relref "segmentform.md" >}}) | 1 | <p>Specifies the form of the TopologySegment. A TopologySegment can either be circular or noncircular.  </p> | [TopologySegment]({{< relref "topologysegment.md" >}}) |
|aliasId | [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <p> Specifies additional identifiers for the TopologySegment.     </p>      <p> Example: TopologySegment Ids may vary from one CAD system export to another. Therefore the CAD system Id is improper for identification attribute. The identification shall have a value which is unique within the Topology. AliasId may be used for the CAD system Id.      </p> | [TopologySegment]({{< relref "topologysegment.md" >}}) |
|processingInstruction | [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..* | <p> Specifies processing instructions for the TopologySegment.      </p> | [TopologySegment]({{< relref "topologysegment.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [SegmentLength]({{< relref "segmentlength.md" >}}) | lengthInformation | 0..* | 1 | Specifies the different SegmentLengths of the TopologySegment. |
| [TopologyNode]({{< relref "topologynode.md" >}}) | startNode | 1 | 0..* | References the TopologyNode where the TopologySegment starts. |
| [SegmentCrossSectionArea]({{< relref "segmentcrosssectionarea.md" >}}) | crossSectionAreaInformation | 0..* | 1 | Specifies the different SegmentCrossSectionAreas of the TopologySegment. |
| [TopologyNode]({{< relref "topologynode.md" >}}) | endNode | 1 | 0..* | References the TopologyNode where the TopologySegment ends. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Routing]({{< relref "routing.md" >}}) | 0..* | mandatorySegment | 0..* | Specifies some constraints for the routing. If the path of the routing is recalculated the referenced segments must be visited. |
| [SegmentLocation]({{< relref "segmentlocation.md" >}}) | 0..* | referencedSegment | 1 | References the TopologieSegment on which the Location is located. |
| [GeometrySegment]({{< relref "geometrysegment.md" >}}) | 0..* | referenceSegment | 0..1 | References the TopologySegment that is represented by the GeometrySegment. |
| [Path]({{< relref "path.md" >}}) | 0..* | segment | 0..* | Specifies an ordered list of TopologySegments the routing goes through. |
| [TopologySpecification]({{< relref "topologyspecification.md" >}}) | 1 | topologySegment | 0..* | Specifies the TopologySegments defined by the TopologySpecification. |
