---
title: NetworkPortViewItem
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - NetworkPortViewItem
menu_name: vec-2.1.0
---
A <i>NetworkPortViewItem </i>represents a <i>NetworkPort</i> within a <i>NetworkNodeViewItem</i> and defines its position on the node.

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | net |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|side| [NetworkPortViewItemSide]({{< relref "networkportviewitemside.md" >}}) | 0..1 | Specifies the side of the <i>NetworkNodeViewItem</i> on which the port should be displayed. | [NetworkPortViewItem]({{< relref "networkportviewitem.md" >}}) |

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
        <td>networkPort</td>
        <td><a href="{{< relref "networkport.md" >}}">NetworkPort</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the <i>NetworkPort</i> that is represented by this <i>NetworkPortViewItem.</i></td>
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
        <td>displayedPort</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>Y</td>
        <td><a href="{{< relref "networknodeviewitem.md" >}}">NetworkNodeViewItem</a></td>
        <td>1</td>
        <td><p> Specifies all <i>NetworkPortViewItems</i> that are displayed on this <i>NetworkNodeViewItem.</i> The order of this association defines the clockwise arrangement of the ports on the node. As each <i>NetworkPortViewItem </i>can also define the side on which it is placed, side definitions take precedence over order.      </p>      <p> <i>&#160;</i>      </p>      <p> <b>Caution: </b>This association is <u>ordered</u>!      </p>      <p> <i>&#160;</i>      </p></td>
    </tr>
    </tbody>
</table>



