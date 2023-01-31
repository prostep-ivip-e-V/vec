---
title: Transformation3D
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - Transformation3D
menu_name: vec-2.0.1
---
<p>A Transformation is a geometric transformation and specifies a transformation matrix.  </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | geo_3d |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|a11| [Double]({{< relref "double.md" >}}) | 1 |  | [Transformation3D]({{< relref "transformation3d.md" >}}) |
|a12| [Double]({{< relref "double.md" >}}) | 1 |  | [Transformation3D]({{< relref "transformation3d.md" >}}) |
|a13| [Double]({{< relref "double.md" >}}) | 1 |  | [Transformation3D]({{< relref "transformation3d.md" >}}) |
|a21| [Double]({{< relref "double.md" >}}) | 1 |  | [Transformation3D]({{< relref "transformation3d.md" >}}) |
|a22| [Double]({{< relref "double.md" >}}) | 1 |  | [Transformation3D]({{< relref "transformation3d.md" >}}) |
|a23| [Double]({{< relref "double.md" >}}) | 1 |  | [Transformation3D]({{< relref "transformation3d.md" >}}) |
|a31| [Double]({{< relref "double.md" >}}) | 1 |  | [Transformation3D]({{< relref "transformation3d.md" >}}) |
|a32| [Double]({{< relref "double.md" >}}) | 1 |  | [Transformation3D]({{< relref "transformation3d.md" >}}) |
|a33| [Double]({{< relref "double.md" >}}) | 1 |  | [Transformation3D]({{< relref "transformation3d.md" >}}) |

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
        <td><a href="{{< relref "cartesianpoint3d.md" >}}">CartesianPoint3D</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>Specifies the coordinates of the translation.</td>
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
        <td>boundingBoxPositioning</td>
        <td>0..1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "localgeometryspecification.md" >}}">LocalGeometrySpecification</a></td>
        <td>0..1</td>
        <td><p> The transformation that defines the positioning of the bounding box in coordinate system of the component.      </p></td>
    </tr>
    <tr>
        <td>orientation</td>
        <td>0..1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "occurrenceorusageviewitem3d.md" >}}">OccurrenceOrUsageViewItem3D</a></td>
        <td>0..1</td>
        <td>Specifies the orientation of the view item.</td>
    </tr>
    <tr>
        <td>positioning</td>
        <td>0..1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "buildingblockpositioning3d.md" >}}">BuildingBlockPositioning3D</a></td>
        <td>0..1</td>
        <td><p> Specifies the positioning of the building block in the harness geometry.      </p></td>
    </tr>
    </tbody>
</table>



