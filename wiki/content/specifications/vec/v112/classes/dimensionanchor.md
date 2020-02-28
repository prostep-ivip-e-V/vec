---
title: DimensionAnchor
toc: false
type: specs
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Class
classes:
  - DimensionAnchor
menu_name: vec-1.1.2
---
<p> A <i>DimensionAnchor</i> represents an abstract anchor onto which a <i>Dimension</i> can be specified.      </p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | placement |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | true |
| **Derived Classifiers** | [Location]({{< relref "location.md" >}}), [MeasurementPointReference]({{< relref "measurementpointreference.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Dimension]({{< relref "dimension.md" >}}) | 0..* | dimensionAnchor | 1 | <p> References the location that is used as dimension point for the dimensioning (e.g. the entry point of a bundle into a connector housing).     </p>      <p> See KBLFRM-329 and KBLFRM-391.      </p> |
| [Dimension]({{< relref "dimension.md" >}}) | 0..* | referenceAnchor | 1 | <p> References the location that is used as reference point for the dimensioning (e.g. the location of a fixing as this relates to a fixpoint of the body in white).     </p>      <p> See KBLFRM-329 and KBLFRM-391.      </p> |
