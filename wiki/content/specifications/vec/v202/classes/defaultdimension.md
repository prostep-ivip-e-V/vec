---
title: DefaultDimension
toc: false
type: specs
date: "2023-03-24"
draft: false
specification: VEC
version: 2.0.2
documentType: "Recommendation"
elementType: Class
classes:
  - DefaultDimension
menu_name: vec-2.0.2
---
<p> A <i>DefaultDimension</i> defines a tolerance value that shall be applied to a part, if no explicit tolerance value has been defined.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | placement |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|dimensionValueRange| [ValueRange]({{< relref "valuerange.md" >}}) | 1 | <p> dimensionValueRange defines the magnitude of measurements for which the tolerance applies (e.g. length from 500mm - 1500mm).      </p> | [DefaultDimension]({{< relref "defaultdimension.md" >}}) |
|dimensionType| [DefaultDimensionType]({{< relref "defaultdimensiontype.md" >}}) | 1 | <p> The <i>dimensionType</i> defines to which measurements this <i>DefaultDimension</i> applies.      </p> | [DefaultDimension]({{< relref "defaultdimension.md" >}}) |

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
        <td>toleranceIndication</td>
        <td><a href="{{< relref "tolerance.md" >}}">Tolerance</a></td>
        <td>1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>0..1</td>
        <td></td>
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
        <td>defaultDimension</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "defaultdimensionspecification.md" >}}">DefaultDimensionSpecification</a></td>
        <td></td>
        <td></td>
    </tr>
    </tbody>
</table>



