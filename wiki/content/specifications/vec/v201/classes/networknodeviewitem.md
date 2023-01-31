---
title: NetworkNodeViewItem
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - NetworkNodeViewItem
menu_name: vec-2.0.1
---
A <i>NetworkNodeViewItem </i>represents a <i>NetworkNode</i> within a <i>NetViewSpecification</i> and defines its position within the layout.

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | net |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the <i>NetworkNodeViewItem</i>. The identification is guaranteed to be unique within the <i>NetViewSpecification</i>.      </p> | [NetworkNodeViewItem]({{< relref "networknodeviewitem.md" >}}) |
|gridSquare| [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies the grid square in which the <i>NodeViewItem</i> is placed (e.g. E/40).      </p> | [NetworkNodeViewItem]({{< relref "networknodeviewitem.md" >}}) |

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
        <td>displayedPort</td>
        <td><a href="{{< relref "networkportviewitem.md" >}}">NetworkPortViewItem</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>Y</td>
        <td>1</td>
        <td><p> Specifies all <i>NetworkPortViewItems</i> that are displayed on this <i>NetworkNodeViewItem.</i> The order of this association defines the clockwise arrangement of the ports on the node. As each <i>NetworkPortViewItem </i>can also define the side on which it is placed, side definitions take precedence over order.      </p>      <p> <i>&#160;</i>      </p>      <p> <b>Caution: </b>This association is <u>ordered</u>!      </p>      <p> <i>&#160;</i>      </p></td>
    </tr>
    <tr>
        <td>orientation</td>
        <td><a href="{{< relref "transformation2d.md" >}}">Transformation2D</a></td>
        <td>0..1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Specifies the position /&#160;placement of the <i>NetworkNodeViewItem</i> within the layout.</td>
    </tr>
    <tr>
        <td>networkNode</td>
        <td><a href="{{< relref "networknode.md" >}}">NetworkNode</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the<i> NetworkNode</i>  that is represented by this <i>NetworkNodeViewItem.</i></td>
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
        <td>placedViewItems</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "netviewspecification.md" >}}">NetViewSpecification</a></td>
        <td>1</td>
        <td>Specifies all <i>NetworkNodeViewItems</i> that are displayed within a <i>NetViewSpecification</i>.</td>
    </tr>
    </tbody>
</table>



