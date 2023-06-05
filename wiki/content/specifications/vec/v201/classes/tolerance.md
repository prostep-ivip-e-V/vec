---
title: Tolerance
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - Tolerance
menu_name: vec-2.0.1
---
<p>Enables the specification of value ranges which can be tolerated. </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | physical_information |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|lowerBoundary| [Double]({{< relref "double.md" >}}) | 1 | <p>Specifies the lower boundary for the tolerance. </p> | [Tolerance]({{< relref "tolerance.md" >}}) |
|upperBoundary| [Double]({{< relref "double.md" >}}) | 1 | <p>Specifies the upper boundary for the tolerance. </p> | [Tolerance]({{< relref "tolerance.md" >}}) |


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
        <td>tolerance</td>
        <td>0..1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "dimension.md" >}}">Dimension</a></td>
        <td>0..1</td>
        <td></td>
    </tr>
    <tr>
        <td>tolerance</td>
        <td>0..1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "numericalvalue.md" >}}">NumericalValue</a></td>
        <td>0..1</td>
        <td>Specifies the tolerance for the dimension.</td>
    </tr>
    <tr>
        <td>toleranceIndication</td>
        <td>1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "defaultdimension.md" >}}">DefaultDimension</a></td>
        <td>0..1</td>
        <td></td>
    </tr>
    </tbody>
</table>



