---
title: CavityPositionDetail
toc: false
type: specs
date: "2023-03-24"
draft: false
specification: VEC
version: 2.0.2
documentType: "Recommendation"
elementType: Class
classes:
  - CavityPositionDetail
menu_name: vec-2.0.2
---
<i>CavityPositionDetail</i> is an aggregator class for all geometric properties of a cavity within the connector (e.g. rotation, position).

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|rotation| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> The rotation of the cavity is defined as the angle between the primary locking of the cavity and the Y-axis of the connector housing coordinate system.      </p> | [CavityPositionDetail]({{< relref "cavitypositiondetail.md" >}}) |
|cavitySealingOffset| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | Defines the offset (length) by which the starting point of the sealing area is displaced <i>insertionPosition </i>in insertion direction. | [CavityPositionDetail]({{< relref "cavitypositiondetail.md" >}}) |

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
        <td>insertionPosition</td>
        <td><a href="{{< relref "cartesianpoint3d.md" >}}">CartesianPoint3D</a></td>
        <td>0..1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td><p> The position of the center of the cavity in the entrance surface of the connector during the insertion process.      </p></td>
    </tr>
    <tr>
        <td>baseUnit</td>
        <td><a href="{{< relref "unit.md" >}}">Unit</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> The <i>Unit</i> in which all coordinates (e.g. cartesian points) of this <i>CavityPositionDetail&#160;</i>are defined. Shall be a unit of length&#160;(e.g. millimetre).      </p></td>
    </tr>
    <tr>
        <td>insertionVector</td>
        <td><a href="{{< relref "cartesianvector3d.md" >}}">CartesianVector3D</a></td>
        <td>0..1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td></td>
        <td>The direction in which a terminal is inserted from the <i>InsertionPosition</i> into the connector. The amount of the vector defines the length auf the cavity&#160;(The distance the terminal must travel from the <i>InsertionPostion </i>to its final position.</td>
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
        <td>positionDetail</td>
        <td>0..1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "cavity.md" >}}">Cavity</a></td>
        <td>1</td>
        <td>Optional details for geometric properties of the cavity in the connector.</td>
    </tr>
    </tbody>
</table>



