---
title: Dimension
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A Dimension defines a measurement for the distance between two Locations. An acceptable tolerance can be specified additionally. If the Locations are not located on adjacent topology-elements it is possible to specify a Path for the dimension along which the measurement must be taken.     </p>      <p> The value for the Dimension is not specified as Numerical_value (which can define a Tolerance as well). This is because the &quot;valueComponent&quot; of the Numerical_value is mandatory. For Dimensions it shall be optional since there are scenarios where the dimension only specifies a Tolerance for a distance defined by the topology (segment length + placement information).       </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | placement |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |


## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the Dimension. The identification is guaranteed to be unique within the containing PlacementSpecification.      </p>    </body> </html>  | [Dimension]({{< relref "dimension.md" >}}) |
|valueComponent | [Double]({{< relref "double.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Defines the value of the dimension. This value can be null, if it shall be calculated and only a tolerance shall be defined.       </p>    </body> </html>  | [Dimension]({{< relref "dimension.md" >}}) |
|valueCalculated | [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Defines if the value of the <i>Dimension</i> was calculated (e.g. the sum of segment lengths in the topology) or if it was defined manually.       </p>    </body> </html>  | [Dimension]({{< relref "dimension.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Tolerance]({{< relref "tolerance.md" >}}) | tolerance | 0..1 | 0..1 |  |
| [DimensionAnchor]({{< relref "dimensionanchor.md" >}}) | dimensionAnchor | 1 | 0..* | <html>   <head>     </head>   <body>     <p> References the location that is used as dimension point for the dimensioning (e.g. the entry point of a bundle into a connector housing).     </p>      <p> See KBLFRM-329 and KBLFRM-391.      </p>    </body> </html>  |
| [Path]({{< relref "path.md" >}}) | path | 0..1 | 0..1 | Specifies a path in the topology along which the dimension is defined.   |
| [Location]({{< relref "location.md" >}}) | definedLocations | 0..2 | 1 |  |
| [DimensionAnchor]({{< relref "dimensionanchor.md" >}}) | referenceAnchor | 1 | 0..* | <html>   <head>     </head>   <body>     <p> References the location that is used as reference point for the dimensioning (e.g. the location of a fixing as this relates to a fixpoint of the body in white).     </p>      <p> See KBLFRM-329 and KBLFRM-391.      </p>    </body> </html>  |
| [Unit]({{< relref "unit.md" >}}) | unitComponent | 1 | 0..* |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [PlacementSpecification]({{< relref "placementspecification.md" >}}) | 1 | dimension | 0..* | Specifies the Dimensions defined by the PlacementSpecification.  |
