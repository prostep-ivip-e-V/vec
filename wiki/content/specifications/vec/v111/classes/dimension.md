---
title: Dimension
toc: false
type: specs
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Class
classes:
  - Dimension
menu_name: vec-1.1.1
---
<p>A Dimension defines a measurement for the distance between two Locations. An acceptable tolerance can be specified additionally. If the Locations are not located on adjacent topology-elements it is possible to specify a Path for the dimension along which the measurement must be taken.  </p>
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
|dimensionValue | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <p>Specifies the length of the dimension.  </p> | [Dimension]({{< relref "dimension.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [DimensionAnchor]({{< relref "dimensionanchor.md" >}}) | referenceAnchor | 1 | 0..* | <p> References the location that is used as reference point for the dimensioning (e.g. the location of a fixing as this relates to a fixpoint of the body in white).     </p>      <p> See KBLFRM-329 and KBLFRM-391.      </p> |
| [DimensionAnchor]({{< relref "dimensionanchor.md" >}}) | dimensionAnchor | 1 | 0..* | <p> References the location that is used as dimension point for the dimensioning (e.g. the entry point of a bundle into a connector housing).     </p>      <p> See KBLFRM-329 and KBLFRM-391.      </p> |
| [Location]({{< relref "location.md" >}}) | definedLocations | 0..2 | 1 |  |
| [Path]({{< relref "path.md" >}}) | path | 0..1 | 0..1 | Specifies a path in the topology along which the dimension is defined. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [PlacementSpecification]({{< relref "placementspecification.md" >}}) | 1 | dimension | 0..* | Specifies the Dimensions defined by the PlacementSpecification. |
