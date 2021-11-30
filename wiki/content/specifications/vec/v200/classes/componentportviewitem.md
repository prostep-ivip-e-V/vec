---
title: ComponentPortViewItem
toc: false
type: specs
date: "2021-11-30"
draft: false
specification: VEC
version: 2.0.0-rc1
documentType: "Recommendation"
elementType: Class
classes:
  - ComponentPortViewItem
menu_name: vec-2.0.0-rc1
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
|side | [ComponentPortViewItemSide]({{< relref "componentportviewitemside.md" >}}) | 0..1 | Specifies the side of the <i>ComponentNodeViewItem</i> on which the port should be displayed. | [ComponentPortViewItem]({{< relref "componentportviewitem.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [ComponentPort]({{< relref "componentport.md" >}}) | componentPort | 1 | 0..* | References the <i>ComponentPort</i> that is represented by this <i>ComponentPortViewItem</i><i>.</i> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ConnectionNodeViewItem]({{< relref "connectionnodeviewitem.md" >}}) | 1 | displayedPort | 0..* | <p> Specifies all <i>ComponentPortViewItems</i> that are displayed on this <i>ComponentNodeViewItem</i><i>.</i> The order of this association defines the clockwise arrangement of the ports on the node. As each <i>ComponentPortViewItem </i>can also define the side on which it is placed, side definitions take precedence over order.      </p>      <p> <i>&#160;</i>      </p>      <p> <b>Caution: </b>This association is <u>ordered</u>!      </p>      <p> <i>&#160;</i>      </p> |
