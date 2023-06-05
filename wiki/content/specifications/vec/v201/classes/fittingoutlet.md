---
title: FittingOutlet
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - FittingOutlet
menu_name: vec-2.0.1
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
|identification| [String]({{< relref "string.md" >}}) | 0..1 | <p>Specifies the identification of the Outlet. This must be unique within a FittingSpecification.  </p> | [FittingOutlet]({{< relref "fittingoutlet.md" >}}) |
|innerDiameter| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Specifies the inner diameter of the outlet.  </p> | [FittingOutlet]({{< relref "fittingoutlet.md" >}}) |
|outerDiameter| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Specifies the outer diameter of the outlet.  </p> | [FittingOutlet]({{< relref "fittingoutlet.md" >}}) |
|nominalSize| [String]({{< relref "string.md" >}}) | 0..1 | <p> Defines the nominal size of a tube. The nominal size is a name for the size of the tube that is somehow related to the inner diameter of the tube. However, it is not the inner diameter (e.g. &quot;10.5&quot;).      </p> | [FittingOutlet]({{< relref "fittingoutlet.md" >}}) |

## Outgoing Relations
<table>
    <thead>
        <tr>
           <th colspan="6">Other End</th>
           <th colspan="1">This End</th>
           <th colspan="1">General</th>
        </tr>
        <tr>
           <th>Role</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Agg.{{< info agg >}}</th>
           <th>Unique{{< info unique >}}</th>
           <th>Ordered{{< info ordered >}}</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>placementPoint</td>
        <td><a href="{{< relref "placementpoint.md" >}}">PlacementPoint</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> Specifies the <i>PlacementPoint</i> that represents this <i>FittingOutlet</i> in a PlaceableElementSpecification.      </p></td>
    </tr>
    </tbody>
</table>

##  Incoming Relations
<table>
    <thead>
        <tr>
           <th colspan="5">This End</th>
           <th colspan="2">Other End</th>
           <th colspan="1">General</th>
        </tr>
        <tr>
           <th>Role</th>
           <th>Mult.</th>
           <th>Agg.{{< info agg >}}</th>
           <th>Unique{{< info unique >}}</th>
           <th>Ordered{{< info ordered >}}</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>outlet</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "fittingspecification.md" >}}">FittingSpecification</a></td>
        <td>1</td>
        <td></td>
    </tr>
    </tbody>
</table>



