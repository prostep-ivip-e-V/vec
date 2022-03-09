---
title: PlacementPoint
toc: false
type: specs
date: "2022-03-09"
draft: false
specification: VEC
version: 2.0.0
documentType: "Recommendation"
elementType: Class
classes:
  - PlacementPoint
menu_name: vec-2.0.0
---
<p>Defines a point on the component which can be placed explicitly in the topology (e.g. opening in a grommet, the entry point of a connector housing).  If a PlacementPoint requires further specification for a certain component type (e.g. the entry point of a connector housing), this is done by an element specific for the component type, which related to the placement point.  </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | placeable_element |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the PlacementPoint. The identification is guaranteed to be unique within a component.      </p> | [PlacementPoint]({{< relref "placementpoint.md" >}}) |
|segmentDiameter | [ValueRange]({{< relref "valuerange.md" >}}) | 0..1 | <p> Specifies the valid segment diameter range for which this <i>PlacementPoint</i> is suitable.      </p> | [PlacementPoint]({{< relref "placementpoint.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PartRelation]({{< relref "partrelation.md" >}}) | supplementaryParts | 0..* |  | <p> References the <i>PartRelations</i> that specify supplementary parts for this <i>PlacementPoint</i>, e.g. cable ties for attaching the component on the harness.      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [SegmentConnectionPoint]({{< relref "segmentconnectionpoint.md" >}}) | 0..* | placementPoint | 0..1 | <p> Specifies the <i>PlacementPoint</i> that represents this <i>SegmentConnectionPoint </i>in a <i>PlaceableElementSpecification.</i>      </p> |
| [CableDuctOutlet]({{< relref "cableductoutlet.md" >}}) | 0..* | placementPoint | 0..1 | <p> Specifies the <i>PlacementPoint</i> that represents this <i>CableDuctOutlet</i> in a PlaceableElementSpecification.      </p> |
| [WireReception]({{< relref "wirereception.md" >}}) | 0..* | placementPoint | 0..1 | <p> Specifies the <i>PlacementPoint</i> that represents this <i>WireReception</i> in a PlaceableElementSpecification.      </p> |
| [SegmentConnectionPointHC]({{< relref "segmentconnectionpointhc.md" >}}) | 0..* | placementPoint | 0..1 | <p> Specifies the <i>PlacementPoint</i> that represents this <i>SegmentConnectionPoint </i>in a <i>PlaceableElementSpecification.</i>      </p> |
| [PlacementPointReference]({{< relref "placementpointreference.md" >}}) | 0..* | placementPoint | 1 | <p> References the <i>PlacementPoint</i> that is instanced by this <i>PlacementPointReference.</i>      </p> |
| [PlacementPointPosition]({{< relref "placementpointposition.md" >}}) | 0..* | placementPoint | 1 |  |
| [CableLeadThroughOutlet]({{< relref "cableleadthroughoutlet.md" >}}) | 0..* | placementPoint | 0..1 | <p> Specifies the <i>PlacementPoint</i> that represents this <i>CableLeadThroughOutlet</i> in a PlaceableElementSpecification.      </p> |
| [FittingOutlet]({{< relref "fittingoutlet.md" >}}) | 0..* | placementPoint | 0..1 | <p> Specifies the <i>PlacementPoint</i> that represents this <i>FittingOutlet</i> in a PlaceableElementSpecification.      </p> |
| [PlaceableElementSpecification]({{< relref "placeableelementspecification.md" >}}) | 1 | placementPoint | 0..* | <p> Specifies the <i>PlacementPoints</i> of a <i>PlaceableElementSpecification</i>.      </p> |
