---
title: Transformation3D
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - Transformation3D
menu_name: vec-2.1.0
---
<p> A <i>Transformation3D</i> is used to position an object in 3D&#160;space (e.g. on a DMU model).      </p>      <p> It consists of a reference to a <i>CartesianPoint3D</i> as <i><b>origin</b></i> and a 3 ⨯ 3 matrix <b><i>a</i></b>. The matrix is given by the attributes <i>[<b>a11</b>...<b>a33</b>]</i>, with the numbers representing the index of the matrix element <i><b>a<sub>ij</sub></b><sub> </sub></i>where <i><b>i</b> </i>is the row and<b> <i>j </i></b>the column index of the matrix.      </p>      <p> To place an object with a <i>Transformation3D</i> its origin is translated in space to the <i>CartesianPoint3D</i> <i><b>origin</b> </i>and every point <i><b>P =&#160;(x,y,z)</b></i><b> </b>of the object is transformed to <b><i>P' </i></b>by applying the matrix multiplication: <b><i>P'= a · P</i></b>.       </p>      <p> With a suitable definition of the transformation matrix, a wide variety of geometric operations can be mapped. Which of these operations are permissible depends on the respective application and cannot be defined in general terms. For example, scaling and mirroring are probably not permissible operations in a normal DMU process with harmonized 3D models.      </p>      <p> &#160;      </p>

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
           <th>Agg.{{< info agg >}}</th>
           <th>Unique{{< info unique >}}</th>
           <th>Ordered{{< info ordered >}}</th>
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



