---
title: MeasurementPoint
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Defines a reference point on a component that can be used to apply a Dimension. This is normally a significant point of the component e.g. an edge, a hole, a bolt or something similar.      </p>    </body> </html> 
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
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the MeasurementPoint. The identification is guaranteed to be unique within a component.      </p>    </body> </html>  | [MeasurementPoint]({{< relref "measurementpoint.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [PlaceableElementSpecification]({{< relref "placeableelementspecification.md" >}}) | 1 | measurementPoint | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the <i>MeasurementPoints</i> of an <i>PlaceableElement</i>.       </p>    </body> </html>  |
| [MeasurementPointReference]({{< relref "measurementpointreference.md" >}}) | 0..* | measurementPoint | 1 | <html>   <head>     </head>   <body>     <p> References the <i>MeasurementPoint</i> that is instanced by this <i>MeasurementPointReference.</i>      </p>    </body> </html>  |
