---
title: NURBSControlPoint
toc: false
type: specs
date: "2023-03-24"
draft: false
specification: VEC
version: 2.0.2
documentType: "Recommendation"
elementType: Class
classes:
  - NURBSControlPoint
menu_name: vec-2.0.2
---
<p> Represents a control point of a <i>NURBSCurve. </i>It consists of a referenced <i>CartesianPoint3D</i> for the position and a <i>weight</i>.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | geo_3d |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|weight| [Double]({{< relref "double.md" >}}) | 1 | <p> &#160;The weight of the NURBSControlPoint.      </p> | [NURBSControlPoint]({{< relref "nurbscontrolpoint.md" >}}) |

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
        <td>cartesianPoint3D</td>
        <td><a href="{{< relref "cartesianpoint3d.md" >}}">CartesianPoint3D</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> The <i>CartesionPoint3D </i>that defines the position of this <i>NURBSControlPoint.</i>&#160;      </p></td>
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
        <td>controlPoint</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>Y</td>
        <td><a href="{{< relref "nurbscurve.md" >}}">NURBSCurve</a></td>
        <td></td>
        <td><p> Defines the control points of the NURBS curve (for details see the class description of <i>NURBSCurve)</i>      </p></td>
    </tr>
    </tbody>
</table>



