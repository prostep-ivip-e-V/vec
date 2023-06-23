---
title: CavityMapping
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - CavityMapping
menu_name: vec-2.0.1
---
<p> Defines the mapping of two cavities contained Slot A &amp; B of the containing SlotMapping-object.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | mapping |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identificationA| [String]({{< relref "string.md" >}}) | 1 | <p>The identification of the Cavity on side A </p> | [CavityMapping]({{< relref "cavitymapping.md" >}}) |
|identificationB| [String]({{< relref "string.md" >}}) | 1 | <p>The identification of the Cavity on side B </p> | [CavityMapping]({{< relref "cavitymapping.md" >}}) |


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
        <td>cavityMapping</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "slotmapping.md" >}}">SlotMapping</a></td>
        <td>1</td>
        <td></td>
    </tr>
    </tbody>
</table>



