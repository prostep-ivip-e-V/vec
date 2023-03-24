---
title: Creation
toc: false
type: specs
date: "2023-03-24"
draft: false
specification: VEC
version: 2.0.2
documentType: "Recommendation"
elementType: Class
classes:
  - Creation
menu_name: vec-2.0.2
---
<p>A Creation-instance provides additional information to the owning ItemVersion stating personal information on the creator and the creation date. </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | pdm |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|creationDate| [Date]({{< relref "date.md" >}}) | 1 | <p>Specifies the date when the associated ItemVersion was created. (see KBLFRM-241) </p> | [Creation]({{< relref "creation.md" >}}) |
|creator| [Person]({{< relref "person.md" >}}) | 0..1 | <p>Specifies the person who has created the Item. </p> | [Creation]({{< relref "creation.md" >}}) |
|responsibleDesigner| [Person]({{< relref "person.md" >}}) | 0..1 | <p> Specifies the person, which is the responsible designer for the ItemVersion at the point of creation.      </p> | [Creation]({{< relref "creation.md" >}}) |


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
        <td>creation</td>
        <td>0..1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "itemversion.md" >}}">ItemVersion</a></td>
        <td>1</td>
        <td>Specifies the information about the creation of the ItemVersion.</td>
    </tr>
    </tbody>
</table>



