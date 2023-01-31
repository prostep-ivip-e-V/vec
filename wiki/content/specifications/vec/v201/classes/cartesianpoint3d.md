---
title: CartesianPoint3D
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - CartesianPoint3D
menu_name: vec-2.0.1
---
<p> A CartesianPoint3D is a point that is defined by its coordinates in a rectangular three-dimensional Cartesian coordinate system.      </p>

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
|x| [Double]({{< relref "double.md" >}}) | 1 | <p> Specifies the value of x-coordinate of the Cartesian point. The unit of this value is the baseUnit of containing BuildingBlockSpecification3D.      </p> | [CartesianPoint3D]({{< relref "cartesianpoint3d.md" >}}) |
|y| [Double]({{< relref "double.md" >}}) | 1 | <p> Specifies the value of y-coordinate of the Cartesian point. The unit of this value is the baseUnit of containing BuildingBlockSpecification3D.      </p> | [CartesianPoint3D]({{< relref "cartesianpoint3d.md" >}}) |
|z| [Double]({{< relref "double.md" >}}) | 1 | <p> Specifies the value of z-coordinate of the Cartesian point. The unit of this value is the baseUnit of containing BuildingBlockSpecification3D.      </p> | [CartesianPoint3D]({{< relref "cartesianpoint3d.md" >}}) |


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
        <td>cartesianPoint</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "buildingblockspecification3d.md" >}}">BuildingBlockSpecification3D</a></td>
        <td>0..1</td>
        <td>Specifies the CartesianPoint3Ds that are used in the BuildingBlockSpecification3D.</td>
    </tr>
    <tr>
        <td>cartesianPoint</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "localposition.md" >}}">LocalPosition</a></td>
        <td>0..*</td>
        <td></td>
    </tr>
    <tr>
        <td>cartesianPoint</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "geometrynode3d.md" >}}">GeometryNode3D</a></td>
        <td>0..*</td>
        <td>References the CartesianPoint3D where the GeometryNode3D is located.</td>
    </tr>
    <tr>
        <td>cartesianPoint</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "localgeometryspecification.md" >}}">LocalGeometrySpecification</a></td>
        <td>0..1</td>
        <td><p> All <i>CartesianPoint3Ds</i> that are used in this <i>LocalGeometrySpecification.</i> All <i>CartesianPoint3Ds</i> are defined in relation to the coordinate system of the component.      </p></td>
    </tr>
    <tr>
        <td>cartesianPoint3D</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "nurbscontrolpoint.md" >}}">NURBSControlPoint</a></td>
        <td>0..*</td>
        <td><p> The <i>CartesionPoint3D </i>that defines the position of this <i>NURBSControlPoint.</i>&#160;      </p></td>
    </tr>
    <tr>
        <td>insertionPosition</td>
        <td>0..1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "cavitypositiondetail.md" >}}">CavityPositionDetail</a></td>
        <td>1</td>
        <td><p> The position of the center of the cavity in the entrance surface of the connector during the insertion process.      </p></td>
    </tr>
    <tr>
        <td>origin</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "transformation3d.md" >}}">Transformation3D</a></td>
        <td>0..*</td>
        <td>Specifies the coordinates of the translation.</td>
    </tr>
    </tbody>
</table>



