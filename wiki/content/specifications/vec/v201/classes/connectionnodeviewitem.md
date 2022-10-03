---
title: ConnectionNodeViewItem
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - ConnectionNodeViewItem
menu_name: vec-2.0.1
---
A <i>ComponentNodeViewItem </i>represents a <i>ComponentNode</i> within a <i>ConnectionViewSpecification</i> and defines its position within the layout.

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
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the <i>ComponentNodeViewItem</i>. The identification is guaranteed to be unique within the <i>ConnectionViewSpecification</i>.      </p> | [ConnectionNodeViewItem]({{< relref "connectionnodeviewitem.md" >}}) |
|gridSquare | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies the grid square in which the <i>ComponentNodeViewIt</i><i>em</i> is placed (e.g. E/40).      </p> | [ConnectionNodeViewItem]({{< relref "connectionnodeviewitem.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [ComponentPortViewItem]({{< relref "componentportviewitem.md" >}}) | displayedPort | 0..* | 1 | <p> Specifies all <i>ComponentPortViewItems</i> that are displayed on this <i>ComponentNodeViewItem</i><i>.</i> The order of this association defines the clockwise arrangement of the ports on the node. As each <i>ComponentPortViewItem </i>can also define the side on which it is placed, side definitions take precedence over order.      </p>      <p> <i>&#160;</i>      </p>      <p> <b>Caution: </b>This association is <u>ordered</u>!      </p>      <p> <i>&#160;</i>      </p> |
| [ComponentNode]({{< relref "componentnode.md" >}}) | componentNode | 1 | 0..* | References the<i> ComponentNode</i> that is represented by this <i>ComponentNodeViewItem</i><i>.</i> |
| [Transformation2D]({{< relref "transformation2d.md" >}}) | orientation | 0..1 | 1 | Specifies the position /&#160;placement of the <i>ConnectionNodeViewItem</i> within the layout. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ConnectionViewSpecification]({{< relref "connectionviewspecification.md" >}}) | 1 | placedViewItems | 0..* | Specifies all <i>ComponentNodeViewItems</i> that are displayed within a <i>ConnectionViewSpecification</i>. |
