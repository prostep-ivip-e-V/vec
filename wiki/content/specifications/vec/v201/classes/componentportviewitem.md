---
title: ComponentPortViewItem
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - ComponentPortViewItem
menu_name: vec-2.0.1
---
A <i>ComponentPortViewItem</i><i> </i>represents a <i>ComponentPort</i> within a <i>ComponentNodeViewItem</i> and defines its position on the node.

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
|side| [ComponentPortViewItemSide]({{< relref "componentportviewitemside.md" >}}) | 0..1 | Specifies the side of the <i>ComponentNodeViewItem</i> on which the port should be displayed. | [ComponentPortViewItem]({{< relref "componentportviewitem.md" >}}) |

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
        <td>componentPort</td>
        <td><a href="{{< relref "componentport.md" >}}">ComponentPort</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the <i>ComponentPort</i> that is represented by this <i>ComponentPortViewItem</i><i>.</i></td>
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
        <td>displayedPort</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>Y</td>
        <td><a href="{{< relref "connectionnodeviewitem.md" >}}">ConnectionNodeViewItem</a></td>
        <td>1</td>
        <td><p> Specifies all <i>ComponentPortViewItems</i> that are displayed on this <i>ComponentNodeViewItem</i><i>.</i> The order of this association defines the clockwise arrangement of the ports on the node. As each <i>ComponentPortViewItem </i>can also define the side on which it is placed, side definitions take precedence over order.      </p>      <p> <i>&#160;</i>      </p>      <p> <b>Caution: </b>This association is <u>ordered</u>!      </p>      <p> <i>&#160;</i>      </p></td>
    </tr>
    </tbody>
</table>



