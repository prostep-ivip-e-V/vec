---
title: PlacementPoint
toc: false
type: specs
date: "2022-01-18"
draft: false
specification: VEC
version: 1.2.2
documentType: "Recommendation"
elementType: Class
classes:
  - PlacementPoint
menu_name: vec-1.2.2
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

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [CableDuctOutlet]({{< relref "cableductoutlet.md" >}}) | 0..* | placementPoint | 0..1 | <p> Specifies the <i>PlacementPoint</i> that represents this <i>CableDuctOutlet</i> in a PlaceableElementSpecification.      </p> |
| [WireReception]({{< relref "wirereception.md" >}}) | 0..* | placementPoint | 0..1 | <p> Specifies the <i>PlacementPoint</i> that represents this <i>WireReception</i> in a PlaceableElementSpecification.      </p> |
| [SegmentConnectionPoint]({{< relref "segmentconnectionpoint.md" >}}) | 0..* | placementPoint | 0..1 | <p> Specifies the <i>PlacementPoint</i> that represents this <i>SegmentConnectionPoint </i>in a <i>PlaceableElementSpecification.</i>      </p> |
| [CableLeadThrough]({{< relref "cableleadthrough.md" >}}) | 0..* | placementPoint | 0..1 | <p> Specifies the <i>PlacementPoint</i> that represents this <i>CableLeadThrough</i> in a PlaceableElementSpecification.      </p> |
| [PlaceableElementSpecification]({{< relref "placeableelementspecification.md" >}}) | 1 | placementPoint | 0..* | <p> Specifies the <i>PlacementPoints</i> of a <i>PlaceableElementSpecification</i>.      </p> |
| [PlacementPointPosition]({{< relref "placementpointposition.md" >}}) | 0..* | placementPoint | 1 |  |
| [PlacementPointReference]({{< relref "placementpointreference.md" >}}) | 0..* | placementPoint | 1 | <p> References the <i>PlacementPoint</i> that is instanced by this <i>PlacementPointReference.</i>      </p> |
| [FittingOutlet]({{< relref "fittingoutlet.md" >}}) | 0..* | placementPoint | 0..1 | <p> Specifies the <i>PlacementPoint</i> that represents this <i>FittingOutlet</i> in a PlaceableElementSpecification.      </p> |
