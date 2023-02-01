---
title: Transformation2D
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - Transformation2D
menu_name: vec-2.0.1
---
<p>A Transformation is a geometric transformation and specifies a transformation matrix.  </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | geo_2d |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|a11| [Double]({{< relref "double.md" >}}) | 1 |  | [Transformation2D]({{< relref "transformation2d.md" >}}) |
|a12| [Double]({{< relref "double.md" >}}) | 1 |  | [Transformation2D]({{< relref "transformation2d.md" >}}) |
|a21| [Double]({{< relref "double.md" >}}) | 1 |  | [Transformation2D]({{< relref "transformation2d.md" >}}) |
|a22| [Double]({{< relref "double.md" >}}) | 1 |  | [Transformation2D]({{< relref "transformation2d.md" >}}) |

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
           <th>Agg.</th>
           <th>Unique</th>
           <th>Ordered</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>origin</td>
        <td><a href="{{< relref "cartesianpoint2d.md" >}}">CartesianPoint2D</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the CartesianPoint2D that is the origin of the Transformation2D.</td>
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
           <th>Agg.</th>
           <th>Unique</th>
           <th>Ordered</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>orientation</td>
        <td>0..1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "connectionnodeviewitem.md" >}}">ConnectionNodeViewItem</a></td>
        <td>1</td>
        <td>Specifies the position /&#160;placement of the <i>ConnectionNodeViewItem</i> within the layout.</td>
    </tr>
    <tr>
        <td>orientation</td>
        <td>0..1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "networknodeviewitem.md" >}}">NetworkNodeViewItem</a></td>
        <td>1</td>
        <td>Specifies the position /&#160;placement of the <i>NetworkNodeViewItem</i> within the layout.</td>
    </tr>
    <tr>
        <td>orientation</td>
        <td>0..1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "occurrenceorusageviewitem2d.md" >}}">OccurrenceOrUsageViewItem2D</a></td>
        <td>1</td>
        <td>Specifies the orientation of the view item.</td>
    </tr>
    </tbody>
</table>



