---
title: OccurrenceOrUsageViewItem2D
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html><body><p>An OccurrenceOrUsageViewItem2D specifies the representation of a OcurrenceOrUsage in a 2DDrawing.  </p></body></html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | geo_2d |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |


## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the OccurrenceOrUsageViewItem. The identification is guaranteed to be unique within the BuildingBlockSpecification2D.      </p>    </body> </html>  | [OccurrenceOrUsageViewItem2D]({{< relref "occurrenceorusageviewitem2d.md" >}}) |
|aliasId | [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies additional identifiers for the OccurrenceOrUsageViewItem2D.      </p>    </body> </html>  | [OccurrenceOrUsageViewItem2D]({{< relref "occurrenceorusageviewitem2d.md" >}}) |
|gridSquare | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>Specifies the grid square in which the OccurrenceOrUsageViewItem2D is placed (e.g. E/40). </p></body></html> | [OccurrenceOrUsageViewItem2D]({{< relref "occurrenceorusageviewitem2d.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Transformation2D]({{< relref "transformation2d.md" >}}) | orientation | 0..1 | 1 | Specifies the orientation of the view item.  |
| [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}}) | occurrenceOrUsage | 0..* | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the <i>OccurrenceOrUsages</i> which are represented by the view item.      </p>      <p> <b>Important: </b>To use one <i>OccurenceOrUsageViewItem</i> for multiple <i>OccurrenceOrUsages </i>is only valid, if the referenced items are true alternatives to each other. That means, they must have an identical placement, the geometrical models used for each item must be substitutable and the item must be mutually exclusive to each other.      </p>  </body> </html> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [BuildingBlockSpecification2D]({{< relref "buildingblockspecification2d.md" >}}) | 1 | placedElementViewItem | 0..* | Specifies the view items for OccurrenceOrUsages on a BuildingBlockSpecification2D.   |
