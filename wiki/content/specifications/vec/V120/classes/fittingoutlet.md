---
title: FittingOutlet
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html><body><p>Specifies one outlet of the fitting.  </p></body></html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | non_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Placeable Elements]({{< relref "../description-of-components/placeable-elements" >}})<br/> [Wire Protections]({{< relref "../description-of-components/wire-protections" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>Specifies the identification of the Outlet. This must be unique within a FittingSpecification.  </p></body></html> | [FittingOutlet]({{< relref "fittingoutlet.md" >}}) |
|innerDiameter | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <html><body><p>Specifies the inner diameter of the outlet.  </p></body></html> | [FittingOutlet]({{< relref "fittingoutlet.md" >}}) |
|outerDiameter | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <html><body><p>Specifies the outer diameter of the outlet.  </p></body></html> | [FittingOutlet]({{< relref "fittingoutlet.md" >}}) |
|nominalSize | [String]({{< relref "string.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Defines the nominal size of a tube. The nominal size is a name for the size of the tube that is somehow related to the inner diameter of the tube. However it is not the inner diameter (e.g. &quot;10.5&quot;).      </p>    </body> </html>  | [FittingOutlet]({{< relref "fittingoutlet.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PlacementPoint]({{< relref "placementpoint.md" >}}) | placementPoint | 0..1 | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the <i>PlacementPoint</i> that represents this <i>FittingOutlet</i> in a PlaceableElementSpecification.      </p>    </body> </html>  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [FittingSpecification]({{< relref "fittingspecification.md" >}}) | 1 | outlet | 0..* |  |
