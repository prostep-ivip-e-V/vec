---
title: NetworkPortViewItem
toc: false
type: specs
date: "2021-11-30"
draft: false
specification: VEC
version: 2.0.0-rc1
documentType: "Recommendation"
elementType: Class
classes:
  - NetworkPortViewItem
menu_name: vec-2.0.0-rc1
---
A <i>NetworkPortViewItem </i>represents a <i>NetworkPort</i> within a <i>NetworkNodeViewItem</i> and defines its position on the node.

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
|side | [NetworkPortViewItemSide]({{< relref "networkportviewitemside.md" >}}) | 0..1 | Specifies the side of the <i>NetworkNodeViewItem</i> on which the port should be displayed. | [NetworkPortViewItem]({{< relref "networkportviewitem.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [NetworkPort]({{< relref "networkport.md" >}}) | networkPort | 1 | 0..* | References the <i>NetworkPort</i> that is represented by this <i>NetworkPortViewItem.</i> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [NetworkNodeViewItem]({{< relref "networknodeviewitem.md" >}}) | 1 | displayedPort | 0..* | <p> Specifies all <i>NetworkPortViewItems</i> that are displayed on this <i>NetworkNodeViewItem.</i> The order of this association defines the clockwise arrangement of the ports on the node. As each <i>NetworkPortViewItem </i>can also define the side on which it is placed, side definitions take precedence over order.      </p>      <p> <i>&#160;</i>      </p>      <p> <b>Caution: </b>This association is <u>ordered</u>!      </p>      <p> <i>&#160;</i>      </p> |
