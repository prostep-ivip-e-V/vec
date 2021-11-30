---
title: NetworkNodeViewItem
toc: false
type: specs
date: "2021-11-30"
draft: false
specification: VEC
version: 2.0.0-rc1
documentType: "Recommendation"
elementType: Class
classes:
  - NetworkNodeViewItem
menu_name: vec-2.0.0-rc1
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
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the <i>NetworkNodeViewItem</i>. The identification is guaranteed to be unique within the <i>NetViewSpecification</i>.      </p> | [NetworkNodeViewItem]({{< relref "networknodeviewitem.md" >}}) |
|gridSquare | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies the grid square in which the <i>NodeViewItem</i> is placed (e.g. E/40).      </p> | [NetworkNodeViewItem]({{< relref "networknodeviewitem.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [NetworkNode]({{< relref "networknode.md" >}}) | networkNode | 1 | 0..* | References the<i> NetworkNode</i>  that is represented by this <i>NetworkNodeViewItem.</i> |
| [NetworkPortViewItem]({{< relref "networkportviewitem.md" >}}) | displayedPort | 0..* | 1 | <p> Specifies all <i>NetworkPortViewItems</i> that are displayed on this <i>NetworkNodeViewItem.</i> The order of this association defines the clockwise arrangement of the ports on the node. As each <i>NetworkPortViewItem </i>can also define the side on which it is placed, side definitions take precedence over order.      </p>      <p> <i>&#160;</i>      </p>      <p> <b>Caution: </b>This association is <u>ordered</u>!      </p>      <p> <i>&#160;</i>      </p> |
| [Transformation2D]({{< relref "transformation2d.md" >}}) | orientation | 0..1 | 1 | Specifies the position /&#160;placement of the <i>NetworkNodeViewItem</i> within the layout. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [NetViewSpecification]({{< relref "netviewspecification.md" >}}) | 1 | placedViewItems | 0..* | Specifies all <i>NetworkNodeViewItems</i> that are displayed within a <i>NetViewSpecification</i>. |
