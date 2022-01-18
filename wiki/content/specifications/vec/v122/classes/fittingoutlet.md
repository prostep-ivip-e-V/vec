---
title: FittingOutlet
toc: false
type: specs
date: "2022-01-18"
draft: false
specification: VEC
version: 1.2.2
documentType: "Recommendation"
elementType: Class
classes:
  - FittingOutlet
menu_name: vec-1.2.2
---
<p> Specifies one outlet of the fitting.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | non_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <p>Specifies the identification of the Outlet. This must be unique within a FittingSpecification.  </p> | [FittingOutlet]({{< relref "fittingoutlet.md" >}}) |
|innerDiameter | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Specifies the inner diameter of the outlet.  </p> | [FittingOutlet]({{< relref "fittingoutlet.md" >}}) |
|outerDiameter | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Specifies the outer diameter of the outlet.  </p> | [FittingOutlet]({{< relref "fittingoutlet.md" >}}) |
|nominalSize | [String]({{< relref "string.md" >}}) | 0..1 | <p> Defines the nominal size of a tube. The nominal size is a name for the size of the tube that is somehow related to the inner diameter of the tube. However, it is not the inner diameter (e.g. &quot;10.5&quot;).      </p> | [FittingOutlet]({{< relref "fittingoutlet.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PlacementPoint]({{< relref "placementpoint.md" >}}) | placementPoint | 0..1 | 0..* | <p> Specifies the <i>PlacementPoint</i> that represents this <i>FittingOutlet</i> in a PlaceableElementSpecification.      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [FittingSpecification]({{< relref "fittingspecification.md" >}}) | 1 | outlet | 0..* |  |
