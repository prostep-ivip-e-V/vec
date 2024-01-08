---
title: Dimension
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - Dimension
menu_name: vec-2.1.0
---
<p> A Dimension defines a measurement for the distance between two Locations. An acceptable tolerance can be specified additionally. If the Locations are not located on adjacent topology-elements it is possible to specify a Path for the dimension along which the measurement must be taken.      </p>      <p> The value for the Dimension is not specified as NumericalValue (which can define a Tolerance as well). This is because the &quot;valueComponent&quot; of the NumericalValue is mandatory. For Dimensions it shall be optional since there are scenarios where the dimension only specifies a Tolerance for a distance defined by the topology (segment length + placement information).      </p>

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
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the Dimension. The identification is guaranteed to be unique within the containing PlacementSpecification.      </p> | [Dimension]({{< relref "dimension.md" >}}) |
|valueComponent| [Double]({{< relref "double.md" >}}) | 0..1 | <p> Defines the value of the dimension. This value can be null, if it shall be calculated and only a tolerance shall be defined.       </p> | [Dimension]({{< relref "dimension.md" >}}) |
|valueCalculated| [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <p> Defines if the value of the <i>Dimension</i> was calculated (e.g. the sum of segment lengths in the topology) or if it was defined manually.       </p> | [Dimension]({{< relref "dimension.md" >}}) |

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
        <td>path</td>
        <td><a href="{{< relref "path.md" >}}">Path</a></td>
        <td>0..1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>0..1</td>
        <td>Specifies a path in the topology along which the dimension is defined.</td>
    </tr>
    <tr>
        <td>tolerance</td>
        <td><a href="{{< relref "tolerance.md" >}}">Tolerance</a></td>
        <td>0..1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>0..1</td>
        <td></td>
    </tr>
    <tr>
        <td>definedLocations</td>
        <td><a href="{{< relref "location.md" >}}">Location</a></td>
        <td>0..2</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td></td>
    </tr>
    <tr>
        <td>referenceAnchor</td>
        <td><a href="{{< relref "dimensionanchor.md" >}}">DimensionAnchor</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> References the location that is used as reference point for the dimensioning (e.g. the location of a fixing as this relates to a fixpoint of the body in white).     </p>      <p> See KBLFRM-329 and KBLFRM-391.      </p></td>
    </tr>
    <tr>
        <td>unitComponent</td>
        <td><a href="{{< relref "unit.md" >}}">Unit</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td></td>
    </tr>
    <tr>
        <td>dimensionAnchor</td>
        <td><a href="{{< relref "dimensionanchor.md" >}}">DimensionAnchor</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> References the location that is used as dimension point for the dimensioning (e.g. the entry point of a bundle into a connector housing).     </p>      <p> See KBLFRM-329 and KBLFRM-391.      </p></td>
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
        <td>dimension</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "placementspecification.md" >}}">PlacementSpecification</a></td>
        <td>1</td>
        <td>Specifies the Dimensions defined by the PlacementSpecification.</td>
    </tr>
    </tbody>
</table>



