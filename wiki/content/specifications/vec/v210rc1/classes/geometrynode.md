---
title: GeometryNode
toc: false
type: specs
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - GeometryNode
menu_name: vec-2.1.0
---
<p> A GeometryNode is the geometric representation of a TopologyNode. A TopologyNode may be represented by more than one GeometryNodes, but only within different <i>BuildingBlockSpecification2D/3D.</i> That means, in a single BuildingBlockSpecification a <i>TopologyNode</i> shall only be represent once&#160;(or not).      </p>      <p> A GeometryNode is either a GeometryNode2D or a GeometryNode3D.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | topology |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | true |
| **Derived Classifiers** | [GeometryNode2D]({{< relref "geometrynode2d.md" >}}), [GeometryNode3D]({{< relref "geometrynode3d.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the GeometryNode. The identification is guaranteed to be unique within the corresponding BuildingBlockSpecification. For all VEC-documents a GeometryNode-instance can be trusted to be the same if the BuildingBlockSpecification-instance is the same (see BuildingBlockSpecification) and the identification of the GeometryNode is the same.      </p> | [GeometryNode]({{< relref "geometrynode.md" >}}) |
|aliasId| [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <p> Specifies additional identifiers for the GeometryNode.      </p> | [GeometryNode]({{< relref "geometrynode.md" >}}) |

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
        <td>referenceNode</td>
        <td><a href="{{< relref "topologynode.md" >}}">TopologyNode</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the TopologyNode that is represented by the GeometryNode.</td>
    </tr>
    </tbody>
</table>




