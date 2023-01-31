---
title: SlotLayout
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - SlotLayout
menu_name: vec-2.0.1
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
|gridX| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>The horizontal distance between the center points of two cavities. </p> | [SlotLayout]({{< relref "slotlayout.md" >}}) |
|gridY| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>The vertical distance between the center points of two cavities. </p> | [SlotLayout]({{< relref "slotlayout.md" >}}) |
|rowCount| [Integer]({{< relref "integer.md" >}}) | 0..1 | <p> The number of cavity rows of the slot.      </p> | [SlotLayout]({{< relref "slotlayout.md" >}}) |


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
        <td>slotLayout</td>
        <td>0..1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "slotspecification.md" >}}">SlotSpecification</a></td>
        <td>1</td>
        <td><p> References the layout associated with this slot.      </p></td>
    </tr>
    </tbody>
</table>



