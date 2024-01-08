---
title: DimensionAnchor
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - DimensionAnchor
menu_name: vec-2.1.0
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
        <td>dimensionAnchor</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "dimension.md" >}}">Dimension</a></td>
        <td>0..*</td>
        <td><p> References the location that is used as dimension point for the dimensioning (e.g. the entry point of a bundle into a connector housing).     </p>      <p> See KBLFRM-329 and KBLFRM-391.      </p></td>
    </tr>
    <tr>
        <td>referenceAnchor</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "dimension.md" >}}">Dimension</a></td>
        <td>0..*</td>
        <td><p> References the location that is used as reference point for the dimensioning (e.g. the location of a fixing as this relates to a fixpoint of the body in white).     </p>      <p> See KBLFRM-329 and KBLFRM-391.      </p></td>
    </tr>
    </tbody>
</table>



