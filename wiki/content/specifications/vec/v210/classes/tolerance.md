---
title: Tolerance
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - Tolerance
menu_name: vec-2.1.0
---
<p> A <i>Tolerance</i> defines the permissible limit or limits of variation for defined values (e.g. a <i>NumericalValue</i>). The tolerated value is defined by the context in which the <i>Tolerance</i> is contained /&#160;used.      </p>      <p> The values of the limits of the <i>Tolerance</i>, <i>LowerBoundary </i>and<i> UpperBoundary</i>, shall be interpreted as &quot;modifiers&quot;&#160;to the actual value.  To obtain an absolute range of valid values, the values of boundaries shall be added to the actual value, regardless of the <i>Upper</i> or <i>Lower</i> prefix. For example, to define a value of 100mm with a tolerated variation between 95mm and 105mm, the definition would be <i>Value</i> = 100 mm, <i>LowerBoundary=-5, UpperBoundary=+5</i>. The <i>Unit</i> of the <i>Tolerance</i> boundaries is always the same as in the defining context.      </p>      <p> &#160;      </p>

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
        <td><a href="{{< relref "numericalvalue.md" >}}">NumericalValue</a></td>
        <td>0..1</td>
        <td><p> Specifies the tolerance for the dimension.      </p></td>
    </tr>
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



