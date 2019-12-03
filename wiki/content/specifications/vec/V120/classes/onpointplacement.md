---
title: OnPointPlacement
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html><body><p>An OnPointPlacement is a placement of an OccurrenceOrUsage that places it onto discrete points, in most cases one point. In some cases it is necessary to place a component (with more than one reference point) onto multiple points (e.g. a cable channel).  </p></body></html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | placement |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Placement]({{< relref "placement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Placement and Dimensions]({{< relref "../topology-and-geometry/placement-and-dimensions" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the Location. The identification is guaranteed to be unique within the PlacementSpecification.      </p>    </body> </html>  | [Placement]({{< relref "placement.md" >}}) |
|type | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>Room to specify additional type information of the placement. </p></body></html> | [Placement]({{< relref "placement.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Location]({{< relref "location.md" >}}) | location | 1..* | 0..1 | References the Locations where Placement places the reference points of the placed element.   |
