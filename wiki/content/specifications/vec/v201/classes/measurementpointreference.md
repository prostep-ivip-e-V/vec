---
title: MeasurementPointReference
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - MeasurementPointReference
menu_name: vec-2.0.1
---
<p> A <i>MeasurementPointReference</i> is the instance of a <i>MeasurementPoint</i> in the context of an <i>OccurrenceOrUsage</i>.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | placement |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [DimensionAnchor]({{< relref "dimensionanchor.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the MeasurementPointReference. The identification is guaranteed to be unique within the containing PlaceableElementRole.      </p> | [MeasurementPointReference]({{< relref "measurementpointreference.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [MeasurementPoint]({{< relref "measurementpoint.md" >}}) | measurementPoint | 1 | 0..* | <p> References the <i>MeasurementPoint</i> that is instanced by this <i>MeasurementPointReference.</i>      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [PlaceableElementRole]({{< relref "placeableelementrole.md" >}}) | 1 | measurementPointReference | 0..* |  |
