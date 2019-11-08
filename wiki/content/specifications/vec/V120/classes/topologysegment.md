---
title: TopologySegment
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A <i>TopologySegment</i> is a distance in the Topology where no intermediate electrical contacts appear. If a Topology contains routed wires, then the wire at the beginning of a TopologySegment have to be the same as in the ending.     </p>      <p> <i>TopologySegments</i> are a logical construct to describe the physical representation of a wiring harness topology. Therefore a <i>TopologySegment</i> is only valid if it has a physical manifestation. <i>TopologySegments</i> with a length of 0 or less do not have a physical manifestation and are therefore <u>not</u> valid.     </p>      <p> Additionally the usage of <i>TopologySegments</i> with a length of 0 create problems in the overall process. For example the synchronization of 3D /&#160;2D&#160;systems becomes harder or even impossible and the handling of wire protections on those <i>TopologySegment</i> is also unclear.      </p>    </body> </html> 
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
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the TopologySegment. The identification is guaranteed to be unique within the TopologySpecification. Over all VEC-documents a TopologySegment-instance can be trusted to be the same if the TopologySpecification-instance is the same (see TopologySpecification) and the identification of the TopologySegment is the same.      </p>    </body> </html>  | [TopologySegment]({{< relref "topologysegment.md" >}}) |
|form | [SegmentForm]({{< relref "segmentform.md" >}}) | 1 | <html><body><p>Specifies the form of the TopologySegment. A TopologySegment can either be circular or noncircular.  </p></body></html> | [TopologySegment]({{< relref "topologysegment.md" >}}) |
|aliasId | [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies additional identifiers for the TopologySegment.     </p>      <p> Example: TopologySegment Ids may vary from one CAD system export to another. Therefore the CAD system Id is improper for identification attribute. The identification shall have a value which is unique within the Topology. AliasId may be used for the CAD system Id.      </p>    </body> </html>  | [TopologySegment]({{< relref "topologysegment.md" >}}) |
|processingInstruction | [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies processing instructions for the TopologySegment.      </p>    </body> </html>  | [TopologySegment]({{< relref "topologysegment.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [TopologyNode]({{< relref "topologynode.md" >}}) | startNode | 1 | 0..* | References the TopologyNode where the TopologySegment starts.   |
| [TopologyNode]({{< relref "topologynode.md" >}}) | endNode | 1 | 0..* | References the TopologyNode where the TopologySegment ends.   |
| [SegmentLength]({{< relref "segmentlength.md" >}}) | lengthInformation | 0..* | 1 | Specifies the different SegmentLengths of the TopologySegment.   |
| [SegmentCrossSectionArea]({{< relref "segmentcrosssectionarea.md" >}}) | crossSectionAreaInformation | 0..* | 1 | Specifies the different SegmentCrossSectionAreas of the TopologySegment.   |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ZoneAssignment]({{< relref "zoneassignment.md" >}}) | 0..* | assignedSegment | 1 | <html>   <head>     </head>   <body> The <i>TopologySegment</i> that is assigned to <i>TopologyZone</i> with this <i>ZoneAssignment.</i></body> </html> |
| [SegmentMapping]({{< relref "segmentmapping.md" >}}) |  | innerSegment |  |  |
| [Routing]({{< relref "routing.md" >}}) | 0..* | mandatorySegment | 0..* | Specifies some constraints for the routing. If the path of the routing is recalculated the referenced segments must be visited.   |
| [SegmentLocation]({{< relref "segmentlocation.md" >}}) | 0..* | referencedSegment | 1 | References the TopologieSegment on which the Location is located.   |
| [GeometrySegment]({{< relref "geometrysegment.md" >}}) | 0..* | referenceSegment | 0..1 | References the TopologySegment that is represented by the GeometrySegment.   |
| [Path]({{< relref "path.md" >}}) | 0..* | segment | 0..* | Specifies an ordered list of TopologySegments the routing goes through.   |
| [TopologySpecification]({{< relref "topologyspecification.md" >}}) | 1 | topologySegment | 0..* | Specifies the TopologySegments defined by the TopologySpecification.  |
