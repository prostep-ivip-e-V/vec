---
title: SlotLayout
toc: false
type: specs
date: "2020-05-11"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - SlotLayout
menu_name: vec-1.2.0
---
<p> For regularly laid out slots the slot layout describes the positions of the cavities      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|gridX | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>The horizontal distance between the center points of two cavities. </p> | [SlotLayout]({{< relref "slotlayout.md" >}}) |
|gridY | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>The vertical distance between the center points of two cavities. </p> | [SlotLayout]({{< relref "slotlayout.md" >}}) |
|rowCount | [Integer]({{< relref "integer.md" >}}) | 0..1 | <p> The number of cavity rows of the slot.      </p> | [SlotLayout]({{< relref "slotlayout.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [SlotSpecification]({{< relref "slotspecification.md" >}}) | 1 | slotLayout | 0..1 | <p> References the layout associated with this slot.      </p> |
