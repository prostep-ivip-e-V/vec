---
title: Dimension
toc: false
type: specs
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Class
classes:
  - Dimension
menu_name: vec-1.1.2
---
<p> A Dimension defines a measurement for the distance between two Locations. An acceptable tolerance can be specified additionally. If the Locations are not located on adjacent topology-elements it is possible to specify a Path for the dimension along which the measurement must be taken.     </p>      <p> The value for the Dimension is not specified as Numerical_value (which can define a Tolerance as well). This is because the &quot;valueComponent&quot; of the Numerical_value is mandatory. For Dimensions it shall be optional since there are scenarios where the dimension only specifies a Tolerance for a distance defined by the topology (segment length + placement information).       </p>

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
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the Dimension. The identification is guaranteed to be unique within the containing PlacementSpecification.      </p> | [Dimension]({{< relref "dimension.md" >}}) |
|valueComponent | [Double]({{< relref "double.md" >}}) | 0..1 | <p> Defines the value of the dimension. This value can be null, if it shall be calculated and only a tolerance shall be defined.       </p> | [Dimension]({{< relref "dimension.md" >}}) |
|valueCalculated | [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <p> Defines if the value of the <i>Dimension</i> was calculated (e.g. the sum of segment lengths in the topology) or if it was defined manually.       </p> | [Dimension]({{< relref "dimension.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [DimensionAnchor]({{< relref "dimensionanchor.md" >}}) | dimensionAnchor | 1 | 0..* | <p> References the location that is used as dimension point for the dimensioning (e.g. the entry point of a bundle into a connector housing).     </p>      <p> See KBLFRM-329 and KBLFRM-391.      </p> |
| [DimensionAnchor]({{< relref "dimensionanchor.md" >}}) | referenceAnchor | 1 | 0..* | <p> References the location that is used as reference point for the dimensioning (e.g. the location of a fixing as this relates to a fixpoint of the body in white).     </p>      <p> See KBLFRM-329 and KBLFRM-391.      </p> |
| [Path]({{< relref "path.md" >}}) | path | 0..1 | 0..1 | Specifies a path in the topology along which the dimension is defined. |
| [Location]({{< relref "location.md" >}}) | definedLocations | 0..2 | 1 |  |
| [Unit]({{< relref "unit.md" >}}) | unitComponent | 1 | 0..* |  |
| [Tolerance]({{< relref "tolerance.md" >}}) | tolerance | 0..1 | 0..1 |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [PlacementSpecification]({{< relref "placementspecification.md" >}}) | 1 | dimension | 0..* | Specifies the Dimensions defined by the PlacementSpecification. |
