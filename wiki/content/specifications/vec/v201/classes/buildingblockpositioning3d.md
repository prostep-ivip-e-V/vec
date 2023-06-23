---
title: BuildingBlockPositioning3D
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - BuildingBlockPositioning3D
menu_name: vec-2.0.1
---
<p> Defines the position of a BuildingBlock3D in the HarnessGeometry.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | geo_3d |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique (optional) identification of the BuildingBlockPositioning3D. The identification is guaranteed to be unique within the HarnessGeometrySpecification3D.      </p> | [BuildingBlockPositioning3D]({{< relref "buildingblockpositioning3d.md" >}}) |

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
        <td>positioning</td>
        <td><a href="{{< relref "transformation3d.md" >}}">Transformation3D</a></td>
        <td>0..1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>0..1</td>
        <td><p> Specifies the positioning of the building block in the harness geometry.      </p></td>
    </tr>
    <tr>
        <td>referenced3DBuildingBlock</td>
        <td><a href="{{< relref "buildingblockspecification3d.md" >}}">BuildingBlockSpecification3D</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> References the building block that is positioned.      </p></td>
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
        <td>buildingBlockPositionings</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "harnessgeometryspecification3d.md" >}}">HarnessGeometrySpecification3D</a></td>
        <td>1</td>
        <td><p> Specifies the BuildingBlockPositioning3Ds that are forming the HarnessGeometrySpecification3D.      </p></td>
    </tr>
    </tbody>
</table>



