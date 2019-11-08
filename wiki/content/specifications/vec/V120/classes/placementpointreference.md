---
title: PlacementPointReference
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A <i>PlacementPointReference</i> is the instance of a <i>PlacementPoint</i> in the context of an <i>OccurrenceOrUsage</i>.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | placement |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |


## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the PlacementPointReference. The identification is guaranteed to be unique within the containing PlaceableElementRole.      </p>    </body> </html>  | [PlacementPointReference]({{< relref "placementpointreference.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PlacementPoint]({{< relref "placementpoint.md" >}}) | placementPoint | 1 | 0..* | <html>   <head>     </head>   <body>     <p> References the <i>PlacementPoint</i> that is instanced by this <i>PlacementPointReference.</i>      </p>    </body> </html>  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Location]({{< relref "location.md" >}}) | 0..* | placedPlacementPoints | 0..* | <html>   <head>     </head>   <body>     <p> References the <i>PlacementPointReference </i>that is placed by this location.      </p>    </body> </html>  |
| [PlaceableElementRole]({{< relref "placeableelementrole.md" >}}) | 1 | placementPointReference | 0..* | <html>   <head>     </head>   <body>   </body> </html>  |
