---
title: MeasurementPointReference
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A <i>MeasurementPointReference</i> is the instance of a <i>MeasurementPoint</i> in the context of an <i>OccurrenceOrUsage</i>.      </p>    </body> </html> 
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
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the MeasurementPointReference. The identification is guaranteed to be unique within the containing PlaceableElementRole.      </p>    </body> </html>  | [MeasurementPointReference]({{< relref "measurementpointreference.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [MeasurementPoint]({{< relref "measurementpoint.md" >}}) | measurementPoint | 1 | 0..* | <html>   <head>     </head>   <body>     <p> References the <i>MeasurementPoint</i> that is instanced by this <i>MeasurementPointReference.</i>      </p>    </body> </html>  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [PlaceableElementRole]({{< relref "placeableelementrole.md" >}}) | 1 | measurementPointReference | 0..* |  |
