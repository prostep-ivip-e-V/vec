---
title: ConnectionNodeViewItem
toc: false
type: specs
date: "2023-03-24"
draft: false
specification: VEC
version: 2.0.2
documentType: "Recommendation"
elementType: Class
classes:
  - ConnectionNodeViewItem
menu_name: vec-2.0.2
---
{{< deprecated since="2.0.2" reason="Class was accidentally named incorrectly in 2.0.0. Use ComponentNodeViewItem instead.">}}A <i>ComponentNodeViewItem </i>represents a <i>ComponentNode</i> within a <i>ConnectionViewSpecification</i> and defines its position within the layout.

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | schematic |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the <i>ComponentNodeViewItem</i>. The identification is guaranteed to be unique within the <i>ConnectionViewSpecification</i>.      </p> | [ConnectionNodeViewItem]({{< relref "connectionnodeviewitem.md" >}}) |
|gridSquare| [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies the grid square in which the <i>ComponentNodeViewIt</i><i>em</i> is placed (e.g. E/40).      </p> | [ConnectionNodeViewItem]({{< relref "connectionnodeviewitem.md" >}}) |

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
        <td>displayedPort</td>
        <td><a href="{{< relref "componentportviewitem.md" >}}">ComponentPortViewItem</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>Y</td>
        <td>1</td>
        <td><p> Specifies all <i>ComponentPortViewItems</i> that are displayed on this <i>ComponentNodeViewItem</i><i>.</i> The order of this association defines the clockwise arrangement of the ports on the node. As each <i>ComponentPortViewItem </i>can also define the side on which it is placed, side definitions take precedence over order.      </p>      <p> <i>&#160;</i>      </p>      <p> <b>Caution: </b>This association is <u>ordered</u>!      </p>      <p> <i>&#160;</i>      </p></td>
    </tr>
    <tr>
        <td>orientation</td>
        <td><a href="{{< relref "transformation2d.md" >}}">Transformation2D</a></td>
        <td>0..1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Specifies the position /&#160;placement of the <i>ConnectionNodeViewItem</i> within the layout.</td>
    </tr>
    <tr>
        <td>componentNode</td>
        <td><a href="{{< relref "componentnode.md" >}}">ComponentNode</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the<i> ComponentNode</i> that is represented by this <i>ComponentNodeViewItem</i><i>.</i></td>
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
        <td>placedViewItems</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "connectionviewspecification.md" >}}">ConnectionViewSpecification</a></td>
        <td>1</td>
        <td>{{< deprecated since="2.0.2" reason="Target class was accidentally named incorrectly in 2.0.0. Use ComponentNodeViewItem instead.">}}Specifies all <i>ComponentNodeViewItems</i> that are displayed within a <i>ConnectionViewSpecification</i>.</td>
    </tr>
    </tbody>
</table>



