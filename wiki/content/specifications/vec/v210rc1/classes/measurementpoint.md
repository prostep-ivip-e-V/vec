---
title: MeasurementPoint
toc: false
type: specs
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - MeasurementPoint
menu_name: vec-2.1.0
---
<p> Defines a reference point on a component that can be used to apply a Dimension. This is normally a significant point of the component e.g. an edge, a hole, a bolt or something similar.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | placeable_element |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the MeasurementPoint. The identification is guaranteed to be unique within a component.      </p> | [MeasurementPoint]({{< relref "measurementpoint.md" >}}) |


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
        <td>measurementPoint</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "measurementpointreference.md" >}}">MeasurementPointReference</a></td>
        <td>0..*</td>
        <td><p> References the <i>MeasurementPoint</i> that is instanced by this <i>MeasurementPointReference.</i>      </p></td>
    </tr>
    <tr>
        <td>measurementPoint</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "measurepointposition.md" >}}">MeasurePointPosition</a></td>
        <td>0..*</td>
        <td></td>
    </tr>
    <tr>
        <td>measurementPoint</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "placeableelementspecification.md" >}}">PlaceableElementSpecification</a></td>
        <td>1</td>
        <td><p> Specifies the <i>MeasurementPoints</i> of a <i>PlaceableElement</i>.      </p></td>
    </tr>
    </tbody>
</table>



