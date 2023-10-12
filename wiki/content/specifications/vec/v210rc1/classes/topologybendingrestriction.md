---
title: TopologyBendingRestriction
toc: false
type: specs
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - TopologyBendingRestriction
menu_name: vec-2.1.0
---
<p> As the name implies, a <i>TopologyBendingRestriction</i> defines restrictions on the bendability a path in the <i>Topology.</i> There are multiple reasons, why such restrictions exist, for example:      </p>      <ul>       <li> There is a bending restriction for a wire in the segment.        </li>       <li> The number of wires and the segment diameter is such, that excessive bending causes intolerable torsion forces on wires in the segment.        </li>       <li> Other technical reasons        </li>     </ul>     <p> Since these restrictions can be determined using a variety of methods the VEC provides a concept to store this information for later use. This makes the information available in the downstream processes, without detailed knowledge of the determination procedure (e.g. during form board design, packaging or installation).      </p>      <p> The restriction applies to a path of segments as this can cover different case:      </p>      <ul>       <li> a single segment        </li>       <li> two adjacent segments at a node        </li>       <li> the complete path of a wire        </li>     </ul>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | topology |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|minBendRadiusDynamic| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the minimum bend radius for the restricted path, if it is used in a dynamic environment, where it is bended repeatedly (e.g. in the grommet of the back door).      </p> | [TopologyBendingRestriction]({{< relref "topologybendingrestriction.md" >}}) |
|minBendRadiusStatic| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the minimum bend radius for the restricted path, if it is used in a static environment, where it is bended once during installation. After that it remains unchanged in its bended position during usage.      </p> | [TopologyBendingRestriction]({{< relref "topologybendingrestriction.md" >}}) |

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
        <td>restrictedPath</td>
        <td><a href="{{< relref "path.md" >}}">Path</a></td>
        <td>1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>0..1</td>
        <td><p> The path that defines the restricted way in the topology.      </p></td>
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
        <td>topologyBendingRestriction</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "topologybendingrestrictionspecification.md" >}}">TopologyBendingRestrictionSpecification</a></td>
        <td>1</td>
        <td></td>
    </tr>
    </tbody>
</table>



