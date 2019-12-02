---
title: MeasurePointPosition
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body> Defines the position of a MeasurementPoint within the coordinate system of the component. MeasurementPoint onto which dimension can be defined<i>.</i></body> </html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | local_geometry |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [LocalPosition]({{< relref "localposition.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Coordinate Systems of Components]({{< relref "../description-of-components/coordinate-systems-of-components" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [MeasurementPoint]({{< relref "measurementpoint.md" >}}) | measurementPoint | 1 | 0..* |  |
