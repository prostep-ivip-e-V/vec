---
title: PlaceableElementSpecification
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Specification for the general aspects of a component that are enabling the component to be placed in a topology. All components that should have the ability to be placed on a certain position in the topology must have a PlaceableElementSpecification      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | placeable_element |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Coordinate Systems of Components]({{< relref "../description-of-components/coordinate-systems-of-components" >}})<br/> [Instances of Placeable Components]({{< relref "../instances-of-components/instances-of-placeable-components" >}})<br/> [Placeable Elements]({{< relref "../description-of-components/placeable-elements" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. Over all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p>    </body> </html>  | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies additional, human readable information about the specification.      </p>    </body> </html>  | [Specification]({{< relref "specification.md" >}}) |
|specialPartType | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p></body></html> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |
|validPlacementTypes | [PlacementType]({{< relref "placementtype.md" >}}) | 1..2 | <html>   <head>     </head>   <body>     <p> Defines the <i>PlacementTypes</i> that are valid for this element.      </p>    </body> </html>  | [PlaceableElementSpecification]({{< relref "placeableelementspecification.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PlacementPoint]({{< relref "placementpoint.md" >}}) | placementPoint | 0..* | 1 | <html>   <head>     </head>   <body>     <p> Specifies the <i>PlacementPoints</i> of an <i>PlaceableElementSpecification</i>.      </p>    </body> </html>  |
| [MeasurementPoint]({{< relref "measurementpoint.md" >}}) | measurementPoint | 0..* | 1 | <html>   <head>     </head>   <body>     <p> Specifies the <i>MeasurementPoints</i> of an <i>PlaceableElement</i>.       </p>    </body> </html>  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [PlaceableElementRole]({{< relref "placeableelementrole.md" >}}) | 0..* | placeableElementSpecification | 1 | <html>   <head>     </head>   <body>     <p> References the <i>PlaceableElementSpecification</i> that is instanced by this <i>PlaceableElementRole.</i>      </p>    </body> </html>  |
