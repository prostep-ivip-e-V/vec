---
title: NodeLocation
toc: false
type: specs
date: "2023-03-24"
draft: false
specification: VEC
version: 2.0.2
documentType: "Recommendation"
elementType: Class
classes:
  - NodeLocation
menu_name: vec-2.0.2
---
<p>Specifies a TopologyNode as a Location.  </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | topology |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Location]({{< relref "location.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the Location. The identification is guaranteed to be unique within the PlacementSpecification.      </p> | [Location]({{< relref "location.md" >}}) |
|matchingId| [String]({{< relref "string.md" >}}) | 0..1 | <p>Specifies an identification for matching the location with a reference point of component (e.g. a cable channel).  </p> | [Location]({{< relref "location.md" >}}) |

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
        <td>referencedNode</td>
        <td><a href="{{< relref "topologynode.md" >}}">TopologyNode</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> References the TopologyNode on which the Location is located.      </p></td>
    </tr>
    </tbody>
</table>




