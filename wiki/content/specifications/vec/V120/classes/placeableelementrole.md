---
title: PlaceableElementRole
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html><body><p>A PlaceableElementRole defines the instance specific properties and relationships of a PlaceableElement. </p></body></html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | placement |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Role]({{< relref "role.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |


## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>Specifies a unique identification of the Role. The identification is guaranteed to be unqiue within the OccurrenceOrUsage. </p></body></html> | [Role]({{< relref "role.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PlacementPointReference]({{< relref "placementpointreference.md" >}}) | placementPointReference | 0..* | 1 | <html>   <head>     </head>   <body>   </body> </html>  |
| [MeasurementPointReference]({{< relref "measurementpointreference.md" >}}) | measurementPointReference | 0..* | 1 |  |
| [PlaceableElementSpecification]({{< relref "placeableelementspecification.md" >}}) | placeableElementSpecification | 1 | 0..* | <html>   <head>     </head>   <body>     <p> References the <i>PlaceableElementSpecification</i> that is instanced by this <i>PlaceableElementRole.</i>      </p>    </body> </html>  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Placement]({{< relref "placement.md" >}}) | 0..* | placedElement | 1..* | References the PlaceableElementRoles placed by the Placement.   |
