---
title: MeasurementPoint
toc: false
type: specs
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Class
classes:
  - MeasurementPoint
menu_name: vec-1.1.2
---
<p> Defines a reference point on a component that can be used to apply a Dimension. This is normally a significant point of the component e.g. an edge, a hole, a bolt or something similar.      </p>

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
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the MeasurementPoint. The identification is guaranteed to be unique within a component.      </p> | [MeasurementPoint]({{< relref "measurementpoint.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [MeasurementPointReference]({{< relref "measurementpointreference.md" >}}) | 0..* | measurementPoint | 1 | <p> References the <i>MeasurementPoint</i> that is instanced by this <i>MeasurementPointReference.</i>      </p> |
| [PlaceableElementSpecification]({{< relref "placeableelementspecification.md" >}}) | 1 | measurementPoint | 0..* | <p> Specifies the <i>MeasurementPoints</i> of an <i>PlaceableElement</i>.       </p> |
