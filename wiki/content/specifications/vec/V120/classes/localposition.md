---
title: LocalPosition
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body> A<i> LocalPosition </i>defines the position of a relevant point of component within the coordinate system of the component. </body> </html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | local_geometry |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | true |
| **Derived Classifiers** | [MeasurePointPosition]({{< relref "measurepointposition.md" >}}), [PlacementPointPosition]({{< relref "placementpointposition.md" >}}) |
| **Usage in Diagrams**   | [Coordinate Systems of Components]({{< relref "../description-of-components/coordinate-systems-of-components" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [CartesianPoint3D]({{< relref "cartesianpoint3d.md" >}}) | cartesianPoint | 1 | 0..* |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [LocalGeometrySpecification]({{< relref "localgeometryspecification.md" >}}) | 1 | positions | 0..* | <html>   <head>     </head>   <body> All position defined by this <i>LocalGeometrySpecification.</i></body> </html> |
