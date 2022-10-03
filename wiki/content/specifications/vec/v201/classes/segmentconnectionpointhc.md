---
title: SegmentConnectionPointHC
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - SegmentConnectionPointHC
menu_name: vec-2.0.1
---
<p> Specifies a point where the <i>HousingComponent</i> can be attached to the topology [if required] (sometimes called bundle position point or insertion point).      </p>      <p> &#160;      </p>      <p> <i>Note: The suffix HC is justified by the fact that class names must be unique within the model and the name SegmentConnectionPoint is already used within the ConnectorHousingSpecification. However, the represented semantics of the two connection points are so similar that the use of actually different names for both would rather have led to confusion. So SegmentConnectionPointHC&#160;actually is short hand for &quot;SegmentConnectionPoint within HousingComponent&quot;.</i>      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 |  | [SegmentConnectionPointHC]({{< relref "segmentconnectionpointhc.md" >}}) |
|wireAddOn | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | Defines the wire add-on that is required the reach the referenced SegmentConnectionPoint from this SegmentConnectionPointHC with which the individual cavity add-ons are defined. | [SegmentConnectionPointHC]({{< relref "segmentconnectionpointhc.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PlacementPoint]({{< relref "placementpoint.md" >}}) | placementPoint | 0..1 | 0..* | <p> Specifies the <i>PlacementPoint</i> that represents this <i>SegmentConnectionPoint </i>in a <i>PlaceableElementSpecification.</i>      </p> |
| [SegmentConnectionPoint]({{< relref "segmentconnectionpoint.md" >}}) | connectorSegmentConnectionPoint | 0..1 | 0..* | References the <i>SegementConnectionPoint </i>of the <i>ConnectorHousingSpecification</i> that is used to &quot;enter&quot; the connector housing. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [HousingComponent]({{< relref "housingcomponent.md" >}}) | 1 | segmentConnectionPoint | 0..* | <p> Specifies the <i>SegmentConnectionPoints </i>the <i>HousingComponent</i>.      </p> |
