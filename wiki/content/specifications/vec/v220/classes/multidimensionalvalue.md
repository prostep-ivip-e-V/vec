---
title: MultiDimensionalValue
toc: false
type: specs
date: "2025-09-19"
draft: false
specification: VEC
version: 2.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - MultiDimensionalValue
menu_name: vec-2.2.0
---
<p> The <i>MultiDimensionalValue</i> represents a set of values defined across multiple <i>Dimension</i>s. It is used to describe properties that vary along several axes, such as characteristic curves. Each <i>DataPoint</i> assigned to a <i>MultiDimensionalValue</i> must define one <i>DataPointValue</i> per <i>Dimension</i>.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | physical_information |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** | [FuseCharacteristic]({{< relref "fusecharacteristic.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

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
        <td>dataPoint</td>
        <td><a href="{{< relref "datapoint.md" >}}">DataPoint</a></td>
        <td>1..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td></td>
    </tr>
    <tr>
        <td>dimension</td>
        <td><a href="{{< relref "quantitykind.md" >}}">QuantityKind</a></td>
        <td>1..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td></td>
    </tr>
    </tbody>
</table>




