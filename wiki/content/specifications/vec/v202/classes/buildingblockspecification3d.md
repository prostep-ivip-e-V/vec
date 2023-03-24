---
title: BuildingBlockSpecification3D
toc: false
type: specs
date: "2023-03-24"
draft: false
specification: VEC
version: 2.0.2
documentType: "Recommendation"
elementType: Class
classes:
  - BuildingBlockSpecification3D
menu_name: vec-2.0.2
---
<p> Specification for the description of a three-dimensional building block. A building block is a reusable section of a geometry.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | geo_3d |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Specification]({{< relref "specification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. For all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |

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
        <td>placedElementViewItem3D</td>
        <td><a href="{{< relref "occurrenceorusageviewitem3d.md" >}}">OccurrenceOrUsageViewItem3D</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Specifies the view items for OccurrenceOrUsages in a BuildingBlockSpecification3D.</td>
    </tr>
    <tr>
        <td>topologyZone</td>
        <td><a href="{{< relref "topologyzone.md" >}}">TopologyZone</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> References the Zone that is building block represents. This shall be a TopologyZone with the type &quot;DmuZone&quot;.      </p></td>
    </tr>
    <tr>
        <td>geometryNode</td>
        <td><a href="{{< relref "geometrynode3d.md" >}}">GeometryNode3D</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Specifies the GeometryNode3Ds defined by the BuildingBlockSpecification3D.</td>
    </tr>
    <tr>
        <td>cartesianPoint</td>
        <td><a href="{{< relref "cartesianpoint3d.md" >}}">CartesianPoint3D</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>0..1</td>
        <td>Specifies the CartesianPoint3Ds that are used in the BuildingBlockSpecification3D.</td>
    </tr>
    <tr>
        <td>geometrySegment</td>
        <td><a href="{{< relref "geometrysegment3d.md" >}}">GeometrySegment3D</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td><p> Specifies the GeometrySegment3Ds defined by the BuildingBlockSpecification3D.      </p></td>
    </tr>
    <tr>
        <td>baseUnit</td>
        <td><a href="{{< relref "unit.md" >}}">Unit</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
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
        <td>referenced3DBuildingBlock</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "buildingblockpositioning3d.md" >}}">BuildingBlockPositioning3D</a></td>
        <td>0..*</td>
        <td><p> References the building block that is positioned.      </p></td>
    </tr>
    </tbody>
</table>



